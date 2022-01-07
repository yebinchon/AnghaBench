; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv10.c_rv10_decode_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv10.c_rv10_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, %struct.TYPE_27__*, i32, i32, i32, i32, i32*, i32, i64*, i32, i32, i64, i32, i32, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }

@AV_CODEC_ID_RV10 = common dso_local global i64 0, align 8
@ERROR_SKIP_FRAME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HEADER ERROR\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"POS ERROR %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"COUNT ERROR\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Slice type mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"qscale=%d\0A\00", align 1
@ff_aic_dc_scale_table = common dso_local global i32 0, align 4
@ff_mpeg1_dc_scale_table = common dso_local global i32 0, align 4
@ff_h263_chroma_qscale_table = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"**mb x=%d y=%d\0A\00", align 1
@MV_DIR_FORWARD = common dso_local global i32 0, align 4
@MV_TYPE_16X16 = common dso_local global i32 0, align 4
@SLICE_ERROR = common dso_local global i32 0, align 4
@SLICE_END = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"update size from %d to %d\0A\00", align 1
@SLICE_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"ERROR at MB %d %d\0A\00", align 1
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@ER_MB_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32*, i32, i32, i32)* @rv10_decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv10_decode_packet(%struct.TYPE_27__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %12, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 8
  store i32 %28, i32* %18, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 14
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @FFMAX(i32 %32, i32 %33)
  %35 = mul nsw i32 %34, 8
  %36 = call i32 @init_get_bits(i32* %30, i32* %31, i32 %35)
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_RV10, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %44 = call i32 @rv10_decode_picture_header(%struct.TYPE_26__* %43)
  store i32 %44, i32* %14, align 4
  br label %48

45:                                               ; preds = %5
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %47 = call i32 @rv20_decode_picture_header(%struct.TYPE_25__* %46)
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @ERROR_SKIP_FRAME, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 13
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %57, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %58, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %6, align 4
  br label %505

63:                                               ; preds = %48
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71, %63
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 13
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %82, i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %6, align 4
  br label %505

92:                                               ; preds = %71
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %15, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load i32, i32* %15, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %92
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 13
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %119, i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %6, align 4
  br label %505

123:                                              ; preds = %92
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = sdiv i32 %131, 8
  %133 = icmp slt i32 %124, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %6, align 4
  br label %505

136:                                              ; preds = %123
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 27
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = icmp ne %struct.TYPE_24__* %149, null
  br i1 %150, label %180, label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 27
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %153, align 8
  %155 = icmp ne %struct.TYPE_24__* %154, null
  br i1 %155, label %156, label %170

156:                                              ; preds = %151
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 10
  %159 = call i32 @ff_er_frame_end(i32* %158)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %161 = call i32 @ff_mpv_frame_end(%struct.TYPE_26__* %160)
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 6
  store i32 0, i32* %163, align 4
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 5
  store i32 0, i32* %165, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 3
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %156, %151
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %173 = call i32 @ff_mpv_frame_start(%struct.TYPE_26__* %171, %struct.TYPE_27__* %172)
  store i32 %173, i32* %19, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* %19, align 4
  store i32 %176, i32* %6, align 4
  br label %505

177:                                              ; preds = %170
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %179 = call i32 @ff_mpeg_er_frame_start(%struct.TYPE_26__* %178)
  br label %200

180:                                              ; preds = %146
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 27
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %180
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 13
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %194, align 8
  %196 = load i32, i32* @AV_LOG_ERROR, align 4
  %197 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %195, i32 %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %198 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %198, i32* %6, align 4
  br label %505

199:                                              ; preds = %180
  br label %200

200:                                              ; preds = %199, %177
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 21
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ff_dlog(%struct.TYPE_27__* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @AV_CODEC_ID_RV10, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %200
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 8
  store i32 1, i32* %218, align 8
  br label %219

219:                                              ; preds = %216, %211
  br label %228

220:                                              ; preds = %200
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 8
  store i32 1, i32* %222, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %220, %219
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %17, align 4
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 26
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %228
  %242 = load i32, i32* @ff_aic_dc_scale_table, align 4
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 24
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 25
  store i32 %242, i32* %246, align 4
  br label %253

247:                                              ; preds = %228
  %248 = load i32, i32* @ff_mpeg1_dc_scale_table, align 4
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 24
  store i32 %248, i32* %250, align 8
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 25
  store i32 %248, i32* %252, align 4
  br label %253

253:                                              ; preds = %247, %241
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 23
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32, i32* @ff_h263_chroma_qscale_table, align 4
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 22
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %258, %253
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 21
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @ff_set_qscale(%struct.TYPE_26__* %263, i32 %266)
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 20
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 0
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 20
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 20
  %278 = load i64*, i64** %277, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 2
  store i64 0, i64* %279, align 8
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 19
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 18
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 3
  store i32 %282, i32* %286, align 4
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 18
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32 %282, i32* %290, align 4
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 18
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  store i32 %282, i32* %294, align 4
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 18
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  store i32 %282, i32* %298, align 4
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 17
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 18
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 5
  store i32 %301, i32* %305, align 4
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 18
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  store i32 %301, i32* %309, align 4
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %311 = call i32 @ff_init_block_index(%struct.TYPE_26__* %310)
  %312 = load i32, i32* %14, align 4
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 9
  store i32 %312, i32* %314, align 4
  br label %315

315:                                              ; preds = %483, %262
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %488

320:                                              ; preds = %315
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %322 = call i32 @ff_update_block_index(%struct.TYPE_26__* %321)
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @ff_tlog(%struct.TYPE_27__* %323, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %326, i32 %329)
  %331 = load i32, i32* @MV_DIR_FORWARD, align 4
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 16
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* @MV_TYPE_16X16, align 4
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 15
  store i32 %334, i32* %336, align 4
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 12
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @ff_h263_decode_mb(%struct.TYPE_26__* %337, i32 %340)
  store i32 %341, i32* %20, align 4
  %342 = load i32, i32* %20, align 4
  %343 = load i32, i32* @SLICE_ERROR, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %376

345:                                              ; preds = %320
  %346 = load i32, i32* %18, align 4
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 14
  %349 = call i32 @get_bits_count(i32* %348)
  %350 = icmp sge i32 %346, %349
  br i1 %350, label %351, label %376

351:                                              ; preds = %345
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 14
  %354 = call i32 @show_bits(i32* %353, i32 16)
  store i32 %354, i32* %21, align 4
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 14
  %357 = call i32 @get_bits_count(i32* %356)
  %358 = add nsw i32 %357, 16
  %359 = load i32, i32* %18, align 4
  %360 = icmp sgt i32 %358, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %351
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 14
  %364 = call i32 @get_bits_count(i32* %363)
  %365 = add nsw i32 %364, 16
  %366 = load i32, i32* %18, align 4
  %367 = sub nsw i32 %365, %366
  %368 = load i32, i32* %21, align 4
  %369 = ashr i32 %368, %367
  store i32 %369, i32* %21, align 4
  br label %370

370:                                              ; preds = %361, %351
  %371 = load i32, i32* %21, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* @SLICE_END, align 4
  store i32 %374, i32* %20, align 4
  br label %375

375:                                              ; preds = %373, %370
  br label %376

376:                                              ; preds = %375, %345, %320
  %377 = load i32, i32* %20, align 4
  %378 = load i32, i32* @SLICE_ERROR, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %403

380:                                              ; preds = %376
  %381 = load i32, i32* %18, align 4
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 14
  %384 = call i32 @get_bits_count(i32* %383)
  %385 = icmp slt i32 %381, %384
  br i1 %385, label %386, label %403

386:                                              ; preds = %380
  %387 = load i32, i32* %10, align 4
  %388 = mul nsw i32 8, %387
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i32 0, i32 14
  %391 = call i32 @get_bits_count(i32* %390)
  %392 = icmp sge i32 %388, %391
  br i1 %392, label %393, label %403

393:                                              ; preds = %386
  %394 = load i32, i32* %10, align 4
  %395 = mul nsw i32 %394, 8
  store i32 %395, i32* %18, align 4
  %396 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %397 = load i32, i32* @AV_LOG_DEBUG, align 4
  %398 = load i32, i32* %9, align 4
  %399 = mul nsw i32 8, %398
  %400 = load i32, i32* %18, align 4
  %401 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %396, i32 %397, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %399, i32 %400)
  %402 = load i32, i32* @SLICE_OK, align 4
  store i32 %402, i32* %20, align 4
  br label %403

403:                                              ; preds = %393, %386, %380, %376
  %404 = load i32, i32* %20, align 4
  %405 = load i32, i32* @SLICE_ERROR, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %403
  %408 = load i32, i32* %18, align 4
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 14
  %411 = call i32 @get_bits_count(i32* %410)
  %412 = icmp slt i32 %408, %411
  br i1 %412, label %413, label %426

413:                                              ; preds = %407, %403
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 13
  %416 = load %struct.TYPE_27__*, %struct.TYPE_27__** %415, align 8
  %417 = load i32, i32* @AV_LOG_ERROR, align 4
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %416, i32 %417, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %420, i32 %423)
  %425 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %425, i32* %6, align 4
  br label %505

426:                                              ; preds = %407
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 7
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %431 = icmp ne i64 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %434 = call i32 @ff_h263_update_motion_val(%struct.TYPE_26__* %433)
  br label %435

435:                                              ; preds = %432, %426
  %436 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %437 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 12
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @ff_mpv_reconstruct_mb(%struct.TYPE_26__* %436, i32 %439)
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 11
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %435
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %447 = call i32 @ff_h263_loop_filter(%struct.TYPE_26__* %446)
  br label %448

448:                                              ; preds = %445, %435
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %450 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %450, align 8
  %453 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %452, %455
  br i1 %456, label %457, label %466

457:                                              ; preds = %448
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 1
  store i32 0, i32* %459, align 8
  %460 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %461 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %461, align 8
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %465 = call i32 @ff_init_block_index(%struct.TYPE_26__* %464)
  br label %466

466:                                              ; preds = %457, %448
  %467 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %468 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %471 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 8
  %473 = icmp eq i32 %469, %472
  br i1 %473, label %474, label %477

474:                                              ; preds = %466
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 8
  store i32 0, i32* %476, align 8
  br label %477

477:                                              ; preds = %474, %466
  %478 = load i32, i32* %20, align 4
  %479 = load i32, i32* @SLICE_END, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  br label %488

482:                                              ; preds = %477
  br label %483

483:                                              ; preds = %482
  %484 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %485 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %484, i32 0, i32 9
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %486, -1
  store i32 %487, i32* %485, align 4
  br label %315

488:                                              ; preds = %481, %315
  %489 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %490 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %489, i32 0, i32 10
  %491 = load i32, i32* %17, align 4
  %492 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %493 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %492, i32 0, i32 6
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %496 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 8
  %498 = sub nsw i32 %497, 1
  %499 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %500 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @ER_MB_END, align 4
  %503 = call i32 @ff_er_add_slice(i32* %490, i32 %491, i32 %494, i32 %498, i32 %501, i32 %502)
  %504 = load i32, i32* %18, align 4
  store i32 %504, i32* %6, align 4
  br label %505

505:                                              ; preds = %488, %413, %192, %175, %134, %116, %79, %61
  %506 = load i32, i32* %6, align 4
  ret i32 %506
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @rv10_decode_picture_header(%struct.TYPE_26__*) #1

declare dso_local i32 @rv20_decode_picture_header(%struct.TYPE_25__*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i32 @ff_er_frame_end(i32*) #1

declare dso_local i32 @ff_mpv_frame_end(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_mpv_frame_start(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ff_mpeg_er_frame_start(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32 @ff_set_qscale(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ff_init_block_index(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_update_block_index(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_tlog(%struct.TYPE_27__*, i8*, i32, i32) #1

declare dso_local i32 @ff_h263_decode_mb(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @ff_h263_update_motion_val(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_mpv_reconstruct_mb(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ff_h263_loop_filter(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_er_add_slice(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
