; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xpmdec.c_xpm_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xpmdec.c_xpm_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64*, i32, i64*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i64* }

@AV_PIX_FMT_BGRA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/* XPM */\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"missing signature\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\22%u %u %u %u\22,\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"missing image parameters\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"unsupported/invalid number of chars per pixel: %d\0A\00", align 1
@NB_ELEMENTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid number of colors: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"c \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @xpm_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpm_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %11, align 8
  %30 = load i32, i32* @AV_PIX_FMT_BGRA, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @av_fast_padded_malloc(i64** %34, i32* %36, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %388

48:                                               ; preds = %4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i64* %51, i32 %54, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  store i64* %69, i64** %13, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  store i64* %77, i64** %12, align 8
  br label %78

78:                                               ; preds = %92, %48
  %79 = load i64*, i64** %12, align 8
  %80 = load i64*, i64** %13, align 8
  %81 = ptrtoint i64* %79 to i64
  %82 = ptrtoint i64* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 8
  %85 = icmp sgt i64 %84, 9
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i64*, i64** %13, align 8
  %88 = call i64 @memcmp(i64* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %86, %78
  %91 = phi i1 [ false, %78 ], [ %89, %86 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i64*, i64** %13, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %13, align 8
  br label %78

95:                                               ; preds = %90
  %96 = load i64*, i64** %12, align 8
  %97 = load i64*, i64** %13, align 8
  %98 = ptrtoint i64* %96 to i64
  %99 = ptrtoint i64* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 8
  %102 = icmp sle i64 %101, 9
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %104, i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %5, align 4
  br label %388

108:                                              ; preds = %95
  %109 = load i64*, i64** %13, align 8
  %110 = call i64 @mod_strcspn(i64* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i64*, i64** %13, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 %110
  store i64* %112, i64** %13, align 8
  %113 = load i64*, i64** %13, align 8
  %114 = call i32 @sscanf(i64* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %21, i32* %22, i32* %14, i32* %15)
  %115 = icmp ne i32 %114, 4
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %117, i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %5, align 4
  br label %388

121:                                              ; preds = %108
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %22, align 4
  %125 = call i32 @ff_set_dimensions(%struct.TYPE_14__* %122, i32 %123, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %5, align 4
  br label %388

129:                                              ; preds = %121
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = call i32 @ff_get_buffer(%struct.TYPE_14__* %130, %struct.TYPE_13__* %131, i32 0)
  store i32 %132, i32* %16, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %5, align 4
  br label %388

136:                                              ; preds = %129
  %137 = load i32, i32* %15, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %15, align 4
  %141 = icmp sge i32 %140, 5
  br i1 %141, label %142, label %148

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %143, i32 %144, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %147, i32* %5, align 4
  br label %388

148:                                              ; preds = %139
  store i32 1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %157, %148
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32, i32* @NB_ELEMENTS, align 4
  %155 = load i32, i32* %19, align 4
  %156 = mul nsw i32 %155, %154
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %149

160:                                              ; preds = %149
  %161 = load i32, i32* %14, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163, %160
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = load i32, i32* @AV_LOG_ERROR, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %168, i32 %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %172, i32* %5, align 4
  br label %388

173:                                              ; preds = %163
  %174 = load i32, i32* %19, align 4
  %175 = mul nsw i32 %174, 4
  store i32 %175, i32* %19, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @av_fast_padded_malloc(i64** %177, i32* %179, i32 %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = icmp ne i64* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %173
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = call i32 @AVERROR(i32 %187)
  store i32 %188, i32* %5, align 4
  br label %388

189:                                              ; preds = %173
  %190 = load i64*, i64** %13, align 8
  %191 = call i64 @mod_strcspn(i64* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %192 = add nsw i64 %191, 1
  %193 = load i64*, i64** %13, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 %192
  store i64* %194, i64** %13, align 8
  %195 = load i64*, i64** %12, align 8
  %196 = load i64*, i64** %13, align 8
  %197 = ptrtoint i64* %195 to i64
  %198 = ptrtoint i64* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 8
  %201 = icmp slt i64 %200, 1
  br i1 %201, label %202, label %204

202:                                              ; preds = %189
  %203 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %203, i32* %5, align 4
  br label %388

204:                                              ; preds = %189
  store i32 0, i32* %17, align 4
  br label %205

205:                                              ; preds = %275, %204
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %278

209:                                              ; preds = %205
  %210 = load i64*, i64** %13, align 8
  %211 = call i64 @mod_strcspn(i64* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %212 = add nsw i64 %211, 1
  %213 = load i64*, i64** %13, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 %212
  store i64* %214, i64** %13, align 8
  %215 = load i64*, i64** %12, align 8
  %216 = load i64*, i64** %13, align 8
  %217 = ptrtoint i64* %215 to i64
  %218 = ptrtoint i64* %216 to i64
  %219 = sub i64 %217, %218
  %220 = sdiv exact i64 %219, 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = icmp slt i64 %220, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %209
  %225 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %225, i32* %5, align 4
  br label %388

226:                                              ; preds = %209
  %227 = load i64*, i64** %13, align 8
  store i64* %227, i64** %23, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load i64*, i64** %13, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i64, i64* %229, i64 %230
  store i64* %231, i64** %13, align 8
  %232 = load i64*, i64** %13, align 8
  %233 = call i64* @strstr(i64* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i64* %233, i64** %13, align 8
  %234 = load i64*, i64** %13, align 8
  %235 = icmp ne i64* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %226
  %237 = load i64*, i64** %13, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 2
  store i64* %238, i64** %13, align 8
  br label %241

239:                                              ; preds = %226
  %240 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %240, i32* %5, align 4
  br label %388

241:                                              ; preds = %236
  %242 = load i64*, i64** %13, align 8
  %243 = call i32 @strcspn(i64* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %243, i32* %24, align 4
  %244 = load i64*, i64** %23, align 8
  %245 = load i32, i32* %15, align 4
  %246 = call i32 @ascii2index(i64* %244, i32 %245)
  store i32 %246, i32* %16, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, i32* %16, align 4
  store i32 %249, i32* %5, align 4
  br label %388

250:                                              ; preds = %241
  %251 = load i64*, i64** %13, align 8
  %252 = load i32, i32* %24, align 4
  %253 = call i64 @color_string_to_rgba(i64* %251, i32 %252)
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  store i64 %253, i64* %259, align 8
  %260 = load i64*, i64** %13, align 8
  %261 = call i64 @mod_strcspn(i64* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %262 = add nsw i64 %261, 1
  %263 = load i64*, i64** %13, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 %262
  store i64* %264, i64** %13, align 8
  %265 = load i64*, i64** %12, align 8
  %266 = load i64*, i64** %13, align 8
  %267 = ptrtoint i64* %265 to i64
  %268 = ptrtoint i64* %266 to i64
  %269 = sub i64 %267, %268
  %270 = sdiv exact i64 %269, 8
  %271 = icmp slt i64 %270, 1
  br i1 %271, label %272, label %274

272:                                              ; preds = %250
  %273 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %273, i32* %5, align 4
  br label %388

274:                                              ; preds = %250
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %17, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %17, align 4
  br label %205

278:                                              ; preds = %205
  store i32 0, i32* %17, align 4
  br label %279

279:                                              ; preds = %375, %278
  %280 = load i32, i32* %17, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %378

285:                                              ; preds = %279
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 3
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %17, align 4
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = mul nsw i32 %291, %296
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %290, %298
  %300 = inttoptr i64 %299 to i32*
  store i32* %300, i32** %20, align 8
  %301 = load i64*, i64** %12, align 8
  %302 = load i64*, i64** %13, align 8
  %303 = ptrtoint i64* %301 to i64
  %304 = ptrtoint i64* %302 to i64
  %305 = sub i64 %303, %304
  %306 = sdiv exact i64 %305, 8
  %307 = icmp slt i64 %306, 1
  br i1 %307, label %308, label %310

308:                                              ; preds = %285
  %309 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %309, i32* %5, align 4
  br label %388

310:                                              ; preds = %285
  %311 = load i64*, i64** %13, align 8
  %312 = call i64 @mod_strcspn(i64* %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %313 = add nsw i64 %312, 1
  %314 = load i64*, i64** %13, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 %313
  store i64* %315, i64** %13, align 8
  %316 = load i64*, i64** %12, align 8
  %317 = load i64*, i64** %13, align 8
  %318 = ptrtoint i64* %316 to i64
  %319 = ptrtoint i64* %317 to i64
  %320 = sub i64 %318, %319
  %321 = sdiv exact i64 %320, 8
  %322 = icmp slt i64 %321, 1
  br i1 %322, label %323, label %325

323:                                              ; preds = %310
  %324 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %324, i32* %5, align 4
  br label %388

325:                                              ; preds = %310
  store i32 0, i32* %18, align 4
  br label %326

326:                                              ; preds = %366, %325
  %327 = load i32, i32* %18, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %369

332:                                              ; preds = %326
  %333 = load i64*, i64** %12, align 8
  %334 = load i64*, i64** %13, align 8
  %335 = ptrtoint i64* %333 to i64
  %336 = ptrtoint i64* %334 to i64
  %337 = sub i64 %335, %336
  %338 = sdiv exact i64 %337, 8
  %339 = load i32, i32* %15, align 4
  %340 = sext i32 %339 to i64
  %341 = icmp slt i64 %338, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %332
  %343 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %343, i32* %5, align 4
  br label %388

344:                                              ; preds = %332
  %345 = load i64*, i64** %13, align 8
  %346 = load i32, i32* %15, align 4
  %347 = call i32 @ascii2index(i64* %345, i32 %346)
  store i32 %347, i32* %16, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  %350 = load i32, i32* %16, align 4
  store i32 %350, i32* %5, align 4
  br label %388

351:                                              ; preds = %344
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = load i64*, i64** %353, align 8
  %355 = load i32, i32* %16, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = load i32*, i32** %20, align 8
  %361 = getelementptr inbounds i32, i32* %360, i32 1
  store i32* %361, i32** %20, align 8
  store i32 %359, i32* %360, align 4
  %362 = load i32, i32* %15, align 4
  %363 = load i64*, i64** %13, align 8
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds i64, i64* %363, i64 %364
  store i64* %365, i64** %13, align 8
  br label %366

366:                                              ; preds = %351
  %367 = load i32, i32* %18, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %18, align 4
  br label %326

369:                                              ; preds = %326
  %370 = load i64*, i64** %13, align 8
  %371 = call i64 @mod_strcspn(i64* %370, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %372 = add nsw i64 %371, 1
  %373 = load i64*, i64** %13, align 8
  %374 = getelementptr inbounds i64, i64* %373, i64 %372
  store i64* %374, i64** %13, align 8
  br label %375

375:                                              ; preds = %369
  %376 = load i32, i32* %17, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %17, align 4
  br label %279

378:                                              ; preds = %279
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 1
  store i32 1, i32* %380, align 8
  %381 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 2
  store i32 %381, i32* %383, align 4
  %384 = load i32*, i32** %8, align 8
  store i32 1, i32* %384, align 4
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %5, align 4
  br label %388

388:                                              ; preds = %378, %349, %342, %323, %308, %272, %248, %239, %224, %202, %186, %167, %142, %134, %127, %116, %103, %45
  %389 = load i32, i32* %5, align 4
  ret i32 %389
}

declare dso_local i32 @av_fast_padded_malloc(i64**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i64 @mod_strcspn(i64*, i8*) #1

declare dso_local i32 @sscanf(i64*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64* @strstr(i64*, i8*) #1

declare dso_local i32 @strcspn(i64*, i8*) #1

declare dso_local i32 @ascii2index(i64*, i32) #1

declare dso_local i64 @color_string_to_rgba(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
