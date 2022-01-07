; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_close_args = type { %struct.vnode* }
%struct.vnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_close_args*)* @devfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_close(%struct.vnop_close_args* %0) #0 {
  %2 = alloca %struct.vnop_close_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32*, align 8
  store %struct.vnop_close_args* %0, %struct.vnop_close_args** %2, align 8
  %5 = load %struct.vnop_close_args*, %struct.vnop_close_args** %2, align 8
  %6 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call i64 @vnode_isinuse(%struct.vnode* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = call i32 (...) @DEVFS_LOCK()
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = call i32* @VTODN(%struct.vnode* %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @dn_times_now(i32* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %11
  %21 = call i32 (...) @DEVFS_UNLOCK()
  br label %22

22:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local i64 @vnode_isinuse(%struct.vnode*, i32) #1

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local i32* @VTODN(%struct.vnode*) #1

declare dso_local i32 @dn_times_now(i32*, i32) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
