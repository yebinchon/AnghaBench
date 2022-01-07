; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_symlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_symlink_args = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_symlink_args*)* @devfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_symlink(%struct.vnop_symlink_args* %0) #0 {
  %2 = alloca %struct.vnop_symlink_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.vnop_symlink_args* %0, %struct.vnop_symlink_args** %2, align 8
  %5 = call i32 (...) @DEVFS_LOCK()
  %6 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %7 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @VTODN(i32 %8)
  %10 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %11 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %16 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %21 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @devfs_make_symlink(i32 %9, i32 %14, i32 %19, i32 %22, %struct.TYPE_7__** %4)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %31 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %34 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vfs_context_proc(i32 %35)
  %37 = call i32 @devfs_dntovn(i32 %29, i32 %32, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %1
  %39 = call i32 (...) @DEVFS_UNLOCK()
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local i32 @devfs_make_symlink(i32, i32, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @VTODN(i32) #1

declare dso_local i32 @devfs_dntovn(i32, i32, i32) #1

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
