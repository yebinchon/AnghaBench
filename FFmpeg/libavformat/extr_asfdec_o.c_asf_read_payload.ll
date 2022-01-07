; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_payload.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, i64, i64, i32, i64, %struct.TYPE_17__**, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@ASF_STREAM_NUM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid packet size 0.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Skipping the stream with the invalid stream index %d.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@ASF_PL_MASK_MEDIA_OBJECT_NUMBER_LENGTH_FIELD_SIZE = common dso_local global i32 0, align 4
@ASF_PL_FLAG_MEDIA_OBJECT_NUMBER_LENGTH_FIELD_ = common dso_local global i32 0, align 4
@ASF_PL_MASK_OFFSET_INTO_MEDIA_OBJECT_LENGTH_FIELD_SIZE = common dso_local global i32 0, align 4
@ASF_PL_FLAG_OFFSET_INTO_MEDIA_OBJECT_LENGTH_FIELD_ = common dso_local global i32 0, align 4
@ASF_PL_MASK_REPLICATED_DATA_LENGTH_FIELD_SIZE = common dso_local global i32 0, align 4
@ASF_PL_FLAG_REPLICATED_DATA_LENGTH_FIELD_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unfinished frame will be ignored\0A\00", align 1
@READ_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @asf_read_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_payload(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %6, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %10, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %232, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @avio_r8(i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @ASF_STREAM_NUM, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %73, %24
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %32
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 9
  %44 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %44, i64 %46
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %41, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %38
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 9
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %55, i64 %57
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %10, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %63, i64 %65
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %76

72:                                               ; preds = %38
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %32

76:                                               ; preds = %52, %32
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %78 = icmp ne %struct.TYPE_20__* %77, null
  br i1 %78, label %126, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = icmp sle i64 %86, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %79
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %101, i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %3, align 4
  br label %301

105:                                              ; preds = %95
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i32 @avio_seek(i32* %106, i64 %113, i32 %114)
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = load i32, i32* @AV_LOG_WARNING, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %116, i32 %117, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EAGAIN, align 4
  %123 = call i32 @AVERROR(i32 %122)
  store i32 %123, i32* %3, align 4
  br label %301

124:                                              ; preds = %79
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %3, align 4
  br label %301

126:                                              ; preds = %76
  %127 = load i32, i32* %13, align 4
  %128 = ashr i32 %127, 7
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %126
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ASF_PL_MASK_MEDIA_OBJECT_NUMBER_LENGTH_FIELD_SIZE, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @ASF_PL_FLAG_MEDIA_OBJECT_NUMBER_LENGTH_FIELD_, align 4
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @READ_LEN(i32 %141, i32 %142, i64 %143)
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ASF_PL_MASK_OFFSET_INTO_MEDIA_OBJECT_LENGTH_FIELD_SIZE, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @ASF_PL_FLAG_OFFSET_INTO_MEDIA_OBJECT_LENGTH_FIELD_, align 4
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @READ_LEN(i32 %149, i32 %150, i64 %151)
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ASF_PL_MASK_REPLICATED_DATA_LENGTH_FIELD_SIZE, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @ASF_PL_FLAG_REPLICATED_DATA_LENGTH_FIELD_, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @READ_LEN(i32 %157, i32 %158, i64 %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %136
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %175 = load i32, i32* @AV_LOG_WARNING, align 4
  %176 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %174, i32 %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %178 = call i32 @reset_packet(%struct.TYPE_20__* %177)
  br label %179

179:                                              ; preds = %173, %167, %136
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 12
  store i64 %183, i64* %185, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 11
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %179
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %194 = call i32 @asf_read_multiple_payload(%struct.TYPE_19__* %191, %struct.TYPE_18__* %192, %struct.TYPE_20__* %193)
  store i32 %194, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %301

198:                                              ; preds = %190
  br label %231

199:                                              ; preds = %179
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 1
  br i1 %203, label %204, label %222

204:                                              ; preds = %199
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load i32, i32* @READ_SINGLE, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = call i32 @asf_read_subpayload(%struct.TYPE_19__* %215, %struct.TYPE_18__* %216, i32 1)
  store i32 %217, i32* %8, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %204
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %3, align 4
  br label %301

221:                                              ; preds = %204
  br label %230

222:                                              ; preds = %199
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %225 = call i32 @asf_read_single_payload(%struct.TYPE_19__* %223, %struct.TYPE_20__* %224)
  store i32 %225, i32* %8, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %3, align 4
  br label %301

229:                                              ; preds = %222
  br label %230

230:                                              ; preds = %229, %221
  br label %231

231:                                              ; preds = %230, %198
  br label %300

232:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %263, %232
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp sle i32 %234, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %233
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 9
  %245 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %245, i64 %247
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %242, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %239
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 9
  %256 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %256, i64 %258
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 2
  store %struct.TYPE_20__* %261, %struct.TYPE_20__** %10, align 8
  br label %266

262:                                              ; preds = %239
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %233

266:                                              ; preds = %253, %233
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %268 = icmp ne %struct.TYPE_20__* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %270, i32* %3, align 4
  br label %301

271:                                              ; preds = %266
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 9
  %284 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %284, i64 %286
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 4
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %295 = call i32 @asf_read_subpayload(%struct.TYPE_19__* %293, %struct.TYPE_18__* %294, i32 0)
  store i32 %295, i32* %8, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %271
  %298 = load i32, i32* %8, align 4
  store i32 %298, i32* %3, align 4
  br label %301

299:                                              ; preds = %271
  br label %300

300:                                              ; preds = %299, %231
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %300, %297, %269, %227, %219, %196, %124, %105, %100
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @READ_LEN(i32, i32, i64) #1

declare dso_local i32 @reset_packet(%struct.TYPE_20__*) #1

declare dso_local i32 @asf_read_multiple_payload(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @asf_read_subpayload(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @asf_read_single_payload(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
