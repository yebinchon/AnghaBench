; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ansi.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ansi.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i32, i64*, i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@FONT_WIDTH = common dso_local global i32 0, align 4
@MAX_NB_ARGS = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"args overflow (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %13, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = call i32 @ff_reget_buffer(%struct.TYPE_16__* %30, %struct.TYPE_17__* %33, i32 0)
  store i32 %34, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %346

38:                                               ; preds = %4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %58, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %57, %67
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memset(i64 %68, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %50
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %44

76:                                               ; preds = %44
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @AVPALETTE_SIZE, align 4
  %85 = call i32 @memset(i64 %83, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %76, %38
  %87 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @set_palette(i32* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %86
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = call i32 @erase_screen(%struct.TYPE_16__* %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %109, %86
  br label %115

115:                                              ; preds = %331, %193, %114
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %334

119:                                              ; preds = %115
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %331 [
    i32 128, label %123
    i32 130, label %178
    i32 131, label %199
    i32 129, label %315
  ]

123:                                              ; preds = %119
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  switch i32 %127, label %171 [
    i32 0, label %128
    i32 7, label %128
    i32 26, label %128
    i32 8, label %129
    i32 9, label %137
    i32 10, label %159
    i32 13, label %162
    i32 12, label %165
    i32 27, label %168
  ]

128:                                              ; preds = %123, %123, %123
  br label %177

129:                                              ; preds = %123
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = call i32 @FFMAX(i32 %133, i32 0)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %177

137:                                              ; preds = %123
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FONT_WIDTH, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 8
  %145 = and i32 %144, -8
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %155, %137
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = call i32 @draw_char(%struct.TYPE_16__* %153, i8 signext 32)
  br label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %148

158:                                              ; preds = %148
  br label %177

159:                                              ; preds = %123
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = call i32 @hscroll(%struct.TYPE_16__* %160)
  br label %162

162:                                              ; preds = %123, %159
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  br label %177

165:                                              ; preds = %123
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = call i32 @erase_screen(%struct.TYPE_16__* %166)
  br label %177

168:                                              ; preds = %123
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  store i32 130, i32* %170, align 4
  br label %177

171:                                              ; preds = %123
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = call i32 @draw_char(%struct.TYPE_16__* %172, i8 signext %175)
  br label %177

177:                                              ; preds = %171, %168, %165, %162, %158, %129, %128
  br label %331

178:                                              ; preds = %119
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 91
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  store i32 131, i32* %186, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 -1, i32* %192, align 4
  br label %198

193:                                              ; preds = %178
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  store i32 128, i32* %195, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = call i32 @draw_char(%struct.TYPE_16__* %196, i8 signext 27)
  br label %115

198:                                              ; preds = %184
  br label %331

199:                                              ; preds = %119
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  switch i32 %203, label %268 [
    i32 48, label %204
    i32 49, label %204
    i32 50, label %204
    i32 51, label %204
    i32 52, label %204
    i32 53, label %204
    i32 54, label %204
    i32 55, label %204
    i32 56, label %204
    i32 57, label %204
    i32 59, label %245
    i32 77, label %264
    i32 61, label %267
    i32 63, label %267
  ]

204:                                              ; preds = %199, %199, %199, %199, %199, %199, %199, %199, %199, %199
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @MAX_NB_ARGS, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %244

210:                                              ; preds = %204
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %218, 6553
  br i1 %219, label %220, label %244

220:                                              ; preds = %210
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @FFMAX(i32 %228, i32 0)
  %230 = mul nsw i32 %229, 10
  %231 = load i8*, i8** %11, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 0
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = add nsw i32 %230, %234
  %236 = sub nsw i32 %235, 48
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %236, i32* %243, align 4
  br label %244

244:                                              ; preds = %220, %210, %204
  br label %314

245:                                              ; preds = %199
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %247, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @MAX_NB_ARGS, align 8
  %254 = icmp ult i64 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %245
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 0, i32* %262, align 4
  br label %263

263:                                              ; preds = %255, %245
  br label %314

264:                                              ; preds = %199
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  store i32 129, i32* %266, align 4
  br label %314

267:                                              ; preds = %199, %199
  br label %314

268:                                              ; preds = %199
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @MAX_NB_ARGS, align 8
  %273 = icmp ugt i64 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %268
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %276 = load i32, i32* @AV_LOG_WARNING, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @av_log(%struct.TYPE_16__* %275, i32 %276, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %279)
  br label %281

281:                                              ; preds = %274, %268
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @MAX_NB_ARGS, align 8
  %286 = icmp ult i64 %284, %285
  br i1 %286, label %287, label %302

287:                                              ; preds = %281
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp sge i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %287
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %299, align 8
  br label %302

302:                                              ; preds = %297, %287, %281
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %304 = load i8*, i8** %11, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 0
  %306 = load i8, i8* %305, align 1
  %307 = call i32 @execute_code(%struct.TYPE_16__* %303, i8 signext %306)
  store i32 %307, i32* %14, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %302
  %310 = load i32, i32* %14, align 4
  store i32 %310, i32* %5, align 4
  br label %346

311:                                              ; preds = %302
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  store i32 128, i32* %313, align 4
  br label %314

314:                                              ; preds = %311, %267, %264, %263, %244
  br label %331

315:                                              ; preds = %119
  %316 = load i8*, i8** %11, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 0
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 14
  br i1 %320, label %327, label %321

321:                                              ; preds = %315
  %322 = load i8*, i8** %11, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 0
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 27
  br i1 %326, label %327, label %330

327:                                              ; preds = %321, %315
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  store i32 128, i32* %329, align 4
  br label %330

330:                                              ; preds = %327, %321
  br label %331

331:                                              ; preds = %119, %330, %314, %198, %177
  %332 = load i8*, i8** %11, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %11, align 8
  br label %115

334:                                              ; preds = %115
  %335 = load i32*, i32** %8, align 8
  store i32 1, i32* %335, align 4
  %336 = load i8*, i8** %7, align 8
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 5
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = call i32 @av_frame_ref(i8* %336, %struct.TYPE_17__* %339)
  store i32 %340, i32* %14, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %334
  %343 = load i32, i32* %14, align 4
  store i32 %343, i32* %5, align 4
  br label %346

344:                                              ; preds = %334
  %345 = load i32, i32* %12, align 4
  store i32 %345, i32* %5, align 4
  br label %346

346:                                              ; preds = %344, %342, %309, %36
  %347 = load i32, i32* %5, align 4
  ret i32 %347
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_palette(i32*) #1

declare dso_local i32 @erase_screen(%struct.TYPE_16__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @draw_char(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @hscroll(%struct.TYPE_16__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i64) #1

declare dso_local i32 @execute_code(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
