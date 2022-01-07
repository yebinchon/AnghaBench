; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_vnode_object_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_vnode_object_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_pager = type { i32, %struct.vnode*, %struct.TYPE_2__ }
%struct.vnode = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@vnode_pager_zone = common dso_local global i32 0, align 4
@VNODE_PAGER_NULL = common dso_local global %struct.vnode_pager* null, align 8
@IKOT_MEMORY_OBJECT = common dso_local global i32 0, align 4
@vnode_pager_ops = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnode_pager* @vnode_object_create(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode_pager*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode_pager*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %5 = load i32, i32* @vnode_pager_zone, align 4
  %6 = call i64 @zalloc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.vnode_pager*
  store %struct.vnode_pager* %7, %struct.vnode_pager** %4, align 8
  %8 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  %9 = load %struct.vnode_pager*, %struct.vnode_pager** @VNODE_PAGER_NULL, align 8
  %10 = icmp eq %struct.vnode_pager* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.vnode_pager*, %struct.vnode_pager** @VNODE_PAGER_NULL, align 8
  store %struct.vnode_pager* %12, %struct.vnode_pager** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @IKOT_MEMORY_OBJECT, align 4
  %15 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  %16 = getelementptr inbounds %struct.vnode_pager, %struct.vnode_pager* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  %18 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  %19 = getelementptr inbounds %struct.vnode_pager, %struct.vnode_pager* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32* @vnode_pager_ops, i32** %20, align 8
  %21 = load i32, i32* @MEMORY_OBJECT_CONTROL_NULL, align 4
  %22 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  %23 = getelementptr inbounds %struct.vnode_pager, %struct.vnode_pager* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  %26 = getelementptr inbounds %struct.vnode_pager, %struct.vnode_pager* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  %29 = getelementptr inbounds %struct.vnode_pager, %struct.vnode_pager* %28, i32 0, i32 1
  store %struct.vnode* %27, %struct.vnode** %29, align 8
  %30 = load %struct.vnode_pager*, %struct.vnode_pager** %4, align 8
  store %struct.vnode_pager* %30, %struct.vnode_pager** %2, align 8
  br label %31

31:                                               ; preds = %13, %11
  %32 = load %struct.vnode_pager*, %struct.vnode_pager** %2, align 8
  ret %struct.vnode_pager* %32
}

declare dso_local i64 @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
