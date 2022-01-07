; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_estimate_timings_from_pts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_estimate_timings_from_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__**, i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64*, i64, i64, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"start time for stream %d is not set in estimate_timings_from_pts\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Skipping duration calculation in estimate_timings_from_pts\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"skip_changes\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@DURATION_MAX_READ_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4
@DURATION_MAX_RETRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"stream %d : no PTS found at end of file, duration not set\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"stream %d : no TS found at start of file, duration not set\0A\00", align 1
@MAX_REORDER_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @estimate_timings_from_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_timings_from_pts(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = call i32 @flush_packet_queue(%struct.TYPE_23__* %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %73, %2
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %22
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %31, i64 %33
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %7, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %28
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = load i32, i32* @AV_LOG_WARNING, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %56, i32 %57, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %47, %41, %28
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 10
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @av_parser_close(i32* %68)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 10
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %22

76:                                               ; preds = %22
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %83 = load i32, i32* @AV_LOG_INFO, align 4
  %84 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %82, i32 %83, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %411

85:                                               ; preds = %76
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %87 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %88 = call i32 @av_opt_set(%struct.TYPE_23__* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @avio_size(i64 %96)
  br label %99

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi i32 [ %97, %93 ], [ 0, %98 ]
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %351, %99
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @DURATION_MAX_READ_SIZE, align 4
  %105 = load i32, i32* %18, align 4
  %106 = shl i32 %104, %105
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %101
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @SEEK_SET, align 4
  %117 = call i32 @avio_seek(i64 %114, i32 %115, i32 %116)
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %300, %111
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @DURATION_MAX_READ_SIZE, align 4
  %121 = load i32, i32* %18, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @FFMAX(i32 %122, i32 0)
  %124 = shl i32 %120, %123
  %125 = icmp sge i32 %119, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %303

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %132, %127
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = call i32 @ff_read_packet(%struct.TYPE_23__* %129, %struct.TYPE_22__* %130)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = call i32 @AVERROR(i32 %134)
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %128, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %303

141:                                              ; preds = %137
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %10, align 4
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %150, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %151, i64 %154
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  store %struct.TYPE_21__* %156, %struct.TYPE_21__** %7, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %300

162:                                              ; preds = %141
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %300

174:                                              ; preds = %168, %162
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %212

179:                                              ; preds = %174
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %186 = call i32 @ff_compute_frame_duration(%struct.TYPE_23__* %180, i32* %8, i32* %9, %struct.TYPE_21__* %181, i32* %184, %struct.TYPE_22__* %185)
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %179
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = mul nsw i32 %193, %198
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = mul nsw i32 %200, %205
  %207 = load i32, i32* @AV_ROUND_DOWN, align 4
  %208 = call i64 @av_rescale_rnd(i32 1, i32 %199, i32 %206, i32 %207)
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %192, %189, %179
  br label %212

212:                                              ; preds = %211, %174
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %215, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %17, align 4
  store i32 1, i32* %13, align 4
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %212
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = sext i32 %230 to i64
  %232 = sub nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %17, align 4
  br label %242

234:                                              ; preds = %212
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %17, align 4
  %239 = sext i32 %238 to i64
  %240 = sub nsw i64 %239, %237
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %17, align 4
  br label %242

242:                                              ; preds = %234, %226
  %243 = load i32, i32* %17, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %299

245:                                              ; preds = %242
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %287, label %251

251:                                              ; preds = %245
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp sle i64 %256, 0
  br i1 %257, label %287, label %258

258:                                              ; preds = %251
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = icmp slt i64 %261, %263
  br i1 %264, label %265, label %292

265:                                              ; preds = %258
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 8
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %267, %272
  %274 = trunc i64 %273 to i32
  %275 = call i64 @FFABS(i32 %274)
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 9
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = mul nsw i64 60, %279
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 9
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = sdiv i64 %280, %284
  %286 = icmp slt i64 %275, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %265, %251, %245
  %288 = load i32, i32* %17, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 2
  store i64 %289, i64* %291, align 8
  br label %292

292:                                              ; preds = %287, %265, %258
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  store i64 %294, i64* %298, align 8
  br label %299

299:                                              ; preds = %292, %242
  br label %300

300:                                              ; preds = %299, %168, %141
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %302 = call i32 @av_packet_unref(%struct.TYPE_22__* %301)
  br label %118

303:                                              ; preds = %140, %126
  %304 = load i32, i32* %14, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %339, label %306

306:                                              ; preds = %303
  store i32 1, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %307

307:                                              ; preds = %335, %306
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %338

313:                                              ; preds = %307
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %316, i64 %318
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %319, align 8
  store %struct.TYPE_21__* %320, %struct.TYPE_21__** %7, align 8
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 7
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  switch i32 %325, label %334 [
    i32 128, label %326
    i32 129, label %326
  ]

326:                                              ; preds = %313, %313
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  store i32 0, i32* %14, align 4
  br label %333

333:                                              ; preds = %332, %326
  br label %334

334:                                              ; preds = %333, %313
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %11, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %11, align 4
  br label %307

338:                                              ; preds = %307
  br label %339

339:                                              ; preds = %338, %303
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %14, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %351, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %16, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %18, align 4
  %349 = load i32, i32* @DURATION_MAX_RETRY, align 4
  %350 = icmp sle i32 %348, %349
  br label %351

351:                                              ; preds = %346, %343, %340
  %352 = phi i1 [ false, %343 ], [ false, %340 ], [ %350, %346 ]
  br i1 %352, label %101, label %353

353:                                              ; preds = %351
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %355 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %356 = call i32 @av_opt_set(%struct.TYPE_23__* %354, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %355)
  store i32 0, i32* %11, align 4
  br label %357

357:                                              ; preds = %407, %353
  %358 = load i32, i32* %11, align 4
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp slt i32 %358, %361
  br i1 %362, label %363, label %410

363:                                              ; preds = %357
  %364 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %365, align 8
  %367 = load i32, i32* %11, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %366, i64 %368
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %369, align 8
  store %struct.TYPE_21__* %370, %struct.TYPE_21__** %7, align 8
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %406

376:                                              ; preds = %363
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 7
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  switch i32 %381, label %405 [
    i32 128, label %382
    i32 129, label %382
  ]

382:                                              ; preds = %376, %376
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %387 = icmp ne i64 %385, %386
  br i1 %387, label %394, label %388

388:                                              ; preds = %382
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %399

394:                                              ; preds = %388, %382
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %396 = load i32, i32* @AV_LOG_WARNING, align 4
  %397 = load i32, i32* %11, align 4
  %398 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %395, i32 %396, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %397)
  br label %404

399:                                              ; preds = %388
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %401 = load i32, i32* @AV_LOG_WARNING, align 4
  %402 = load i32, i32* %11, align 4
  %403 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @av_log(%struct.TYPE_23__* %400, i32 %401, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %402)
  br label %404

404:                                              ; preds = %399, %394
  br label %405

405:                                              ; preds = %404, %376
  br label %406

406:                                              ; preds = %405, %363
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %11, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %11, align 4
  br label %357

410:                                              ; preds = %357
  br label %411

411:                                              ; preds = %410, %81
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %413 = call i32 @fill_all_stream_timings(%struct.TYPE_23__* %412)
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = load i32, i32* %4, align 4
  %418 = load i32, i32* @SEEK_SET, align 4
  %419 = call i32 @avio_seek(i64 %416, i32 %417, i32 %418)
  store i32 0, i32* %11, align 4
  br label %420

420:                                              ; preds = %462, %411
  %421 = load i32, i32* %11, align 4
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp slt i32 %421, %424
  br i1 %425, label %426, label %465

426:                                              ; preds = %420
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %428, align 8
  %430 = load i32, i32* %11, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %429, i64 %431
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %432, align 8
  store %struct.TYPE_21__* %433, %struct.TYPE_21__** %7, align 8
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %437, i32 0, i32 3
  store i64 %436, i64* %438, align 8
  %439 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %440 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %440, i32 0, i32 6
  store i64 %439, i64* %441, align 8
  %442 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %443 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %443, i32 0, i32 5
  store i64 %442, i64* %444, align 8
  store i32 0, i32* %19, align 4
  br label %445

445:                                              ; preds = %458, %426
  %446 = load i32, i32* %19, align 4
  %447 = load i32, i32* @MAX_REORDER_DELAY, align 4
  %448 = add nsw i32 %447, 1
  %449 = icmp slt i32 %446, %448
  br i1 %449, label %450, label %461

450:                                              ; preds = %445
  %451 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 4
  %454 = load i64*, i64** %453, align 8
  %455 = load i32, i32* %19, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  store i64 %451, i64* %457, align 8
  br label %458

458:                                              ; preds = %450
  %459 = load i32, i32* %19, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %19, align 4
  br label %445

461:                                              ; preds = %445
  br label %462

462:                                              ; preds = %461
  %463 = load i32, i32* %11, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %11, align 4
  br label %420

465:                                              ; preds = %420
  ret void
}

declare dso_local i32 @flush_packet_queue(%struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @av_parser_close(i32*) #1

declare dso_local i32 @av_opt_set(%struct.TYPE_23__*, i8*, i8*, i32) #1

declare dso_local i32 @avio_size(i64) #1

declare dso_local i32 @avio_seek(i64, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_read_packet(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_compute_frame_duration(%struct.TYPE_23__*, i32*, i32*, %struct.TYPE_21__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i64 @av_rescale_rnd(i32, i32, i32, i32) #1

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_22__*) #1

declare dso_local i32 @fill_all_stream_timings(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
