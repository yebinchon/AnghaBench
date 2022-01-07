; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_memory_object_recover_named.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_memory_object_recover_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i64 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_OBJECT_EVENT_PAGING_IN_PROGRESS = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_OBJECT_EVENT_PAGER_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_object_recover_named(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_10__* @memory_object_control_to_vm_object(i32 %7)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_OBJECT_NULL, align 8
  %11 = icmp eq %struct.TYPE_10__* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %25, %14
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i32 @vm_object_lock(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = load i32, i32* @VM_OBJECT_EVENT_PAGING_IN_PROGRESS, align 4
  %28 = load i32, i32* @THREAD_UNINT, align 4
  %29 = call i32 @vm_object_wait(%struct.TYPE_10__* %26, i32 %27, i32 %28)
  br label %15

30:                                               ; preds = %22, %15
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = call i32 @vm_object_unlock(%struct.TYPE_10__* %36)
  %38 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %38, i32* %3, align 4
  br label %76

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = call i32 @vm_object_unlock(%struct.TYPE_10__* %46)
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %39
  %50 = load i64, i64* @TRUE, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = call i32 @vm_object_res_reference(%struct.TYPE_10__* %59)
  br label %61

61:                                               ; preds = %67, %49
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = load i32, i32* @VM_OBJECT_EVENT_PAGER_READY, align 4
  %70 = load i32, i32* @THREAD_UNINT, align 4
  %71 = call i32 @vm_object_sleep(%struct.TYPE_10__* %68, i32 %69, i32 %70)
  br label %61

72:                                               ; preds = %61
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = call i32 @vm_object_unlock(%struct.TYPE_10__* %73)
  %75 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %45, %35, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_10__* @memory_object_control_to_vm_object(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_wait(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_res_reference(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_sleep(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
