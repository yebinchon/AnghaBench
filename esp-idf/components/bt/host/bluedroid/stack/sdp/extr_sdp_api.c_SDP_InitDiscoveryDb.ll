; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_InitDiscoveryDb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_InitDiscoveryDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32*, i64, i32*, i32*, i32* }

@SDP_MAX_ATTR_FILTERS = common dso_local global i64 0, align 8
@SDP_MAX_UUID_FILTERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"SDP_InitDiscoveryDb Illegal param: p_db 0x%x, len %d, num_uuid %d, num_attr %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_InitDiscoveryDb(%struct.TYPE_5__* %0, i32 %1, i64 %2, i32* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 56, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @SDP_MAX_ATTR_FILTERS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @SDP_MAX_UUID_FILTERS, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %21, %17, %6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = ptrtoint %struct.TYPE_5__* %30 to i32
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i64 %33, i64 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %7, align 4
  br label %105

37:                                               ; preds = %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 @memset(%struct.TYPE_5__* %38, i32 0, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 56
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = bitcast %struct.TYPE_5__* %56 to i32*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 6
  store i32* %57, i32** %59, align 8
  store i64 0, i64* %14, align 8
  br label %60

60:                                               ; preds = %73, %37
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %11, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %14, align 8
  br label %60

76:                                               ; preds = %60
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  store i64 0, i64* %14, align 8
  br label %80

80:                                               ; preds = %94, %76
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i64*, i64** %13, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %13, align 8
  %87 = load i64, i64* %85, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %84
  %95 = load i64, i64* %14, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %14, align 8
  br label %80

97:                                               ; preds = %80
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = call i32 @sdpu_sort_attr_list(i64 %98, %struct.TYPE_5__* %99)
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %97, %29
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @SDP_TRACE_ERROR(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @sdpu_sort_attr_list(i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
