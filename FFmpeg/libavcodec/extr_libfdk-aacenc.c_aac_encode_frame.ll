; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libfdk-aacenc.c_aac_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libfdk-aacenc.c_aac_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i8* }
%struct.TYPE_20__ = type { i32, i8** }
%struct.TYPE_24__ = type { i32, i8**, i32*, i32*, i32*, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@IN_AUDIO_DATA = common dso_local global i32 0, align 4
@OUT_BITSTREAM_DATA = common dso_local global i32 0, align 4
@AACENC_OK = common dso_local global i64 0, align 8
@AACENC_ENCODE_EOF = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to encode frame: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32*)* @aac_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_encode_frame(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_22__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [1 x i32], align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %10, align 8
  %29 = bitcast %struct.TYPE_24__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 48, i1 false)
  %30 = bitcast %struct.TYPE_24__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 48, i1 false)
  %31 = bitcast %struct.TYPE_23__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 8, i1 false)
  %32 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 8, i1 false)
  %33 = load i32, i32* @IN_AUDIO_DATA, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* @OUT_BITSTREAM_DATA, align 4
  store i32 %34, i32* %18, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = icmp ne %struct.TYPE_20__* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %4
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %24, i64 0, i64 0
  %39 = bitcast i32* %38 to i8*
  store i8* %39, i8** %21, align 8
  store i32 0, i32* %16, align 4
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  br label %71

41:                                               ; preds = %4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %21, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 2, %49
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %66 = call i32 @ff_af_queue_add(i32* %64, %struct.TYPE_20__* %65)
  store i32 %66, i32* %23, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %41
  %69 = load i32, i32* %23, align 4
  store i32 %69, i32* %5, align 4
  br label %143

70:                                               ; preds = %41
  br label %71

71:                                               ; preds = %70, %37
  store i32 2, i32* %17, align 4
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  store i8** %21, i8*** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  store i32* %15, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 3
  store i32* %16, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 4
  store i32* %17, i32** %76, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 768, %81
  %83 = call i32 @FFMAX(i32 8192, i32 %82)
  %84 = call i32 @ff_alloc_packet2(%struct.TYPE_21__* %77, %struct.TYPE_19__* %78, i32 %83, i32 0)
  store i32 %84, i32* %23, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %23, align 4
  store i32 %87, i32* %5, align 4
  br label %143

88:                                               ; preds = %71
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %22, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store i8** %22, i8*** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  store i32* %18, i32** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  store i32* %19, i32** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 4
  store i32* %20, i32** %99, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @aacEncEncode(i32 %102, %struct.TYPE_24__* %11, %struct.TYPE_24__* %12, %struct.TYPE_23__* %13, %struct.TYPE_22__* %14)
  store i64 %103, i64* %25, align 8
  %104 = load i64, i64* @AACENC_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %88
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %108 = icmp ne %struct.TYPE_20__* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %25, align 8
  %111 = load i64, i64* @AACENC_ENCODE_EOF, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %143

114:                                              ; preds = %109, %106
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load i64, i64* %25, align 8
  %118 = call i32 @aac_get_error(i64 %117)
  %119 = call i32 @av_log(%struct.TYPE_21__* %115, i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %5, align 4
  br label %143

122:                                              ; preds = %88
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %143

127:                                              ; preds = %122
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = call i32 @ff_af_queue_remove(i32* %129, i32 %132, i32* %134, i32* %136)
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** %9, align 8
  store i32 1, i32* %142, align 4
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %127, %126, %114, %113, %86, %68
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_af_queue_add(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i64 @aacEncEncode(i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*) #2

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32) #2

declare dso_local i32 @aac_get_error(i64) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_af_queue_remove(i32*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
