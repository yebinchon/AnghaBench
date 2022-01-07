; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region_pager.c_shared_region_pager_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region_pager.c_shared_region_pager_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vm_shared_region_slide_info = type { i32 }

@SHARED_REGION_PAGER_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@MEMORY_OBJECT_NULL = common dso_local global i32 0, align 4
@shared_region_pager_lock = common dso_local global i32 0, align 4
@LCK_SLEEP_DEFAULT = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shared_region_pager_setup(i32 %0, i32 %1, %struct.vm_shared_region_slide_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_shared_region_slide_info*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.vm_shared_region_slide_info* %2, %struct.vm_shared_region_slide_info** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.vm_shared_region_slide_info*, %struct.vm_shared_region_slide_info** %7, align 8
  %12 = call %struct.TYPE_4__* @shared_region_pager_create(i32 %9, i32 %10, %struct.vm_shared_region_slide_info* %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SHARED_REGION_PAGER_NULL, align 8
  %15 = icmp eq %struct.TYPE_4__* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MEMORY_OBJECT_NULL, align 4
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = call i32 @lck_mtx_lock(i32* @shared_region_pager_lock)
  br label %20

20:                                               ; preds = %26, %18
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @LCK_SLEEP_DEFAULT, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @THREAD_UNINT, align 4
  %31 = call i32 @lck_mtx_sleep(i32* @shared_region_pager_lock, i32 %27, i32* %29, i32 %30)
  br label %20

32:                                               ; preds = %20
  %33 = call i32 @lck_mtx_unlock(i32* @shared_region_pager_lock)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = ptrtoint %struct.TYPE_4__* %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @shared_region_pager_create(i32, i32, %struct.vm_shared_region_slide_info*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_sleep(i32*, i32, i32*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
