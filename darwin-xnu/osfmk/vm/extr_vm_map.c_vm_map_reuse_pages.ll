; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_reuse_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_reuse_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_17__* }

@kernel_pmap = common dso_local global i64 0, align 8
@vm_page_stats_reusable = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@VM_MEMORY_MALLOC_LARGE_REUSABLE = common dso_local global i64 0, align 8
@VM_MEMORY_MALLOC_LARGE_REUSED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, i64)* @vm_map_reuse_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_reuse_pages(%struct.TYPE_16__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = call i32 @vm_map_lock_read(%struct.TYPE_16__* %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @kernel_pmap, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @vm_map_range_check(%struct.TYPE_16__* %21, i64 %22, i64 %23, %struct.TYPE_17__** %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32 @vm_map_unlock_read(%struct.TYPE_16__* %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %31 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %31, i32* %4, align 4
  br label %129

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %119, %32
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = call %struct.TYPE_17__* @vm_map_to_entry(%struct.TYPE_16__* %35)
  %37 = icmp ne %struct.TYPE_17__* %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i1 [ false, %33 ], [ %43, %38 ]
  br i1 %45, label %46, label %123

46:                                               ; preds = %44
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = call i32 @vm_map_entry_is_reusable(%struct.TYPE_17__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = call i32 @vm_map_unlock_read(%struct.TYPE_16__* %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %55 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %55, i32* %4, align 4
  br label %129

56:                                               ; preds = %46
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  store i64 %67, i64* %10, align 8
  br label %69

68:                                               ; preds = %56
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @MIN(i64 %70, i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %80 = call i64 @VME_OFFSET(%struct.TYPE_17__* %79)
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = call i64 @VME_OFFSET(%struct.TYPE_17__* %83)
  %85 = load i64, i64* %11, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %11, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = call i64 @VME_OBJECT(%struct.TYPE_17__* %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @VM_OBJECT_NULL, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %69
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @vm_object_lock(i64 %100)
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @vm_object_reuse_pages(i64 %102, i64 %103, i64 %104, i32 %105)
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @vm_object_unlock(i64 %107)
  br label %109

109:                                              ; preds = %99, %69
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = call i64 @VME_ALIAS(%struct.TYPE_17__* %110)
  %112 = load i64, i64* @VM_MEMORY_MALLOC_LARGE_REUSABLE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = load i32, i32* @VM_MEMORY_MALLOC_LARGE_REUSED, align 4
  %117 = call i32 @VME_ALIAS_SET(%struct.TYPE_17__* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %8, align 8
  br label %33

123:                                              ; preds = %44
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = call i32 @vm_map_unlock_read(%struct.TYPE_16__* %124)
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %128 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %50, %26
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_range_check(%struct.TYPE_16__*, i64, i64, %struct.TYPE_17__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @vm_map_to_entry(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_entry_is_reusable(%struct.TYPE_17__*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_17__*) #1

declare dso_local i64 @VME_OBJECT(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_object_lock(i64) #1

declare dso_local i32 @vm_object_reuse_pages(i64, i64, i64, i32) #1

declare dso_local i32 @vm_object_unlock(i64) #1

declare dso_local i64 @VME_ALIAS(%struct.TYPE_17__*) #1

declare dso_local i32 @VME_ALIAS_SET(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
