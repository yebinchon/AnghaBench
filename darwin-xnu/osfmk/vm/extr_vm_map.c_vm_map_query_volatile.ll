; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_query_volatile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_query_volatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_15__* }

@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@VM_PURGABLE_VOLATILE = common dso_local global i64 0, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_query_volatile(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = call %struct.TYPE_15__* @vm_map_first_entry(%struct.TYPE_14__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %19, align 8
  br label %25

25:                                               ; preds = %134, %6
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = call %struct.TYPE_15__* @vm_map_to_entry(%struct.TYPE_14__* %27)
  %29 = icmp ne %struct.TYPE_15__* %26, %28
  br i1 %29, label %30, label %138

30:                                               ; preds = %25
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %134

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VM_PROT_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %134

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %46 = call %struct.TYPE_13__* @VME_OBJECT(%struct.TYPE_15__* %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %20, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @VM_OBJECT_NULL, align 8
  %49 = icmp eq %struct.TYPE_13__* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %134

51:                                               ; preds = %44
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %134

64:                                               ; preds = %57, %51
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %66 = call i32 @VME_OFFSET(%struct.TYPE_15__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %134

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %18, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %74 = call i32 @VME_OFFSET(%struct.TYPE_15__* %73)
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = sdiv i32 %74, %75
  %77 = load i32, i32* %18, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 0, i32* %18, align 4
  br label %87

80:                                               ; preds = %69
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %82 = call i32 @VME_OFFSET(%struct.TYPE_15__* %81)
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = sdiv i32 %82, %83
  %85 = load i32, i32* %18, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %80, %79
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %87
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @vm_compressor_pager_get_count(i64 %107)
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %104, %87
  store i32 0, i32* %22, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pmap_query_resident(i32 %116, i32 %119, i32 %122, i32* %22)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = sdiv i32 %124, %125
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = sdiv i32 %129, %130
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %113, %68, %63, %50, %43, %35
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  store %struct.TYPE_15__* %137, %struct.TYPE_15__** %19, align 8
  br label %25

138:                                              ; preds = %25
  %139 = load i32, i32* %13, align 4
  %140 = load i32*, i32** %8, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @PAGE_SIZE, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @PAGE_SIZE, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32*, i32** %11, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* @PAGE_SIZE, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_15__* @vm_map_first_entry(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @vm_map_to_entry(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @VME_OBJECT(%struct.TYPE_15__*) #1

declare dso_local i32 @VME_OFFSET(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_compressor_pager_get_count(i64) #1

declare dso_local i32 @pmap_query_resident(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
