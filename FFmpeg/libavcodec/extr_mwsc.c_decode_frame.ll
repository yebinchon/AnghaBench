; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mwsc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mwsc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32*, i64, i32, i32* }

@Z_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inflate reset error: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Inflate error: %d\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_17__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_19__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = call i32 @inflateReset(%struct.TYPE_20__* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @Z_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @av_log(%struct.TYPE_19__* %36, i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %40, i32* %5, align 4
  br label %180

41:                                               ; preds = %4
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  store i32* %42, i32** %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* @Z_FINISH, align 4
  %65 = call i32 @inflate(%struct.TYPE_20__* %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @Z_STREAM_END, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %41
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @av_log(%struct.TYPE_19__* %70, i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %74, i32* %5, align 4
  br label %180

75:                                               ; preds = %41
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %79 = call i32 @ff_get_buffer(%struct.TYPE_19__* %76, %struct.TYPE_18__* %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %5, align 4
  br label %180

83:                                               ; preds = %75
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bytestream2_init(i32* %14, i32 %86, i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %101, %108
  %110 = call i32 @bytestream2_init(i32* %15, i32 %98, i32 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %118, %123
  %125 = call i32 @bytestream2_init_writer(i32* %16, i32 %115, i32 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, 3
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @rle_uncompress(i32* %14, i32* %16, i32* %15, i32 %128, i32 %131, i32 %135, i32 %140, i32 %147)
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %83
  %156 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %159

157:                                              ; preds = %83
  %158 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = call i32 @av_frame_unref(%struct.TYPE_15__* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %171 = call i32 @av_frame_ref(%struct.TYPE_15__* %169, %struct.TYPE_18__* %170)
  store i32 %171, i32* %17, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %159
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* %5, align 4
  br label %180

175:                                              ; preds = %159
  %176 = load i32*, i32** %8, align 8
  store i32 1, i32* %176, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %175, %173, %81, %69, %35
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @inflateReset(%struct.TYPE_20__*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32, i32) #1

declare dso_local i64 @rle_uncompress(i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_15__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
