; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fic.c_fic_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32*, i32, i32)*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i32*, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32*, i32 }

@FIC_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Frame data is too small.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@fic_header = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid FIC Header.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Initial frame is skipped\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Zero slices found.\0A\00", align 1
@fic_qmat_hq = common dso_local global i32 0, align 4
@fic_qmat_lq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Packet is too small to contain cursor (%d vs %d bytes).\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Cursor data too small. Skipping cursor.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Invalid cursor position: (%d,%d). Skipping cursor.\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Invalid cursor size. Skipping cursor.\0A\00", align 1
@CURSOR_OFFSET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Not enough frame data to decode.\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Could not allocate slice data.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fic_decode_slice = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Could not clone frame buffer.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Could not make frame writable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_20__*)* @fic_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fic_decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %10, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %19, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = call i32 @ff_reget_buffer(%struct.TYPE_21__* %34, %struct.TYPE_18__* %37, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %526

42:                                               ; preds = %4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %47 = add nsw i32 %46, 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %526

54:                                               ; preds = %42
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @fic_header, align 4
  %57 = call i64 @memcmp(i32* %55, i32 %56, i32 7)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = load i32, i32* @AV_LOG_WARNING, align 4
  %62 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %60, i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 17
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = load i32, i32* @AV_LOG_WARNING, align 4
  %76 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %74, i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %77, i32* %5, align 4
  br label %526

78:                                               ; preds = %68
  br label %512

79:                                               ; preds = %63
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 13
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %86, i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %89, i32* %5, align 4
  br label %526

90:                                               ; preds = %79
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 23
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @fic_qmat_hq, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @fic_qmat_lq, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 24
  %105 = call i32 @AV_RB24(i32* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %111 = sub nsw i32 %109, %110
  %112 = icmp sgt i32 %106, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %99
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = load i32, i32* @AV_LOG_ERROR, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %114, i32 %115, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %121)
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %5, align 4
  br label %526

124:                                              ; preds = %99
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 37
  %130 = call i32 @AV_RL16(i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 39
  %135 = call i32 @AV_RL16(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132, %127, %124
  store i32 1, i32* %19, align 4
  br label %138

138:                                              ; preds = %137, %132
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 32
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = load i32, i32* @AV_LOG_WARNING, align 4
  %147 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %145, i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %148

148:                                              ; preds = %144, %141, %138
  %149 = load i32*, i32** %11, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 33
  %151 = call i32 @AV_RL16(i32* %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 35
  %154 = call i32 @AV_RL16(i32* %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %158, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* %18, align 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163, %157
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %171 = load i32, i32* @AV_LOG_DEBUG, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %18, align 4
  %174 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %170, i32 %171, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %172, i32 %173)
  store i32 1, i32* %19, align 4
  br label %175

175:                                              ; preds = %169, %163, %148
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %175
  %179 = load i32*, i32** %11, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 37
  %181 = call i32 @AV_RL16(i32* %180)
  %182 = icmp ne i32 %181, 32
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i32*, i32** %11, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 39
  %186 = call i32 @AV_RL16(i32* %185)
  %187 = icmp ne i32 %186, 32
  br i1 %187, label %188, label %192

188:                                              ; preds = %183, %178
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %190 = load i32, i32* @AV_LOG_WARNING, align 4
  %191 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %189, i32 %190, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %192

192:                                              ; preds = %188, %183, %175
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = load i32, i32* @CURSOR_OFFSET, align 4
  %201 = sext i32 %200 to i64
  %202 = add i64 %201, 4
  %203 = icmp ult i64 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  store i32 1, i32* %19, align 4
  br label %205

205:                                              ; preds = %204, %195, %192
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = ashr i32 %208, 4
  %210 = mul nsw i32 16, %209
  %211 = load i32, i32* %14, align 4
  %212 = sdiv i32 %210, %211
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = srem i32 %217, 16
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %205
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, 16
  %225 = call i8* @FFALIGN(i32 %224, i32 16)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %220, %205
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %14, align 4
  %238 = mul nsw i32 4, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32* %240, i32** %20, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %14, align 4
  %245 = mul nsw i32 %244, 4
  %246 = sub nsw i32 %243, %245
  %247 = load i32, i32* %16, align 4
  %248 = sub nsw i32 %246, %247
  %249 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %250 = sub nsw i32 %248, %249
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %15, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = sdiv i32 %254, 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = sdiv i32 %258, 8
  %260 = mul nsw i32 %255, %259
  %261 = sdiv i32 %260, 8
  %262 = icmp sle i32 %251, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %229
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %265 = load i32, i32* @AV_LOG_ERROR, align 4
  %266 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %264, i32 %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %267 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %267, i32* %5, align 4
  br label %526

268:                                              ; preds = %229
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 7
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = mul i64 %274, 32
  %276 = trunc i64 %275 to i32
  %277 = call i32 @av_fast_malloc(%struct.TYPE_22__** %270, i32* %272, i32 %276)
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %268
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %284 = load i32, i32* @AV_LOG_ERROR, align 4
  %285 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %283, i32 %284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %286 = load i32, i32* @ENOMEM, align 4
  %287 = call i32 @AVERROR(i32 %286)
  store i32 %287, i32* %5, align 4
  br label %526

288:                                              ; preds = %268
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 7
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %290, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = mul i64 %293, 32
  %295 = trunc i64 %294 to i32
  %296 = call i32 @memset(%struct.TYPE_22__* %291, i32 0, i32 %295)
  store i32 0, i32* %13, align 4
  br label %297

297:                                              ; preds = %408, %288
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %14, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %411

301:                                              ; preds = %297
  %302 = load i32*, i32** %11, align 8
  %303 = load i32, i32* %16, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %13, align 4
  %310 = mul nsw i32 %309, 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = call i32 @AV_RB32(i32* %312)
  store i32 %313, i32* %21, align 4
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %13, align 4
  %318 = mul nsw i32 %316, %317
  store i32 %318, i32* %23, align 4
  %319 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %24, align 4
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* %14, align 4
  %324 = sub nsw i32 %323, 1
  %325 = icmp eq i32 %322, %324
  br i1 %325, label %326, label %340

326:                                              ; preds = %301
  %327 = load i32, i32* %15, align 4
  store i32 %327, i32* %22, align 4
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %14, align 4
  %335 = sub nsw i32 %334, 1
  %336 = mul nsw i32 %333, %335
  %337 = sub nsw i32 %330, %336
  %338 = call i8* @FFALIGN(i32 %337, i32 16)
  %339 = ptrtoint i8* %338 to i32
  store i32 %339, i32* %24, align 4
  br label %360

340:                                              ; preds = %301
  %341 = load i32*, i32** %11, align 8
  %342 = load i32, i32* %16, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* @FIC_HEADER_SIZE, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %13, align 4
  %349 = mul nsw i32 %348, 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %347, i64 %350
  %352 = getelementptr inbounds i32, i32* %351, i64 4
  %353 = call i32 @AV_RB32(i32* %352)
  store i32 %353, i32* %22, align 4
  %354 = load i32, i32* %22, align 4
  %355 = load i32, i32* %21, align 4
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %340
  %358 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %358, i32* %5, align 4
  br label %526

359:                                              ; preds = %340
  br label %360

360:                                              ; preds = %359, %326
  %361 = load i32, i32* %22, align 4
  %362 = load i32, i32* %21, align 4
  %363 = icmp ult i32 %361, %362
  br i1 %363, label %368, label %364

364:                                              ; preds = %360
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %15, align 4
  %367 = icmp ugt i32 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %364, %360
  br label %408

369:                                              ; preds = %364
  %370 = load i32, i32* %21, align 4
  %371 = load i32, i32* %22, align 4
  %372 = sub i32 %371, %370
  store i32 %372, i32* %22, align 4
  %373 = load i32*, i32** %20, align 8
  %374 = load i32, i32* %21, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 7
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %378, align 8
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 0
  store i32* %376, i32** %383, align 8
  %384 = load i32, i32* %22, align 4
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 7
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %386, align 8
  %388 = load i32, i32* %13, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 1
  store i32 %384, i32* %391, align 8
  %392 = load i32, i32* %24, align 4
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 7
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %394, align 8
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 2
  store i32 %392, i32* %399, align 4
  %400 = load i32, i32* %23, align 4
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 7
  %403 = load %struct.TYPE_22__*, %struct.TYPE_22__** %402, align 8
  %404 = load i32, i32* %13, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 3
  store i32 %400, i32* %407, align 8
  br label %408

408:                                              ; preds = %369, %368
  %409 = load i32, i32* %13, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %13, align 4
  br label %297

411:                                              ; preds = %297
  %412 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %412, i32 0, i32 2
  %414 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32*, i32, i32)** %413, align 8
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %416 = load i32, i32* @fic_decode_slice, align 4
  %417 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %417, i32 0, i32 7
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %418, align 8
  %420 = load i32, i32* %14, align 4
  %421 = call i32 %414(%struct.TYPE_21__* %415, i32 %416, %struct.TYPE_22__* %419, i32* null, i32 %420, i32 32)
  store i32 %421, i32* %12, align 4
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %411
  %424 = load i32, i32* %12, align 4
  store i32 %424, i32* %5, align 4
  br label %526

425:                                              ; preds = %411
  %426 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 6
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 0
  store i32 1, i32* %429, align 4
  %430 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 6
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i32 0, i32 1
  store i32 %430, i32* %434, align 4
  store i32 0, i32* %13, align 4
  br label %435

435:                                              ; preds = %460, %425
  %436 = load i32, i32* %13, align 4
  %437 = load i32, i32* %14, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %463

439:                                              ; preds = %435
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 7
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %441, align 8
  %443 = load i32, i32* %13, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %445, i32 0, i32 4
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %459

449:                                              ; preds = %439
  %450 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 6
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 0
  store i32 0, i32* %453, align 4
  %454 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 6
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 1
  store i32 %454, i32* %458, align 4
  br label %463

459:                                              ; preds = %439
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %13, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %13, align 4
  br label %435

463:                                              ; preds = %449, %435
  %464 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 4
  %466 = call i32 @av_frame_free(%struct.TYPE_18__** %465)
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 6
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %468, align 8
  %470 = call %struct.TYPE_18__* @av_frame_clone(%struct.TYPE_18__* %469)
  %471 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %472 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %471, i32 0, i32 4
  store %struct.TYPE_18__* %470, %struct.TYPE_18__** %472, align 8
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 4
  %475 = load %struct.TYPE_18__*, %struct.TYPE_18__** %474, align 8
  %476 = icmp ne %struct.TYPE_18__* %475, null
  br i1 %476, label %483, label %477

477:                                              ; preds = %463
  %478 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %479 = load i32, i32* @AV_LOG_ERROR, align 4
  %480 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %478, i32 %479, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %481 = load i32, i32* @ENOMEM, align 4
  %482 = call i32 @AVERROR(i32 %481)
  store i32 %482, i32* %5, align 4
  br label %526

483:                                              ; preds = %463
  %484 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %485 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i32 0, i32 4
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %486, align 8
  %488 = call i32 @ff_reget_buffer(%struct.TYPE_21__* %484, %struct.TYPE_18__* %487, i32 0)
  store i32 %488, i32* %12, align 4
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %483
  %491 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %492 = load i32, i32* @AV_LOG_ERROR, align 4
  %493 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %491, i32 %492, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %494 = load i32, i32* %12, align 4
  store i32 %494, i32* %5, align 4
  br label %526

495:                                              ; preds = %483
  %496 = load i32, i32* %19, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %511, label %498

498:                                              ; preds = %495
  %499 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 5
  %501 = load i32, i32* %500, align 8
  %502 = load i32*, i32** %11, align 8
  %503 = load i32, i32* @CURSOR_OFFSET, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = call i32 @memcpy(i32 %501, i32* %505, i32 4)
  %507 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %508 = load i32, i32* %17, align 4
  %509 = load i32, i32* %18, align 4
  %510 = call i32 @fic_draw_cursor(%struct.TYPE_21__* %507, i32 %508, i32 %509)
  br label %511

511:                                              ; preds = %498, %495
  br label %512

512:                                              ; preds = %511, %78
  %513 = load i32*, i32** %8, align 8
  store i32 1, i32* %513, align 4
  %514 = load i8*, i8** %7, align 8
  %515 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %515, i32 0, i32 4
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %516, align 8
  %518 = call i32 @av_frame_ref(i8* %514, %struct.TYPE_18__* %517)
  store i32 %518, i32* %12, align 4
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %512
  %521 = load i32, i32* %12, align 4
  store i32 %521, i32* %5, align 4
  br label %526

522:                                              ; preds = %512
  %523 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %524 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  store i32 %525, i32* %5, align 4
  br label %526

526:                                              ; preds = %522, %520, %490, %477, %423, %357, %282, %263, %113, %85, %73, %49, %40
  %527 = load i32, i32* %5, align 4
  ret i32 %527
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_21__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_fast_malloc(%struct.TYPE_22__**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local %struct.TYPE_18__* @av_frame_clone(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @fic_draw_cursor(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
