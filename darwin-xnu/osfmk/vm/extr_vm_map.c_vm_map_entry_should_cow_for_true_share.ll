; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_entry_should_cow_for_true_share.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_entry_should_cow_for_true_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@VM_MEMORY_MALLOC = common dso_local global i64 0, align 8
@VM_MEMORY_MALLOC_SMALL = common dso_local global i64 0, align 8
@vm_counters = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@MEMORY_OBJECT_COPY_SYMMETRIC = common dso_local global i64 0, align 8
@ANON_CHUNK_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_entry_should_cow_for_true_share(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %96

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %96

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i64 @VME_ALIAS(%struct.TYPE_10__* %19)
  %21 = load i64, i64* @VM_MEMORY_MALLOC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call i64 @VME_ALIAS(%struct.TYPE_10__* %24)
  %26 = load i64, i64* @VM_MEMORY_MALLOC_SMALL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %23, %18
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @vm_counters, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @vm_counters, i32 0, i32 0), align 4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %2, align 4
  br label %96

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call %struct.TYPE_9__* @VME_OBJECT(%struct.TYPE_10__* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %4, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @VM_OBJECT_NULL, align 8
  %44 = icmp eq %struct.TYPE_9__* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %96

47:                                               ; preds = %39
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %2, align 4
  br label %96

54:                                               ; preds = %47
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MEMORY_OBJECT_COPY_SYMMETRIC, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %2, align 4
  br label %96

62:                                               ; preds = %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %2, align 4
  br label %96

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = call i64 @VME_ALIAS(%struct.TYPE_10__* %70)
  %72 = load i64, i64* @VM_MEMORY_MALLOC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ANON_CHUNK_SIZE, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  br label %96

82:                                               ; preds = %74, %69
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i64 @VME_ALIAS(%struct.TYPE_10__* %83)
  %85 = load i64, i64* @VM_MEMORY_MALLOC_SMALL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 8388608
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %87, %82
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %92, %80, %67, %60, %52, %45, %35, %28, %16, %9
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @VME_ALIAS(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @VME_OBJECT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
