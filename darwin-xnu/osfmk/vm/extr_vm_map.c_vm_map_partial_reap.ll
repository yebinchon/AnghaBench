; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_partial_reap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_partial_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i32, i64 }

@VM_MAP_ENTRY_NULL = common dso_local global %struct.TYPE_25__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global i32 0, align 4
@VM_MAP_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_MAP_REMOVE_SAVE_ENTRIES = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_NO_PMAP_CLEANUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_partial_reap(%struct.TYPE_24__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** @VM_MAP_ENTRY_NULL, align 8
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %8, align 8
  %13 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = call i32 @vm_map_lock(%struct.TYPE_24__* %14)
  %16 = load i32, i32* @PMAP_NULL, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_24__* @vm_map_create(i32 %16, i32 %19, i32 %22, i32 %26)
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %11, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** @VM_MAP_NULL, align 8
  %30 = icmp eq %struct.TYPE_24__* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %32, i32* %4, align 4
  br label %118

33:                                               ; preds = %3
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = call i32 @VM_MAP_PAGE_SHIFT(%struct.TYPE_24__* %35)
  %37 = call i32 @vm_map_set_page_shift(%struct.TYPE_24__* %34, i32 %36)
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %39 = call i32 @vm_map_disable_hole_optimization(%struct.TYPE_24__* %38)
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = call %struct.TYPE_25__* @vm_map_first_entry(%struct.TYPE_24__* %40)
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %8, align 8
  br label %42

42:                                               ; preds = %103, %33
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = call %struct.TYPE_25__* @vm_map_to_entry(%struct.TYPE_24__* %44)
  %46 = icmp ne %struct.TYPE_25__* %43, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %42
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  store %struct.TYPE_25__* %50, %struct.TYPE_25__** %9, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %52 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %51)
  %53 = icmp ne %struct.TYPE_23__* %52, null
  br i1 %53, label %54, label %102

54:                                               ; preds = %47
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %102, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %61 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %60)
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TRUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %59
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %68 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %67)
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %102

72:                                               ; preds = %66
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %74 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %73)
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %79, %76
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %83 = call %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__* %82)
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @vm_compressor_pager_get_count(i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %86
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @VM_MAP_REMOVE_SAVE_ENTRIES, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %101 = call i32 @vm_map_delete(%struct.TYPE_24__* %92, i32 %95, i32 %98, i32 %99, %struct.TYPE_24__* %100)
  br label %102

102:                                              ; preds = %72, %66, %59, %54, %47
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %104, %struct.TYPE_25__** %8, align 8
  br label %42

105:                                              ; preds = %42
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %107 = call i32 @vm_map_unlock(%struct.TYPE_24__* %106)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** @VM_MAP_NULL, align 8
  %110 = icmp ne %struct.TYPE_24__* %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %113 = load i32, i32* @VM_MAP_REMOVE_NO_PMAP_CLEANUP, align 4
  %114 = call i32 @vm_map_destroy(%struct.TYPE_24__* %112, i32 %113)
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** @VM_MAP_NULL, align 8
  store %struct.TYPE_24__* %115, %struct.TYPE_24__** %11, align 8
  br label %116

116:                                              ; preds = %111, %105
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %31
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @vm_map_lock(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @vm_map_create(i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_set_page_shift(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @VM_MAP_PAGE_SHIFT(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_map_disable_hole_optimization(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @vm_map_first_entry(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @vm_map_to_entry(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @VME_OBJECT(%struct.TYPE_25__*) #1

declare dso_local i64 @vm_compressor_pager_get_count(i32) #1

declare dso_local i32 @vm_map_delete(%struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_map_destroy(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
