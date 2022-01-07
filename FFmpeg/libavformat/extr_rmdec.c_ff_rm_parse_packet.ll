; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_ff_rm_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_ff_rm_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32*, i8*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32, i8*, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid block alignment %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DEINT_ID_VBRF = common dso_local global i32 0, align 4
@DEINT_ID_VBRS = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rm_parse_packet(%struct.TYPE_27__* %0, i32* %1, %struct.TYPE_25__* %2, %struct.TYPE_23__* %3, i32 %4, %struct.TYPE_26__* %5, i32* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %14, align 8
  store i32 %4, i32* %15, align 4
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %20, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %9
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @rm_assemble_video_frame(%struct.TYPE_27__* %45, i32* %46, %struct.TYPE_24__* %47, %struct.TYPE_23__* %48, %struct.TYPE_26__* %49, i32 %50, i32* %51, i8** %19)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %39
  %56 = load i32, i32* %21, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %21, align 4
  br label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ -1, %60 ]
  store i32 %62, i32* %10, align 4
  br label %371

63:                                               ; preds = %39
  br label %338

64:                                               ; preds = %9
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %327

72:                                               ; preds = %64
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 130
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 129
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %254

87:                                               ; preds = %82, %77, %72
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %23, align 4
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %24, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %25, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %26, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %18, align 4
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 4
  store i32 0, i32* %108, align 8
  store i32 0, i32* %26, align 4
  br label %109

109:                                              ; preds = %106, %87
  %110 = load i32, i32* %26, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load i8*, i8** %19, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 7
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %109
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %197 [
    i32 129, label %120
    i32 130, label %148
    i32 128, label %184
  ]

120:                                              ; preds = %116
  store i32 0, i32* %22, align 4
  br label %121

121:                                              ; preds = %144, %120
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %25, align 4
  %124 = sdiv i32 %123, 2
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %121
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %22, align 4
  %134 = mul nsw i32 %133, 2
  %135 = load i32, i32* %27, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %132, %136
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %24, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %137, %140
  %142 = load i32, i32* %24, align 4
  %143 = call i32 @readfull(%struct.TYPE_27__* %127, i32* %128, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %22, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %22, align 4
  br label %121

147:                                              ; preds = %121
  br label %197

148:                                              ; preds = %116
  store i32 0, i32* %22, align 4
  br label %149

149:                                              ; preds = %180, %148
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %23, align 4
  %153 = sdiv i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %149
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %22, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %25, align 4
  %167 = add nsw i32 %166, 1
  %168 = sdiv i32 %167, 2
  %169 = load i32, i32* %26, align 4
  %170 = and i32 %169, 1
  %171 = mul nsw i32 %168, %170
  %172 = add nsw i32 %165, %171
  %173 = load i32, i32* %26, align 4
  %174 = ashr i32 %173, 1
  %175 = add nsw i32 %172, %174
  %176 = mul nsw i32 %162, %175
  %177 = add nsw i32 %161, %176
  %178 = load i32, i32* %23, align 4
  %179 = call i32 @readfull(%struct.TYPE_27__* %156, i32* %157, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %155
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %22, align 4
  br label %149

183:                                              ; preds = %149
  br label %197

184:                                              ; preds = %116
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %26, align 4
  %192 = load i32, i32* %27, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %190, %193
  %195 = load i32, i32* %27, align 4
  %196 = call i32 @readfull(%struct.TYPE_27__* %185, i32* %186, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %116, %184, %183, %147
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* %25, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store i32 -1, i32* %10, align 4
  br label %371

205:                                              ; preds = %197
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 128
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %25, align 4
  %216 = load i32, i32* %27, align 4
  %217 = call i32 @ff_rm_reorder_sipr_data(i32 %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %210, %205
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 4
  store i32 0, i32* %220, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %218
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %234 = load i32, i32* @AV_LOG_ERROR, align 4
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @av_log(%struct.TYPE_27__* %233, i32 %234, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %241, i32* %10, align 4
  br label %371

242:                                              ; preds = %218
  %243 = load i32, i32* %25, align 4
  %244 = load i32, i32* %27, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = sdiv i32 %245, %250
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 4
  br label %326

254:                                              ; preds = %82
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @DEINT_ID_VBRF, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @DEINT_ID_VBRS, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %312

266:                                              ; preds = %260, %254
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load i32*, i32** %12, align 8
  %273 = call i32 @avio_rb16(i32* %272)
  %274 = and i32 %273, 240
  %275 = ashr i32 %274, 4
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %310

282:                                              ; preds = %266
  store i32 0, i32* %28, align 4
  br label %283

283:                                              ; preds = %298, %282
  %284 = load i32, i32* %28, align 4
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %301

289:                                              ; preds = %283
  %290 = load i32*, i32** %12, align 8
  %291 = call i32 @avio_rb16(i32* %290)
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 6
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %28, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %291, i32* %297, align 4
  br label %298

298:                                              ; preds = %289
  %299 = load i32, i32* %28, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %28, align 4
  br label %283

301:                                              ; preds = %283
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 4
  %307 = load i8*, i8** %19, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 7
  store i8* %307, i8** %309, align 8
  br label %311

310:                                              ; preds = %266
  store i32 -1, i32* %10, align 4
  br label %371

311:                                              ; preds = %301
  br label %325

312:                                              ; preds = %260
  %313 = load i32*, i32** %12, align 8
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @av_get_packet(i32* %313, %struct.TYPE_26__* %314, i32 %315)
  store i32 %316, i32* %21, align 4
  %317 = load i32, i32* %21, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %312
  %320 = load i32, i32* %21, align 4
  store i32 %320, i32* %10, align 4
  br label %371

321:                                              ; preds = %312
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %324 = call i32 @rm_ac3_swap_bytes(%struct.TYPE_25__* %322, %struct.TYPE_26__* %323)
  br label %325

325:                                              ; preds = %321, %311
  br label %326

326:                                              ; preds = %325, %242
  br label %337

327:                                              ; preds = %64
  %328 = load i32*, i32** %12, align 8
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %330 = load i32, i32* %15, align 4
  %331 = call i32 @av_get_packet(i32* %328, %struct.TYPE_26__* %329, i32 %330)
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* %21, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %327
  %335 = load i32, i32* %21, align 4
  store i32 %335, i32* %10, align 4
  br label %371

336:                                              ; preds = %327
  br label %337

337:                                              ; preds = %336, %326
  br label %338

338:                                              ; preds = %337, %63
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 2
  store i32 %341, i32* %343, align 8
  %344 = load i8*, i8** %19, align 8
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 1
  store i8* %344, i8** %346, align 8
  %347 = load i32, i32* %18, align 4
  %348 = and i32 %347, 2
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %338
  %351 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %338
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %356
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  br label %369

368:                                              ; preds = %356
  br label %369

369:                                              ; preds = %368, %364
  %370 = phi i32 [ %367, %364 ], [ 0, %368 ]
  store i32 %370, i32* %10, align 4
  br label %371

371:                                              ; preds = %369, %334, %319, %310, %232, %204, %61
  %372 = load i32, i32* %10, align 4
  ret i32 %372
}

declare dso_local i32 @rm_assemble_video_frame(%struct.TYPE_27__*, i32*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_26__*, i32, i32*, i8**) #1

declare dso_local i32 @readfull(%struct.TYPE_27__*, i32*, i32, i32) #1

declare dso_local i32 @ff_rm_reorder_sipr_data(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @rm_ac3_swap_bytes(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
