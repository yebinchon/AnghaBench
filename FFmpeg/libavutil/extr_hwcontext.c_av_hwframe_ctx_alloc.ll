; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwframe_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwframe_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i8*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32* }

@hwframe_ctx_free = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@hwframe_ctx_class = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @av_hwframe_ctx_alloc(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %18 = call i8* @av_mallocz(i32 72)
  %19 = bitcast i8* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %135

23:                                               ; preds = %1
  %24 = call i8* @av_mallocz(i32 72)
  %25 = bitcast i8* %24 to %struct.TYPE_15__*
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %27, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %111

33:                                               ; preds = %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @av_mallocz(i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_15__*
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %38
  br label %111

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @av_mallocz(i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_15__*
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %111

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = call %struct.TYPE_17__* @av_buffer_ref(%struct.TYPE_17__* %76)
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %111

81:                                               ; preds = %75
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = bitcast %struct.TYPE_15__* %82 to i32*
  %84 = load i32, i32* @hwframe_ctx_free, align 4
  %85 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %86 = call %struct.TYPE_17__* @av_buffer_create(i32* %83, i32 72, i32 %84, i32* null, i32 %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %7, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %111

90:                                               ; preds = %81
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 8
  store i32* @hwframe_ctx_class, i32** %92, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 7
  store %struct.TYPE_17__* %93, %struct.TYPE_17__** %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 6
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %98, align 8
  %99 = load i8*, i8** @AV_PIX_FMT_NONE, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @AV_PIX_FMT_NONE, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %2, align 8
  br label %135

111:                                              ; preds = %89, %80, %73, %54, %32
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = icmp ne %struct.TYPE_17__* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 @av_buffer_unref(%struct.TYPE_17__** %8)
  br label %116

116:                                              ; preds = %114, %111
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = icmp ne %struct.TYPE_15__* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = call i32 @av_freep(%struct.TYPE_15__** %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = call i32 @av_freep(%struct.TYPE_15__** %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = call i32 @av_freep(%struct.TYPE_15__** %132)
  %134 = call i32 @av_freep(%struct.TYPE_15__** %6)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %135

135:                                              ; preds = %127, %90, %22
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %136
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local %struct.TYPE_17__* @av_buffer_ref(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @av_buffer_create(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_17__**) #1

declare dso_local i32 @av_freep(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
