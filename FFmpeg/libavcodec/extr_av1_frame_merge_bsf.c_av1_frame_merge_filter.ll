; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_frame_merge_bsf.c_av1_frame_merge_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_frame_merge_bsf.c_av1_frame_merge_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_22__*, i32, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read packet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No OBU in packet.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV1_OBU_TEMPORAL_DELIMITER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Missing Temporal Delimiter.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Temporal Delimiter in the middle of a packet.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to write packet.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @av1_frame_merge_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_frame_merge_filter(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %6, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i64 %21
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %7, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i64 %32
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %8, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %9, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %10, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_24__* %40, %struct.TYPE_23__* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %2
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @AVERROR_EOF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %142

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %259

57:                                               ; preds = %2
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %63 = call i32 @ff_cbs_read_packet(i32 %60, %struct.TYPE_22__* %61, %struct.TYPE_23__* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = call i32 @av_log(%struct.TYPE_24__* %67, i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %246

70:                                               ; preds = %57
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 @av_log(%struct.TYPE_24__* %76, i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %11, align 4
  br label %246

80:                                               ; preds = %70
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AV1_OBU_TEMPORAL_DELIMITER, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 @av_log(%struct.TYPE_24__* %95, i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %11, align 4
  br label %246

99:                                               ; preds = %85, %80
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %100
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AV1_OBU_TEMPORAL_DELIMITER, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = call i32 @av_log(%struct.TYPE_24__* %119, i32 %120, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %11, align 4
  br label %246

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %168

132:                                              ; preds = %127
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AV1_OBU_TEMPORAL_DELIMITER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %54
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %148 = call i32 @ff_cbs_write_packet(i32 %145, %struct.TYPE_23__* %146, %struct.TYPE_22__* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %153 = load i32, i32* @AV_LOG_ERROR, align 4
  %154 = call i32 @av_log(%struct.TYPE_24__* %152, i32 %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %246

155:                                              ; preds = %142
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %158 = call i32 @av_packet_move_ref(%struct.TYPE_23__* %156, %struct.TYPE_23__* %157)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %216

168:                                              ; preds = %132, %127
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %210, %168
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %171, %174
  br i1 %175, label %176, label %213

176:                                              ; preds = %169
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ff_cbs_insert_unit_content(i32 %179, %struct.TYPE_22__* %180, i32 -1, i64 %188, i32 %196, i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %176
  br label %246

209:                                              ; preds = %176
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %169

213:                                              ; preds = %169
  %214 = load i32, i32* @EAGAIN, align 4
  %215 = call i32 @AVERROR(i32 %214)
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %213, %155
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %230 = call i32 @av_packet_move_ref(%struct.TYPE_23__* %228, %struct.TYPE_23__* %229)
  br label %234

231:                                              ; preds = %221, %216
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %233 = call i32 @av_packet_unref(%struct.TYPE_23__* %232)
  br label %234

234:                                              ; preds = %231, %227
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %239, align 8
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i64 %243
  %245 = call i32 @ff_cbs_fragment_reset(i32 %237, %struct.TYPE_22__* %244)
  br label %246

246:                                              ; preds = %234, %208, %151, %118, %94, %75, %66
  %247 = load i32, i32* %11, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %246
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @EAGAIN, align 4
  %252 = call i32 @AVERROR(i32 %251)
  %253 = icmp ne i32 %250, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %256 = call i32 @av1_frame_merge_flush(%struct.TYPE_24__* %255)
  br label %257

257:                                              ; preds = %254, %249, %246
  %258 = load i32, i32* %11, align 4
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %257, %55
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_cbs_read_packet(i32, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @ff_cbs_write_packet(i32, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_cbs_insert_unit_content(i32, %struct.TYPE_22__*, i32, i64, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_cbs_fragment_reset(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @av1_frame_merge_flush(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
