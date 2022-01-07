; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_get_color_profile.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_get_color_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64, %struct.TYPE_7__*, i32)* @get_color_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_color_profile(%struct.TYPE_8__* %0, i8* %1, i64 %2, %struct.TYPE_7__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %381

31:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %377, %31
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %380

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = call i32 @getPixelColorRGBA16(i16* %13, i16* %14, i16* %15, i16* %16, i8* %37, i64 %38, %struct.TYPE_7__* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %380

44:                                               ; preds = %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %44
  %50 = load i16, i16* %13, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 255
  %53 = load i16, i16* %13, align 2
  %54 = zext i16 %53 to i32
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %76, label %58

58:                                               ; preds = %49
  %59 = load i16, i16* %14, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 255
  %62 = load i16, i16* %14, align 2
  %63 = zext i16 %62 to i32
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load i16, i16* %15, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 255
  %71 = load i16, i16* %15, align 2
  %72 = zext i16 %71 to i32
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %67, %58, %49
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %67, %44
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %85
  %91 = load i16, i16* %13, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* %14, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i16, i16* %13, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* %15, align 2
  %100 = zext i16 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96, %90
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  store i32 1, i32* %104, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %102, %96, %85
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %185, label %114

114:                                              ; preds = %109
  %115 = load i16, i16* %16, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp ne i32 %116, 65535
  br i1 %117, label %118, label %185

118:                                              ; preds = %114
  %119 = load i16, i16* %16, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %177

122:                                              ; preds = %118
  %123 = load i64, i64* %8, align 8
  %124 = icmp ugt i64 %123, 16
  br i1 %124, label %125, label %177

125:                                              ; preds = %122
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %125
  %131 = load i16, i16* %13, align 2
  %132 = zext i16 %131 to i32
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 8
  %135 = load i16, i16* %134, align 8
  %136 = zext i16 %135 to i32
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %177, label %138

138:                                              ; preds = %130
  %139 = load i16, i16* %14, align 2
  %140 = zext i16 %139 to i32
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  %143 = load i16, i16* %142, align 2
  %144 = zext i16 %143 to i32
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %177, label %146

146:                                              ; preds = %138
  %147 = load i16, i16* %15, align 2
  %148 = zext i16 %147 to i32
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 10
  %151 = load i16, i16* %150, align 4
  %152 = zext i16 %151 to i32
  %153 = icmp ne i32 %148, %152
  br i1 %153, label %177, label %154

154:                                              ; preds = %146, %125
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %176, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 7
  store i32 1, i32* %166, align 4
  %167 = load i16, i16* %13, align 2
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 8
  store i16 %167, i16* %169, align 8
  %170 = load i16, i16* %14, align 2
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 9
  store i16 %170, i16* %172, align 2
  %173 = load i16, i16* %15, align 2
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 10
  store i16 %173, i16* %175, align 4
  br label %176

176:                                              ; preds = %164, %159, %154
  br label %184

177:                                              ; preds = %146, %138, %130, %122, %118
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 11
  store i32 1, i32* %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 6
  store i32 1, i32* %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32 1, i32* %183, align 8
  br label %184

184:                                              ; preds = %177, %176
  br label %185

185:                                              ; preds = %184, %114, %109
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %230, label %190

190:                                              ; preds = %185
  %191 = load i16, i16* %16, align 2
  %192 = zext i16 %191 to i32
  %193 = icmp eq i32 %192, 65535
  br i1 %193, label %194, label %230

194:                                              ; preds = %190
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %194
  %200 = load i16, i16* %13, align 2
  %201 = zext i16 %200 to i32
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 8
  %204 = load i16, i16* %203, align 8
  %205 = zext i16 %204 to i32
  %206 = icmp eq i32 %201, %205
  br i1 %206, label %207, label %230

207:                                              ; preds = %199
  %208 = load i16, i16* %14, align 2
  %209 = zext i16 %208 to i32
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 9
  %212 = load i16, i16* %211, align 2
  %213 = zext i16 %212 to i32
  %214 = icmp eq i32 %209, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %207
  %216 = load i16, i16* %15, align 2
  %217 = zext i16 %216 to i32
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 10
  %220 = load i16, i16* %219, align 4
  %221 = zext i16 %220 to i32
  %222 = icmp eq i32 %217, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 11
  store i32 1, i32* %225, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 6
  store i32 1, i32* %227, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  store i32 1, i32* %229, align 8
  br label %230

230:                                              ; preds = %223, %215, %207, %199, %194, %190, %185
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %257, label %235

235:                                              ; preds = %230
  %236 = load i16, i16* %13, align 2
  %237 = trunc i16 %236 to i8
  %238 = call i32 @getValueRequiredBits(i8 zeroext %237)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 12
  %242 = load i32, i32* %241, align 4
  %243 = icmp ugt i32 %239, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %235
  %245 = load i32, i32* %17, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 12
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %244, %235
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 12
  %251 = load i32, i32* %250, align 4
  %252 = icmp uge i32 %251, 8
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  store i32 1, i32* %255, align 8
  br label %256

256:                                              ; preds = %253, %248
  br label %257

257:                                              ; preds = %256, %230
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %350, label %262

262:                                              ; preds = %257
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 16
  %265 = load i16, i16* %13, align 2
  %266 = trunc i16 %265 to i8
  %267 = load i16, i16* %14, align 2
  %268 = trunc i16 %267 to i8
  %269 = load i16, i16* %15, align 2
  %270 = trunc i16 %269 to i8
  %271 = load i16, i16* %16, align 2
  %272 = trunc i16 %271 to i8
  %273 = call i32 @color_tree_has(i32* %264, i8 zeroext %266, i8 zeroext %268, i8 zeroext %270, i8 zeroext %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %349, label %275

275:                                              ; preds = %262
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 16
  %278 = load i16, i16* %13, align 2
  %279 = trunc i16 %278 to i8
  %280 = load i16, i16* %14, align 2
  %281 = trunc i16 %280 to i8
  %282 = load i16, i16* %15, align 2
  %283 = trunc i16 %282 to i8
  %284 = load i16, i16* %16, align 2
  %285 = trunc i16 %284 to i8
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 13
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @color_tree_add(i32* %277, i8 zeroext %279, i8 zeroext %281, i8 zeroext %283, i8 zeroext %285, i32 %288)
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 13
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %292, 256
  br i1 %293, label %294, label %333

294:                                              ; preds = %275
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 14
  %297 = load i8*, i8** %296, align 8
  store i8* %297, i8** %18, align 8
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 13
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %19, align 4
  %301 = load i16, i16* %13, align 2
  %302 = trunc i16 %301 to i8
  %303 = load i8*, i8** %18, align 8
  %304 = load i32, i32* %19, align 4
  %305 = mul i32 %304, 4
  %306 = add i32 %305, 0
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %303, i64 %307
  store i8 %302, i8* %308, align 1
  %309 = load i16, i16* %14, align 2
  %310 = trunc i16 %309 to i8
  %311 = load i8*, i8** %18, align 8
  %312 = load i32, i32* %19, align 4
  %313 = mul i32 %312, 4
  %314 = add i32 %313, 1
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %311, i64 %315
  store i8 %310, i8* %316, align 1
  %317 = load i16, i16* %15, align 2
  %318 = trunc i16 %317 to i8
  %319 = load i8*, i8** %18, align 8
  %320 = load i32, i32* %19, align 4
  %321 = mul i32 %320, 4
  %322 = add i32 %321, 2
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %319, i64 %323
  store i8 %318, i8* %324, align 1
  %325 = load i16, i16* %16, align 2
  %326 = trunc i16 %325 to i8
  %327 = load i8*, i8** %18, align 8
  %328 = load i32, i32* %19, align 4
  %329 = mul i32 %328, 4
  %330 = add i32 %329, 3
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %327, i64 %331
  store i8 %326, i8* %332, align 1
  br label %333

333:                                              ; preds = %294, %275
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 13
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 8
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 15
  %343 = load i32, i32* %342, align 8
  %344 = icmp uge i32 %340, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %333
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 3
  store i32 1, i32* %347, align 4
  br label %348

348:                                              ; preds = %345, %333
  br label %349

349:                                              ; preds = %348, %262
  br label %350

350:                                              ; preds = %349, %257
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %376

355:                                              ; preds = %350
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %376

360:                                              ; preds = %355
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %376

365:                                              ; preds = %360
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %365
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  br label %380

376:                                              ; preds = %370, %365, %360, %355, %350
  br label %377

377:                                              ; preds = %376
  %378 = load i64, i64* %12, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %12, align 8
  br label %32

380:                                              ; preds = %375, %43, %32
  br label %668

381:                                              ; preds = %5
  store i64 0, i64* %12, align 8
  br label %382

382:                                              ; preds = %664, %381
  %383 = load i64, i64* %12, align 8
  %384 = load i64, i64* %8, align 8
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %386, label %667

386:                                              ; preds = %382
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %387 = load i8*, i8** %7, align 8
  %388 = load i64, i64* %12, align 8
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %390 = load i32, i32* %10, align 4
  %391 = call i32 @getPixelColorRGBA8(i8* %20, i8* %21, i8* %22, i8* %23, i8* %387, i64 %388, %struct.TYPE_7__* %389, i32 %390)
  store i32 %391, i32* %11, align 4
  %392 = load i32, i32* %11, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %386
  br label %667

395:                                              ; preds = %386
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %419, label %400

400:                                              ; preds = %395
  %401 = load i8, i8* %20, align 1
  %402 = zext i8 %401 to i32
  %403 = load i8, i8* %21, align 1
  %404 = zext i8 %403 to i32
  %405 = icmp ne i32 %402, %404
  br i1 %405, label %412, label %406

406:                                              ; preds = %400
  %407 = load i8, i8* %20, align 1
  %408 = zext i8 %407 to i32
  %409 = load i8, i8* %22, align 1
  %410 = zext i8 %409 to i32
  %411 = icmp ne i32 %408, %410
  br i1 %411, label %412, label %419

412:                                              ; preds = %406, %400
  %413 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 5
  store i32 1, i32* %414, align 4
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 4
  store i32 1, i32* %416, align 8
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 2
  store i32 1, i32* %418, align 8
  br label %419

419:                                              ; preds = %412, %406, %395
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 8
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %490, label %424

424:                                              ; preds = %419
  %425 = load i8, i8* %23, align 1
  %426 = zext i8 %425 to i32
  %427 = icmp ne i32 %426, 255
  br i1 %427, label %428, label %490

428:                                              ; preds = %424
  %429 = load i8, i8* %23, align 1
  %430 = zext i8 %429 to i32
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %482

432:                                              ; preds = %428
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 7
  %435 = load i32, i32* %434, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %461

437:                                              ; preds = %432
  %438 = load i8, i8* %20, align 1
  %439 = zext i8 %438 to i32
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 8
  %442 = load i16, i16* %441, align 8
  %443 = zext i16 %442 to i32
  %444 = icmp ne i32 %439, %443
  br i1 %444, label %482, label %445

445:                                              ; preds = %437
  %446 = load i8, i8* %21, align 1
  %447 = zext i8 %446 to i32
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 9
  %450 = load i16, i16* %449, align 2
  %451 = zext i16 %450 to i32
  %452 = icmp ne i32 %447, %451
  br i1 %452, label %482, label %453

453:                                              ; preds = %445
  %454 = load i8, i8* %22, align 1
  %455 = zext i8 %454 to i32
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 10
  %458 = load i16, i16* %457, align 4
  %459 = zext i16 %458 to i32
  %460 = icmp ne i32 %455, %459
  br i1 %460, label %482, label %461

461:                                              ; preds = %453, %432
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i32 0, i32 7
  %464 = load i32, i32* %463, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %481, label %466

466:                                              ; preds = %461
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 7
  store i32 1, i32* %468, align 4
  %469 = load i8, i8* %20, align 1
  %470 = zext i8 %469 to i16
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 8
  store i16 %470, i16* %472, align 8
  %473 = load i8, i8* %21, align 1
  %474 = zext i8 %473 to i16
  %475 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 9
  store i16 %474, i16* %476, align 2
  %477 = load i8, i8* %22, align 1
  %478 = zext i8 %477 to i16
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 10
  store i16 %478, i16* %480, align 4
  br label %481

481:                                              ; preds = %466, %461
  br label %489

482:                                              ; preds = %453, %445, %437, %428
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 11
  store i32 1, i32* %484, align 8
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 6
  store i32 1, i32* %486, align 8
  %487 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %487, i32 0, i32 2
  store i32 1, i32* %488, align 8
  br label %489

489:                                              ; preds = %482, %481
  br label %490

490:                                              ; preds = %489, %424, %419
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 6
  %493 = load i32, i32* %492, align 8
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %535, label %495

495:                                              ; preds = %490
  %496 = load i8, i8* %23, align 1
  %497 = zext i8 %496 to i32
  %498 = icmp eq i32 %497, 255
  br i1 %498, label %499, label %535

499:                                              ; preds = %495
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 7
  %502 = load i32, i32* %501, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %535

504:                                              ; preds = %499
  %505 = load i8, i8* %20, align 1
  %506 = zext i8 %505 to i32
  %507 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 8
  %509 = load i16, i16* %508, align 8
  %510 = zext i16 %509 to i32
  %511 = icmp eq i32 %506, %510
  br i1 %511, label %512, label %535

512:                                              ; preds = %504
  %513 = load i8, i8* %21, align 1
  %514 = zext i8 %513 to i32
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 9
  %517 = load i16, i16* %516, align 2
  %518 = zext i16 %517 to i32
  %519 = icmp eq i32 %514, %518
  br i1 %519, label %520, label %535

520:                                              ; preds = %512
  %521 = load i8, i8* %22, align 1
  %522 = zext i8 %521 to i32
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 10
  %525 = load i16, i16* %524, align 4
  %526 = zext i16 %525 to i32
  %527 = icmp eq i32 %522, %526
  br i1 %527, label %528, label %535

528:                                              ; preds = %520
  %529 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i32 0, i32 11
  store i32 1, i32* %530, align 8
  %531 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 6
  store i32 1, i32* %532, align 8
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 2
  store i32 1, i32* %534, align 8
  br label %535

535:                                              ; preds = %528, %520, %512, %504, %499, %495, %490
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %561, label %540

540:                                              ; preds = %535
  %541 = load i8, i8* %20, align 1
  %542 = call i32 @getValueRequiredBits(i8 zeroext %541)
  store i32 %542, i32* %24, align 4
  %543 = load i32, i32* %24, align 4
  %544 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %544, i32 0, i32 12
  %546 = load i32, i32* %545, align 4
  %547 = icmp ugt i32 %543, %546
  br i1 %547, label %548, label %552

548:                                              ; preds = %540
  %549 = load i32, i32* %24, align 4
  %550 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %550, i32 0, i32 12
  store i32 %549, i32* %551, align 4
  br label %552

552:                                              ; preds = %548, %540
  %553 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 12
  %555 = load i32, i32* %554, align 4
  %556 = icmp uge i32 %555, 8
  br i1 %556, label %557, label %560

557:                                              ; preds = %552
  %558 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 2
  store i32 1, i32* %559, align 8
  br label %560

560:                                              ; preds = %557, %552
  br label %561

561:                                              ; preds = %560, %535
  %562 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 3
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %642, label %566

566:                                              ; preds = %561
  %567 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %567, i32 0, i32 16
  %569 = load i8, i8* %20, align 1
  %570 = load i8, i8* %21, align 1
  %571 = load i8, i8* %22, align 1
  %572 = load i8, i8* %23, align 1
  %573 = call i32 @color_tree_has(i32* %568, i8 zeroext %569, i8 zeroext %570, i8 zeroext %571, i8 zeroext %572)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %641, label %575

575:                                              ; preds = %566
  %576 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %577 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %576, i32 0, i32 16
  %578 = load i8, i8* %20, align 1
  %579 = load i8, i8* %21, align 1
  %580 = load i8, i8* %22, align 1
  %581 = load i8, i8* %23, align 1
  %582 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %583 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i32 0, i32 13
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @color_tree_add(i32* %577, i8 zeroext %578, i8 zeroext %579, i8 zeroext %580, i8 zeroext %581, i32 %584)
  %586 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %587 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i32 0, i32 13
  %588 = load i32, i32* %587, align 8
  %589 = icmp slt i32 %588, 256
  br i1 %589, label %590, label %625

590:                                              ; preds = %575
  %591 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 14
  %593 = load i8*, i8** %592, align 8
  store i8* %593, i8** %25, align 8
  %594 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %594, i32 0, i32 13
  %596 = load i32, i32* %595, align 8
  store i32 %596, i32* %26, align 4
  %597 = load i8, i8* %20, align 1
  %598 = load i8*, i8** %25, align 8
  %599 = load i32, i32* %26, align 4
  %600 = mul i32 %599, 4
  %601 = add i32 %600, 0
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds i8, i8* %598, i64 %602
  store i8 %597, i8* %603, align 1
  %604 = load i8, i8* %21, align 1
  %605 = load i8*, i8** %25, align 8
  %606 = load i32, i32* %26, align 4
  %607 = mul i32 %606, 4
  %608 = add i32 %607, 1
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds i8, i8* %605, i64 %609
  store i8 %604, i8* %610, align 1
  %611 = load i8, i8* %22, align 1
  %612 = load i8*, i8** %25, align 8
  %613 = load i32, i32* %26, align 4
  %614 = mul i32 %613, 4
  %615 = add i32 %614, 2
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds i8, i8* %612, i64 %616
  store i8 %611, i8* %617, align 1
  %618 = load i8, i8* %23, align 1
  %619 = load i8*, i8** %25, align 8
  %620 = load i32, i32* %26, align 4
  %621 = mul i32 %620, 4
  %622 = add i32 %621, 3
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds i8, i8* %619, i64 %623
  store i8 %618, i8* %624, align 1
  br label %625

625:                                              ; preds = %590, %575
  %626 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %627 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %626, i32 0, i32 13
  %628 = load i32, i32* %627, align 8
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %627, align 8
  %630 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %631 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %630, i32 0, i32 13
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %634 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %633, i32 0, i32 15
  %635 = load i32, i32* %634, align 8
  %636 = icmp uge i32 %632, %635
  br i1 %636, label %637, label %640

637:                                              ; preds = %625
  %638 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %639 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %638, i32 0, i32 3
  store i32 1, i32* %639, align 4
  br label %640

640:                                              ; preds = %637, %625
  br label %641

641:                                              ; preds = %640, %566
  br label %642

642:                                              ; preds = %641, %561
  %643 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %644 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %643, i32 0, i32 6
  %645 = load i32, i32* %644, align 8
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %663

647:                                              ; preds = %642
  %648 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %649 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %663

652:                                              ; preds = %647
  %653 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %654 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %653, i32 0, i32 4
  %655 = load i32, i32* %654, align 8
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %663

657:                                              ; preds = %652
  %658 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %659 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 8
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %663

662:                                              ; preds = %657
  br label %667

663:                                              ; preds = %657, %652, %647, %642
  br label %664

664:                                              ; preds = %663
  %665 = load i64, i64* %12, align 8
  %666 = add i64 %665, 1
  store i64 %666, i64* %12, align 8
  br label %382

667:                                              ; preds = %662, %394, %382
  br label %668

668:                                              ; preds = %667, %380
  %669 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %670 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 4
  %672 = icmp slt i32 %671, 16
  br i1 %672, label %673, label %692

673:                                              ; preds = %668
  %674 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %675 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %674, i32 0, i32 8
  %676 = load i16, i16* %675, align 8
  %677 = zext i16 %676 to i32
  %678 = mul nsw i32 %677, 257
  %679 = trunc i32 %678 to i16
  store i16 %679, i16* %675, align 8
  %680 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %681 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %680, i32 0, i32 9
  %682 = load i16, i16* %681, align 2
  %683 = zext i16 %682 to i32
  %684 = mul nsw i32 %683, 257
  %685 = trunc i32 %684 to i16
  store i16 %685, i16* %681, align 2
  %686 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %687 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %686, i32 0, i32 10
  %688 = load i16, i16* %687, align 4
  %689 = zext i16 %688 to i32
  %690 = mul nsw i32 %689, 257
  %691 = trunc i32 %690 to i16
  store i16 %691, i16* %687, align 4
  br label %692

692:                                              ; preds = %673, %668
  %693 = load i32, i32* %11, align 4
  ret i32 %693
}

declare dso_local i32 @getPixelColorRGBA16(i16*, i16*, i16*, i16*, i8*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @getValueRequiredBits(i8 zeroext) #1

declare dso_local i32 @color_tree_has(i32*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @color_tree_add(i32*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @getPixelColorRGBA8(i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
