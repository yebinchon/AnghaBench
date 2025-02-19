; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_read_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@VM_MAP_NULL = common dso_local global i64 0, align 8
@VM_MAP_ENTRY_MAX = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@vm_offset_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_read_list(i64 %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @VM_MAP_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @VM_MAP_ENTRY_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %21, i64* %4, align 8
  br label %85

22:                                               ; preds = %16
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %23, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %80, %22
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %28
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i64 @vm_map_copyin(i64 %42, i64 %43, i64 %44, i32 %45, i32* %10)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* @KERN_SUCCESS, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %41
  %51 = call %struct.TYPE_5__* (...) @current_task()
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @vm_map_copyout(i32 %53, i64* %11, i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* @KERN_SUCCESS, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i32, i32* @vm_offset_t, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @CAST_DOWN(i32 %60, i64 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %62, i64* %66, align 8
  br label %80

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @vm_map_copy_discard(i32 %68)
  br label %70

70:                                               ; preds = %67, %41
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %59
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %24

83:                                               ; preds = %24
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %83, %20
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i64 @vm_map_copyin(i64, i64, i64, i32, i32*) #1

declare dso_local i64 @vm_map_copyout(i32, i64*, i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i64 @CAST_DOWN(i32, i64) #1

declare dso_local i32 @vm_map_copy_discard(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
