; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_nvdec_decoder_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_nvdec_decoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (i32*)*, i32 (i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 (i32*, i32*)* }

@ENOMEM = common dso_local global i32 0, align 4
@nvdec_decoder_free = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed loading nvcuvid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__**, %struct.TYPE_22__*, i32*, i8*)* @nvdec_decoder_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdec_decoder_create(%struct.TYPE_22__** %0, %struct.TYPE_22__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__** %0, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %10, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %11, align 8
  %23 = call %struct.TYPE_19__* @av_mallocz(i32 40)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %13, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %25 = icmp ne %struct.TYPE_19__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %137

29:                                               ; preds = %4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %31 = bitcast %struct.TYPE_19__* %30 to i32*
  %32 = load i32, i32* @nvdec_decoder_free, align 4
  %33 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %34 = call %struct.TYPE_22__* @av_buffer_create(i32* %31, i32 40, i32 %32, i32* null, i32 %33)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %12, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %36 = icmp ne %struct.TYPE_22__* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = call i32 @av_freep(%struct.TYPE_19__** %13)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %137

41:                                               ; preds = %29
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %43 = call i32 @av_buffer_ref(%struct.TYPE_22__* %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %15, align 4
  br label %134

53:                                               ; preds = %41
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @cuvid_load_functions(%struct.TYPE_16__** %72, i8* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %53
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 @av_log(i8* %78, i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %134

81:                                               ; preds = %53
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 %86(i32 %89)
  %91 = call i32 @CHECK_CU(i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %134

95:                                               ; preds = %81
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @nvdec_test_capabilities(%struct.TYPE_19__* %96, i32* %97, i8* %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32 (i32*)*, i32 (i32*)** %106, align 8
  %108 = call i32 %107(i32* %14)
  %109 = call i32 @CHECK_CU(i32 %108)
  br label %134

110:                                              ; preds = %95
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 %115(i32* %117, i32* %118)
  %120 = call i32 @CHECK_CU(i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32 (i32*)*, i32 (i32*)** %124, align 8
  %126 = call i32 %125(i32* %14)
  %127 = call i32 @CHECK_CU(i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %110
  br label %134

131:                                              ; preds = %110
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %133 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %132, %struct.TYPE_22__** %133, align 8
  store i32 0, i32* %5, align 4
  br label %137

134:                                              ; preds = %130, %102, %94, %77, %50
  %135 = call i32 @av_buffer_unref(%struct.TYPE_22__** %12)
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %134, %131, %37, %26
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_19__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_22__* @av_buffer_create(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_19__**) #1

declare dso_local i32 @av_buffer_ref(%struct.TYPE_22__*) #1

declare dso_local i32 @cuvid_load_functions(%struct.TYPE_16__**, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @nvdec_test_capabilities(%struct.TYPE_19__*, i32*, i8*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
