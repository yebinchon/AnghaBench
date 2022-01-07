; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_fw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i64, i32*, i32, i64*, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@ticker_spacer_default = common dso_local global i64 0, align 8
@ticker_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_ticker_smooth_fw(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @utf8len(i64 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ult i64 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %252

31:                                               ; preds = %1
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %32, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ule i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %31
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @utf8cpy(i8* %45, i64 %48, i64 %51, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %42
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i64*, i64** %66, align 8
  store i64 0, i64* %67, align 8
  store i32 1, i32* %8, align 4
  br label %252

68:                                               ; preds = %31
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %126, label %73

73:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %252

83:                                               ; preds = %73
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = udiv i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @utf8cpy(i8* %93, i64 %96, i64 %99, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @strlcat(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %83
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %5, align 4
  %116 = mul i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %116, %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %113, %83
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 6
  %125 = load i64*, i64** %124, align 8
  store i64 0, i64* %125, align 8
  store i32 1, i32* %8, align 4
  br label %252

126:                                              ; preds = %68
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 9
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load i64, i64* @ticker_spacer_default, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 9
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 9
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @utf8len(i64 %138)
  store i64 %139, i64* %4, align 8
  %140 = load i64, i64* %4, align 8
  %141 = icmp ult i64 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %252

143:                                              ; preds = %135
  %144 = load i64, i64* %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = mul i64 %144, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %7, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %204 [
    i32 128, label %152
    i32 129, label %203
  ]

152:                                              ; preds = %143
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i64, i64* %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i64, i64* %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  %166 = load i64*, i64** %165, align 8
  %167 = call i32 @menu_animation_ticker_smooth_loop_fw(i32 %155, i32 %156, i64 %157, i32 %158, i64 %159, i32 %160, i32 %163, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i64* %166)
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @build_ticker_loop_string(i64 %170, i64 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i8* %182, i64 %185)
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %152
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %16, align 4
  %194 = add i32 %192, %193
  %195 = load i32, i32* %18, align 4
  %196 = add i32 %194, %195
  %197 = load i32, i32* %5, align 4
  %198 = mul i32 %196, %197
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  store i32 %198, i32* %201, align 4
  br label %202

202:                                              ; preds = %191, %152
  br label %251

203:                                              ; preds = %143
  br label %204

204:                                              ; preds = %143, %203
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  store i8 0, i8* %208, align 1
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i64, i64* %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 6
  %220 = load i64*, i64** %219, align 8
  %221 = call i32 @menu_animation_ticker_smooth_generic_fw(i32 %211, i32 %212, i64 %213, i32 %214, i32 %217, i32* %19, i32* %20, i64* %220)
  %222 = load i32, i32* %20, align 4
  %223 = icmp ugt i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %204
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %19, align 4
  %235 = call i64 @utf8skip(i64 %233, i32 %234)
  %236 = load i32, i32* %20, align 4
  %237 = call i32 @utf8cpy(i8* %227, i64 %230, i64 %235, i32 %236)
  br label %238

238:                                              ; preds = %224, %204
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %5, align 4
  %246 = mul i32 %244, %245
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  store i32 %246, i32* %249, align 4
  br label %250

250:                                              ; preds = %243, %238
  br label %251

251:                                              ; preds = %250, %202
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* @ticker_is_active, align 4
  br label %252

252:                                              ; preds = %251, %142, %122, %82, %64, %30
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %252
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 6
  %258 = load i64*, i64** %257, align 8
  store i64 0, i64* %258, align 8
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %255
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  store i8 0, i8* %267, align 1
  br label %268

268:                                              ; preds = %263, %255
  br label %269

269:                                              ; preds = %268, %252
  %270 = load i32, i32* %9, align 4
  ret i32 %270
}

declare dso_local i64 @utf8len(i64) #1

declare dso_local i32 @utf8cpy(i8*, i64, i64, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @menu_animation_ticker_smooth_loop_fw(i32, i32, i64, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @build_ticker_loop_string(i64, i64, i32, i32, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @menu_animation_ticker_smooth_generic_fw(i32, i32, i64, i32, i32, i32*, i32*, i64*) #1

declare dso_local i64 @utf8skip(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
