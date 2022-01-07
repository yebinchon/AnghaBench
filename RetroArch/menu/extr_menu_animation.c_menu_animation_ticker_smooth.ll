; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i8*, i32*, i8*, i32, i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@ticker_spacer_default = common dso_local global i8* null, align 8
@ticker_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_ticker_smooth(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @string_is_empty(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %38, %33, %1
  br label %370

54:                                               ; preds = %48, %43
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = call i32 @menu_animation_ticker_smooth_fw(%struct.TYPE_4__* %60)
  store i32 %61, i32* %2, align 4
  br label %401

62:                                               ; preds = %54
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @utf8len(i8* %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ult i64 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %370

70:                                               ; preds = %62
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @calloc(i64 %71, i32 4)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %370

77:                                               ; preds = %70
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %11, align 8
  store i64 0, i64* %4, align 8
  br label %81

81:                                               ; preds = %107, %77
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @font_driver_get_message_width(i32 %88, i8* %89, i32 1, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %370

97:                                               ; preds = %85
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i8* @utf8skip(i8* %105, i32 1)
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i64, i64* %4, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %4, align 8
  br label %81

110:                                              ; preds = %81
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ule i32 %111, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %110
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @utf8cpy(i8* %119, i32 %122, i8* %125, i32 %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %116
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %116
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 8
  %141 = load i64*, i64** %140, align 8
  store i64 0, i64* %141, align 8
  store i32 1, i32* %12, align 4
  br label %370

142:                                              ; preds = %110
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 12
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %230, label %147

147:                                              ; preds = %142
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 11
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @font_driver_get_message_width(i32 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %370

158:                                              ; preds = %147
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %18, align 4
  %163 = mul nsw i32 3, %162
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %370

166:                                              ; preds = %158
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %18, align 4
  %171 = mul nsw i32 3, %170
  %172 = sub nsw i32 %169, %171
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %166, %192
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %17, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ugt i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %173
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %17, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sub i32 %190, %189
  store i32 %191, i32* %16, align 4
  br label %195

192:                                              ; preds = %173
  %193 = load i32, i32* %17, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %173

195:                                              ; preds = %184
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 4
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = call i32 @utf8cpy(i8* %198, i32 %201, i8* %204, i32 %205)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 4
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @strlcat(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %212)
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %226

218:                                              ; preds = %195
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %18, align 4
  %221 = mul nsw i32 3, %220
  %222 = add i32 %219, %221
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  store i32 %222, i32* %225, align 4
  br label %226

226:                                              ; preds = %218, %195
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 8
  %229 = load i64*, i64** %228, align 8
  store i64 0, i64* %229, align 8
  store i32 1, i32* %12, align 4
  br label %370

230:                                              ; preds = %142
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 6
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load i8*, i8** @ticker_spacer_default, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 6
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %235, %230
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @utf8len(i8* %242)
  store i64 %243, i64* %6, align 8
  %244 = load i64, i64* %6, align 8
  %245 = icmp ult i64 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  br label %370

247:                                              ; preds = %239
  %248 = load i64, i64* %6, align 8
  %249 = call i64 @calloc(i64 %248, i32 4)
  %250 = inttoptr i64 %249 to i32*
  store i32* %250, i32** %10, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  br label %370

254:                                              ; preds = %247
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 6
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %11, align 8
  store i64 0, i64* %4, align 8
  br label %258

258:                                              ; preds = %284, %254
  %259 = load i64, i64* %4, align 8
  %260 = load i64, i64* %6, align 8
  %261 = icmp ult i64 %259, %260
  br i1 %261, label %262, label %287

262:                                              ; preds = %258
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 10
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @font_driver_get_message_width(i32 %265, i8* %266, i32 1, i32 %269)
  store i32 %270, i32* %19, align 4
  %271 = load i32, i32* %19, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %262
  br label %370

274:                                              ; preds = %262
  %275 = load i32, i32* %19, align 4
  %276 = load i32*, i32** %10, align 8
  %277 = load i64, i64* %4, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32 %275, i32* %278, align 4
  %279 = load i32, i32* %19, align 4
  %280 = load i32, i32* %8, align 4
  %281 = add i32 %280, %279
  store i32 %281, i32* %8, align 4
  %282 = load i8*, i8** %11, align 8
  %283 = call i8* @utf8skip(i8* %282, i32 1)
  store i8* %283, i8** %11, align 8
  br label %284

284:                                              ; preds = %274
  %285 = load i64, i64* %4, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %4, align 8
  br label %258

287:                                              ; preds = %258
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 8
  switch i32 %290, label %331 [
    i32 128, label %291
    i32 129, label %330
  ]

291:                                              ; preds = %287
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = load i32*, i32** %9, align 8
  %296 = load i64, i64* %5, align 8
  %297 = load i32*, i32** %10, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 8
  %306 = load i64*, i64** %305, align 8
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 5
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @menu_animation_ticker_smooth_loop(i32 %294, i32* %295, i64 %296, i32* %297, i64 %298, i32 %299, i32 %300, i32 %303, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i64* %306, i32* %309)
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 6
  %316 = load i8*, i8** %315, align 8
  %317 = load i32, i32* %20, align 4
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %23, align 4
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* %25, align 4
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 4
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @build_ticker_loop_string(i8* %313, i8* %316, i32 %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i8* %325, i32 %328)
  br label %369

330:                                              ; preds = %287
  br label %331

331:                                              ; preds = %287, %330
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 4
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 0
  store i8 0, i8* %335, align 1
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 9
  %338 = load i32, i32* %337, align 8
  %339 = load i32*, i32** %9, align 8
  %340 = load i64, i64* %5, align 8
  %341 = load i32, i32* %7, align 4
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 8
  %347 = load i64*, i64** %346, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 5
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @menu_animation_ticker_smooth_generic(i32 %338, i32* %339, i64 %340, i32 %341, i32 %344, i32* %26, i32* %27, i64* %347, i32* %350)
  %352 = load i32, i32* %27, align 4
  %353 = icmp ugt i32 %352, 0
  br i1 %353, label %354, label %368

354:                                              ; preds = %331
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 4
  %357 = load i8*, i8** %356, align 8
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = load i32, i32* %26, align 4
  %365 = call i8* @utf8skip(i8* %363, i32 %364)
  %366 = load i32, i32* %27, align 4
  %367 = call i32 @utf8cpy(i8* %357, i32 %360, i8* %365, i32 %366)
  br label %368

368:                                              ; preds = %354, %331
  br label %369

369:                                              ; preds = %368, %291
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* @ticker_is_active, align 4
  br label %370

370:                                              ; preds = %369, %273, %253, %246, %226, %165, %157, %138, %96, %76, %69, %53
  %371 = load i32*, i32** %9, align 8
  %372 = icmp ne i32* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load i32*, i32** %9, align 8
  %375 = call i32 @free(i32* %374)
  store i32* null, i32** %9, align 8
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i32*, i32** %10, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i32*, i32** %10, align 8
  %381 = call i32 @free(i32* %380)
  store i32* null, i32** %10, align 8
  br label %382

382:                                              ; preds = %379, %376
  %383 = load i32, i32* %12, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %399, label %385

385:                                              ; preds = %382
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 8
  %388 = load i64*, i64** %387, align 8
  store i64 0, i64* %388, align 8
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp sgt i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %385
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 4
  %396 = load i8*, i8** %395, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 0
  store i8 0, i8* %397, align 1
  br label %398

398:                                              ; preds = %393, %385
  br label %399

399:                                              ; preds = %398, %382
  %400 = load i32, i32* %13, align 4
  store i32 %400, i32* %2, align 4
  br label %401

401:                                              ; preds = %399, %59
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @menu_animation_ticker_smooth_fw(%struct.TYPE_4__*) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i8* @utf8skip(i8*, i32) #1

declare dso_local i32 @utf8cpy(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @menu_animation_ticker_smooth_loop(i32, i32*, i64, i32*, i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @build_ticker_loop_string(i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @menu_animation_ticker_smooth_generic(i32, i32*, i64, i32, i32, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
