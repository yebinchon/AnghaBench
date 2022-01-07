; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_jpeg_put_comments.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_jpeg_put_comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot store exact aspect ratio %d:%d\0A\00", align 1
@APP0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"JFIF\00", align 1
@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@COM = common dso_local global i32 0, align 4
@LIBAVCODEC_IDENT = common dso_local global i8* null, align 8
@AV_PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV444P = common dso_local global i64 0, align 8
@AVCOL_RANGE_JPEG = common dso_local global i64 0, align 8
@AVCOL_RANGE_MPEG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"CS=ITU601\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @jpeg_put_comments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_put_comments(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %89

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = bitcast %struct.TYPE_5__* %7 to i8*
  %23 = bitcast %struct.TYPE_5__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 65535
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 65535
  br i1 %30, label %31, label %63

31:                                               ; preds = %27, %19
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %33 = bitcast i64* %32 to i32*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %35 = bitcast i64* %34 to i32*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @av_reduce(i32* %33, i32* %35, i32 %40, i32 %45, i32 65535)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %31
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* @AV_LOG_WARNING, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @av_log(%struct.TYPE_6__* %49, i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %48, %31
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @APP0, align 4
  %66 = call i32 @put_marker(i32* %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @put_bits(i32* %67, i32 16, i32 16)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @avpriv_put_string(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @put_bits(i32* %71, i32 16, i32 258)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @put_bits(i32* %73, i32 8, i32 0)
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @put_bits(i32* %75, i32 16, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @put_bits(i32* %80, i32 16, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @put_bits(i32* %85, i32 8, i32 0)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @put_bits(i32* %87, i32 8, i32 0)
  br label %89

89:                                               ; preds = %63, %13, %2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AV_CODEC_FLAG_BITEXACT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* @COM, align 4
  %99 = call i32 @put_marker(i32* %97, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @flush_put_bits(i32* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32* @put_bits_ptr(i32* %102)
  store i32* %103, i32** %6, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @put_bits(i32* %104, i32 16, i32 0)
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** @LIBAVCODEC_IDENT, align 8
  %108 = call i32 @avpriv_put_string(i32* %106, i8* %107, i32 1)
  %109 = load i8*, i8** @LIBAVCODEC_IDENT, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = add nsw i32 %110, 3
  store i32 %111, i32* %5, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @AV_WB16(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %96, %89
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AV_PIX_FMT_YUV420P, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AV_PIX_FMT_YUV422P, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_PIX_FMT_YUV444P, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127, %121, %115
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @AVCOL_RANGE_MPEG, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %139, %133
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* @COM, align 4
  %148 = call i32 @put_marker(i32* %146, i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @flush_put_bits(i32* %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32* @put_bits_ptr(i32* %151)
  store i32* %152, i32** %6, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @put_bits(i32* %153, i32 16, i32 0)
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @avpriv_put_string(i32* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %157 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %158 = add nsw i32 %157, 3
  store i32 %158, i32* %5, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @AV_WB16(i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %145, %139
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32, i32) #2

declare dso_local i32 @put_marker(i32*, i32) #2

declare dso_local i32 @put_bits(i32*, i32, i32) #2

declare dso_local i32 @avpriv_put_string(i32*, i8*, i32) #2

declare dso_local i32 @flush_put_bits(i32*) #2

declare dso_local i32* @put_bits_ptr(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @AV_WB16(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
