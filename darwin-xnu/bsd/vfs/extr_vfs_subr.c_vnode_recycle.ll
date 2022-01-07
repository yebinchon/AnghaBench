; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_recycle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i64, i64 }

@VL_MARKTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_recycle(%struct.vnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %4 = load %struct.vnode*, %struct.vnode** %3, align 8
  %5 = call i32 @vnode_lock_spin(%struct.vnode* %4)
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @VL_MARKTERM, align 4
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = call i32 @vnode_unlock(%struct.vnode* %21)
  store i32 0, i32* %2, align 4
  br label %30

23:                                               ; preds = %10
  %24 = load %struct.vnode*, %struct.vnode** %3, align 8
  %25 = call i32 @vnode_lock_convert(%struct.vnode* %24)
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = call i32 @vnode_reclaim_internal(%struct.vnode* %26, i32 1, i32 0, i32 0)
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = call i32 @vnode_unlock(%struct.vnode* %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @vnode_lock_convert(%struct.vnode*) #1

declare dso_local i32 @vnode_reclaim_internal(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
