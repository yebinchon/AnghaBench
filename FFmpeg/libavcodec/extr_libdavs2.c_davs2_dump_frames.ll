; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libdavs2.c_davs2_dump_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libdavs2.c_davs2_dump_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32*, i32*, i32*, i64* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32, i32, i32, i32, i64*, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i64 }

@DAVS2_GOT_HEADER = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_S = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Decoder error: unknown frame type\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Decoder error: allocation failure, can't dump frames.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_18__*, i32*, %struct.TYPE_17__*, i32, %struct.TYPE_20__*)* @davs2_dump_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davs2_dump_frames(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1, i32* %2, %struct.TYPE_17__* %3, i32 %4, %struct.TYPE_20__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %13, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %14, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %7, align 4
  br label %241

29:                                               ; preds = %6
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @DAVS2_GOT_HEADER, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32, %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @AV_PIX_FMT_YUV420P10, align 4
  br label %55

53:                                               ; preds = %36
  %54 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @av_d2q(i32 %61, i32 4096)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 0, i32* %65, align 4
  store i32 0, i32* %7, align 4
  br label %241

66:                                               ; preds = %32
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %86 [
    i32 130, label %70
    i32 131, label %70
    i32 129, label %74
    i32 128, label %74
    i32 133, label %78
    i32 132, label %82
  ]

70:                                               ; preds = %66, %66
  %71 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  br label %91

74:                                               ; preds = %66, %66
  %75 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  br label %91

78:                                               ; preds = %66
  %79 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  br label %91

82:                                               ; preds = %66
  %83 = load i32, i32* @AV_PICTURE_TYPE_S, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  br label %91

86:                                               ; preds = %66
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = call i32 @av_log(%struct.TYPE_21__* %87, i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %90, i32* %7, align 4
  br label %241

91:                                               ; preds = %82, %78, %74, %70
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %213, %91
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %216

95:                                               ; preds = %92
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %105, %112
  %114 = call %struct.TYPE_14__* @av_buffer_alloc(i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %117, i64 %119
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %120, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 6
  %123 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %123, i64 %125
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = icmp ne %struct.TYPE_14__* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %95
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = call i32 @av_log(%struct.TYPE_21__* %130, i32 %131, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %7, align 4
  br label %241

135:                                              ; preds = %95
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %138, i64 %140
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 5
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %144, i64* %150, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %209, %135
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %159, %166
  br i1 %167, label %168, label %212

168:                                              ; preds = %158
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 5
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %175, %179
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 5
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %188, %195
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %187, %197
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %15, align 4
  %207 = mul nsw i32 %205, %206
  %208 = call i32 @memcpy(i64 %180, i64 %198, i32 %207)
  br label %209

209:                                              ; preds = %168
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  br label %158

212:                                              ; preds = %158
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %16, align 4
  br label %92

216:                                              ; preds = %92
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load i32*, i32** %10, align 8
  store i32 1, i32* %240, align 4
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %216, %129, %86, %55, %27
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @av_d2q(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @av_buffer_alloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
