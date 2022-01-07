; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_preProcessScanlines.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_preProcessScanlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i32, i32, %struct.TYPE_3__*, i32*)* @preProcessScanlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preProcessScanlines(i8** %0, i64* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_3__* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [7 x i32], align 16
  %19 = alloca [7 x i32], align 16
  %20 = alloca [8 x i64], align 16
  %21 = alloca [8 x i64], align 16
  %22 = alloca [8 x i64], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i32* %6, i32** %14, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @lodepng_get_bpp(i32* %27)
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %130

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %15, align 4
  %38 = mul i32 %36, %37
  %39 = add i32 %38, 7
  %40 = udiv i32 %39, 8
  %41 = mul i32 %35, %40
  %42 = add i32 %34, %41
  %43 = zext i32 %42 to i64
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @lodepng_malloc(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8**, i8*** %8, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %33
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 83, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %53, %33
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %129, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %64, label %118

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %15, align 4
  %67 = mul i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %15, align 4
  %70 = mul i32 %68, %69
  %71 = add i32 %70, 7
  %72 = udiv i32 %71, 8
  %73 = mul i32 %72, 8
  %74 = icmp ne i32 %67, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %15, align 4
  %79 = mul i32 %77, %78
  %80 = add i32 %79, 7
  %81 = udiv i32 %80, 8
  %82 = mul i32 %76, %81
  %83 = zext i32 %82 to i64
  %84 = call i64 @lodepng_malloc(i64 %83)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  store i32 83, i32* %16, align 4
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %17, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %15, align 4
  %97 = mul i32 %95, %96
  %98 = add i32 %97, 7
  %99 = udiv i32 %98, 8
  %100 = mul i32 %99, 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %15, align 4
  %103 = mul i32 %101, %102
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @addPaddingBits(i8* %93, i8* %94, i32 %100, i32 %103, i32 %104)
  %106 = load i8**, i8*** %8, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @filter(i8* %107, i8* %108, i32 %109, i32 %110, i32* %112, i32* %113)
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %92, %89
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 @lodepng_free(i8* %116)
  br label %128

118:                                              ; preds = %64, %61
  %119 = load i8**, i8*** %8, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @filter(i8* %120, i8* %121, i32 %122, i32 %123, i32* %125, i32* %126)
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %118, %115
  br label %129

129:                                              ; preds = %128, %58
  br label %285

130:                                              ; preds = %7
  %131 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %132 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 0
  %133 = getelementptr inbounds [8 x i64], [8 x i64]* %20, i64 0, i64 0
  %134 = getelementptr inbounds [8 x i64], [8 x i64]* %21, i64 0, i64 0
  %135 = getelementptr inbounds [8 x i64], [8 x i64]* %22, i64 0, i64 0
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @Adam7_getpassvalues(i32* %131, i32* %132, i64* %133, i64* %134, i64* %135, i32 %136, i32 %137, i32 %138)
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %20, i64 0, i64 7
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %9, align 8
  store i64 %141, i64* %142, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @lodepng_malloc(i64 %144)
  %146 = inttoptr i64 %145 to i8*
  %147 = load i8**, i8*** %8, align 8
  store i8* %146, i8** %147, align 8
  %148 = load i8**, i8*** %8, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %130
  store i32 83, i32* %16, align 4
  br label %152

152:                                              ; preds = %151, %130
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %22, i64 0, i64 7
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @lodepng_malloc(i64 %154)
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %23, align 8
  %157 = load i8*, i8** %23, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds [8 x i64], [8 x i64]* %22, i64 0, i64 7
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 83, i32* %16, align 4
  br label %164

164:                                              ; preds = %163, %159, %152
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %282, label %167

167:                                              ; preds = %164
  %168 = load i8*, i8** %23, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @Adam7_interlace(i8* %168, i8* %169, i32 %170, i32 %171, i32 %172)
  store i32 0, i32* %24, align 4
  br label %174

174:                                              ; preds = %278, %167
  %175 = load i32, i32* %24, align 4
  %176 = icmp ult i32 %175, 7
  br i1 %176, label %177, label %281

177:                                              ; preds = %174
  %178 = load i32, i32* %15, align 4
  %179 = icmp ult i32 %178, 8
  br i1 %179, label %180, label %247

180:                                              ; preds = %177
  %181 = load i32, i32* %24, align 4
  %182 = add i32 %181, 1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i64], [8 x i64]* %21, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %24, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %21, i64 0, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %185, %189
  %191 = call i64 @lodepng_malloc(i64 %190)
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %25, align 8
  %193 = load i8*, i8** %25, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %180
  %196 = call i32 @ERROR_BREAK(i32 83)
  br label %197

197:                                              ; preds = %195, %180
  %198 = load i8*, i8** %25, align 8
  %199 = load i8*, i8** %23, align 8
  %200 = load i32, i32* %24, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [8 x i64], [8 x i64]* %22, i64 0, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %199, i64 %203
  %205 = load i32, i32* %24, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %15, align 4
  %210 = mul i32 %208, %209
  %211 = add i32 %210, 7
  %212 = udiv i32 %211, 8
  %213 = mul i32 %212, 8
  %214 = load i32, i32* %24, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %15, align 4
  %219 = mul i32 %217, %218
  %220 = load i32, i32* %24, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @addPaddingBits(i8* %198, i8* %204, i32 %213, i32 %219, i32 %223)
  %225 = load i8**, i8*** %8, align 8
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* %24, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [8 x i64], [8 x i64]* %20, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds i8, i8* %226, i64 %230
  %232 = load i8*, i8** %25, align 8
  %233 = load i32, i32* %24, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %24, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load i32*, i32** %14, align 8
  %244 = call i32 @filter(i8* %231, i8* %232, i32 %236, i32 %240, i32* %242, i32* %243)
  store i32 %244, i32* %16, align 4
  %245 = load i8*, i8** %25, align 8
  %246 = call i32 @lodepng_free(i8* %245)
  br label %273

247:                                              ; preds = %177
  %248 = load i8**, i8*** %8, align 8
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %24, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [8 x i64], [8 x i64]* %20, i64 0, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i8, i8* %249, i64 %253
  %255 = load i8*, i8** %23, align 8
  %256 = load i32, i32* %24, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %21, i64 0, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i8, i8* %255, i64 %259
  %261 = load i32, i32* %24, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %24, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [7 x i32], [7 x i32]* %19, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 1
  %271 = load i32*, i32** %14, align 8
  %272 = call i32 @filter(i8* %254, i8* %260, i32 %264, i32 %268, i32* %270, i32* %271)
  store i32 %272, i32* %16, align 4
  br label %273

273:                                              ; preds = %247, %197
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %281

277:                                              ; preds = %273
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %24, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %24, align 4
  br label %174

281:                                              ; preds = %276, %174
  br label %282

282:                                              ; preds = %281, %164
  %283 = load i8*, i8** %23, align 8
  %284 = call i32 @lodepng_free(i8* %283)
  br label %285

285:                                              ; preds = %282, %129
  %286 = load i32, i32* %16, align 4
  ret i32 %286
}

declare dso_local i32 @lodepng_get_bpp(i32*) #1

declare dso_local i64 @lodepng_malloc(i64) #1

declare dso_local i32 @addPaddingBits(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @filter(i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @lodepng_free(i8*) #1

declare dso_local i32 @Adam7_getpassvalues(i32*, i32*, i64*, i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @Adam7_interlace(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ERROR_BREAK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
