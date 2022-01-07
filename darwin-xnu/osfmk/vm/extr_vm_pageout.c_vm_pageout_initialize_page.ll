; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_initialize_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_initialize_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i64, i64 }

@XPR_VM_PAGEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vm_pageout_initialize_page, page 0x%X\0A\00", align 1
@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reservation without pageout?\00", align 1
@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"missing pager for copy object\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_pageout_initialize_page(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load i32, i32* @XPR_VM_PAGEOUT, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @XPR(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %7, i32 0, i32 0, i32 0, i32 0)
  %9 = load i32, i32* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 4
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = call %struct.TYPE_15__* @VM_PAGE_OBJECT(%struct.TYPE_14__* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65, %55, %50, %1
  %71 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = call i32 @VM_PAGE_FREE(%struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = call i32 @vm_object_unlock(%struct.TYPE_15__* %74)
  br label %106

76:                                               ; preds = %65, %60
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = call i32 @VM_PAGE_FREE(%struct.TYPE_14__* %85)
  br label %106

87:                                               ; preds = %76
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__* %88)
  %90 = call i32 @pmap_clear_modify(i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_14__* %91, i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = call i32 @vm_object_paging_begin(%struct.TYPE_15__* %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = call i32 @vm_object_unlock(%struct.TYPE_15__* %96)
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = call i32 @memory_object_data_initialize(i64 %98, i64 %99, i32 %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = call i32 @vm_object_lock(%struct.TYPE_15__* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = call i32 @vm_object_paging_end(%struct.TYPE_15__* %104)
  br label %106

106:                                              ; preds = %87, %83, %70
  ret void
}

declare dso_local i32 @XPR(i32, i8*, %struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_15__* @VM_PAGE_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VM_PAGE_FREE(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_clear_modify(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__*) #1

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vm_object_paging_begin(%struct.TYPE_15__*) #1

declare dso_local i32 @memory_object_data_initialize(i64, i64, i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_paging_end(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
