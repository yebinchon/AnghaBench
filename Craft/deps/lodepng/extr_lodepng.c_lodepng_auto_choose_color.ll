; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_auto_choose_color.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_auto_choose_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32*, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i64, i64 }

@LAC_AUTO_NO_NIBBLES = common dso_local global i64 0, align 8
@LAC_AUTO_NO_NIBBLES_NO_PALETTE = common dso_local global i64 0, align 8
@LAC_AUTO_NO_PALETTE = common dso_local global i64 0, align 8
@LAC_ALPHA = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i8* null, align 8
@LCT_GREY = common dso_local global i8* null, align 8
@LCT_PALETTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_auto_choose_color(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_13__* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @LAC_AUTO_NO_NIBBLES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @LAC_AUTO_NO_NIBBLES_NO_PALETTE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %6
  %34 = phi i1 [ true, %6 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %16, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @LAC_AUTO_NO_PALETTE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @LAC_AUTO_NO_NIBBLES_NO_PALETTE, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i1 [ true, %33 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @LAC_ALPHA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LCT_RGBA, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %428

62:                                               ; preds = %55, %49
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %65 = call i32 @color_profile_init(%struct.TYPE_14__* %14, %struct.TYPE_13__* %64)
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @LAC_ALPHA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %63
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul i32 %76, %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = call i32 @get_color_profile(%struct.TYPE_14__* %14, i8* %75, i32 %78, %struct.TYPE_13__* %79, i32 0)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %123, label %83

83:                                               ; preds = %74
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @LAC_ALPHA, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 12
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %122, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LCT_RGBA, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i8*, i8** @LCT_RGB, align 8
  br label %101

99:                                               ; preds = %91
  %100 = load i8*, i8** @LCT_GREY, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i8* [ %98, %97 ], [ %100, %99 ]
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @setColorKeyFrom16bit(%struct.TYPE_13__* %110, i32 %112, i32 %114, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %109, %101
  br label %122

122:                                              ; preds = %121, %87
  br label %376

123:                                              ; preds = %83, %74
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %375, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @LAC_ALPHA, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %375

130:                                              ; preds = %126
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 13
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %184

136:                                              ; preds = %130
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i32 16, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 12
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 11
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* @LCT_RGBA, align 8
  br label %150

148:                                              ; preds = %142
  %149 = load i64, i64* @LCT_GREY_ALPHA, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i64 [ %147, %146 ], [ %149, %148 ]
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %183

154:                                              ; preds = %136
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 11
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i8*, i8** @LCT_RGB, align 8
  br label %162

160:                                              ; preds = %154
  %161 = load i8*, i8** @LCT_GREY, align 8
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i8* [ %159, %158 ], [ %161, %160 ]
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 10
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %162
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @setColorKeyFrom16bit(%struct.TYPE_13__* %171, i32 %173, i32 %175, i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %170, %162
  br label %183

183:                                              ; preds = %182, %150
  br label %374

184:                                              ; preds = %130
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %18, align 4
  %191 = icmp ule i32 %190, 256
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32, i32* %18, align 4
  %194 = mul i32 %193, 2
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %11, align 4
  %197 = mul i32 %195, %196
  %198 = icmp ult i32 %194, %197
  br label %199

199:                                              ; preds = %192, %189, %184
  %200 = phi i1 [ false, %189 ], [ false, %184 ], [ %198, %192 ]
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ule i32 %202, 2
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %216

205:                                              ; preds = %199
  %206 = load i32, i32* %18, align 4
  %207 = icmp ule i32 %206, 4
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %214

209:                                              ; preds = %205
  %210 = load i32, i32* %18, align 4
  %211 = icmp ule i32 %210, 16
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 4, i32 8
  br label %214

214:                                              ; preds = %209, %208
  %215 = phi i32 [ 2, %208 ], [ %213, %209 ]
  br label %216

216:                                              ; preds = %214, %204
  %217 = phi i32 [ 1, %204 ], [ %215, %214 ]
  store i32 %217, i32* %20, align 4
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 11
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 12
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  %225 = xor i1 %224, true
  br label %226

226:                                              ; preds = %221, %216
  %227 = phi i1 [ false, %216 ], [ %225, %221 ]
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %19, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %21, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %325

234:                                              ; preds = %231, %226
  %235 = load i32, i32* %19, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %234
  %238 = load i32, i32* %21, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 8
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %20, align 4
  %244 = icmp ule i32 %242, %243
  br i1 %244, label %245, label %269

245:                                              ; preds = %240, %234
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %22, align 4
  %248 = load i8*, i8** @LCT_GREY, align 8
  %249 = ptrtoint i8* %248 to i64
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  store i64 %249, i64* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 10
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %245
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %261 = load i32, i32* %22, align 4
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* %22, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @setColorKeyFrom16bit(%struct.TYPE_13__* %260, i32 %261, i32 %262, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %259, %245
  br label %324

269:                                              ; preds = %240, %237
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 9
  %271 = load i8*, i8** %270, align 8
  store i8* %271, i8** %24, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %273 = call i32 @lodepng_palette_clear(%struct.TYPE_13__* %272)
  store i32 0, i32* %23, align 4
  br label %274

274:                                              ; preds = %314, %269
  %275 = load i32, i32* %23, align 4
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp ult i32 %275, %277
  br i1 %278, label %279, label %317

279:                                              ; preds = %274
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %281 = load i8*, i8** %24, align 8
  %282 = load i32, i32* %23, align 4
  %283 = mul i32 %282, 4
  %284 = add i32 %283, 0
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %281, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = load i8*, i8** %24, align 8
  %289 = load i32, i32* %23, align 4
  %290 = mul i32 %289, 4
  %291 = add i32 %290, 1
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %288, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = load i8*, i8** %24, align 8
  %296 = load i32, i32* %23, align 4
  %297 = mul i32 %296, 4
  %298 = add i32 %297, 2
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %295, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = load i8*, i8** %24, align 8
  %303 = load i32, i32* %23, align 4
  %304 = mul i32 %303, 4
  %305 = add i32 %304, 3
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %302, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = call i32 @lodepng_palette_add(%struct.TYPE_13__* %280, i8 zeroext %287, i8 zeroext %294, i8 zeroext %301, i8 zeroext %308)
  store i32 %309, i32* %15, align 4
  %310 = load i32, i32* %15, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %279
  br label %317

313:                                              ; preds = %279
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %23, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %23, align 4
  br label %274

317:                                              ; preds = %312, %274
  %318 = load i64, i64* @LCT_PALETTE, align 8
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  store i64 %318, i64* %320, align 8
  %321 = load i32, i32* %20, align 4
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 8
  br label %324

324:                                              ; preds = %317, %268
  br label %373

325:                                              ; preds = %231
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  store i32 8, i32* %327, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 12
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 11
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i64, i64* @LCT_RGBA, align 8
  br label %339

337:                                              ; preds = %331
  %338 = load i64, i64* @LCT_GREY_ALPHA, align 8
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi i64 [ %336, %335 ], [ %338, %337 ]
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  store i64 %340, i64* %342, align 8
  br label %372

343:                                              ; preds = %325
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 11
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i8*, i8** @LCT_RGB, align 8
  br label %351

349:                                              ; preds = %343
  %350 = load i8*, i8** @LCT_GREY, align 8
  br label %351

351:                                              ; preds = %349, %347
  %352 = phi i8* [ %348, %347 ], [ %350, %349 ]
  %353 = ptrtoint i8* %352 to i64
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  store i64 %353, i64* %355, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 10
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %351
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @setColorKeyFrom16bit(%struct.TYPE_13__* %360, i32 %362, i32 %364, i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %359, %351
  br label %372

372:                                              ; preds = %371, %339
  br label %373

373:                                              ; preds = %372, %324
  br label %374

374:                                              ; preds = %373, %183
  br label %375

375:                                              ; preds = %374, %126, %123
  br label %376

376:                                              ; preds = %375, %122
  %377 = call i32 @color_profile_cleanup(%struct.TYPE_14__* %14)
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @LCT_PALETTE, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %415

383:                                              ; preds = %376
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = icmp eq i64 %386, %389
  br i1 %390, label %391, label %415

391:                                              ; preds = %383
  store i64 0, i64* %25, align 8
  br label %392

392:                                              ; preds = %411, %391
  %393 = load i64, i64* %25, align 8
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = mul nsw i64 %396, 4
  %398 = icmp ult i64 %393, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %392
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 3
  %402 = load i32*, i32** %401, align 8
  %403 = load i64, i64* %25, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 3
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* %25, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  store i32 %405, i32* %410, align 4
  br label %411

411:                                              ; preds = %399
  %412 = load i64, i64* %25, align 8
  %413 = add i64 %412, 1
  store i64 %413, i64* %25, align 8
  br label %392

414:                                              ; preds = %392
  br label %415

415:                                              ; preds = %414, %383, %376
  %416 = load i32, i32* %16, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %415
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = icmp slt i32 %421, 8
  br i1 %422, label %423, label %426

423:                                              ; preds = %418
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 1
  store i32 8, i32* %425, align 8
  br label %426

426:                                              ; preds = %423, %418, %415
  %427 = load i32, i32* %15, align 4
  store i32 %427, i32* %7, align 4
  br label %428

428:                                              ; preds = %426, %61
  %429 = load i32, i32* %7, align 4
  ret i32 %429
}

declare dso_local i32 @color_profile_init(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @get_color_profile(%struct.TYPE_14__*, i8*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @setColorKeyFrom16bit(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @lodepng_palette_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @lodepng_palette_add(%struct.TYPE_13__*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @color_profile_cleanup(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
