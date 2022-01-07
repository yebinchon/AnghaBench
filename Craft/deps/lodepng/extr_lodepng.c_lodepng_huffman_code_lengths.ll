; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_huffman_code_lengths.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_huffman_code_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_huffman_code_lengths(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 80, i32* %5, align 4
  br label %289

27:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %40, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %28

55:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load i64, i64* %13, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 1, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 1, i32* %76, align 4
  br label %287

77:                                               ; preds = %69
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %106, %80
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 1, i32* %97, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  store i32 1, i32* %104, align 4
  br label %109

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %81

109:                                              ; preds = %93, %81
  br label %286

110:                                              ; preds = %77
  %111 = load i64, i64* %13, align 8
  %112 = mul i64 %111, 2
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 16, %115
  %117 = trunc i64 %116 to i32
  %118 = call i64 @lodepng_malloc(i32 %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %15, align 8
  %120 = load i32, i32* %18, align 4
  %121 = zext i32 %120 to i64
  %122 = mul i64 16, %121
  %123 = trunc i64 %122 to i32
  %124 = call i64 @lodepng_malloc(i32 %123)
  %125 = inttoptr i64 %124 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %16, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %127 = icmp ne %struct.TYPE_13__* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %110
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %130 = icmp ne %struct.TYPE_13__* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %128, %110
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %133 = call i32 @lodepng_free(%struct.TYPE_13__* %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %135 = call i32 @lodepng_free(%struct.TYPE_13__* %134)
  store i32 83, i32* %5, align 4
  br label %289

136:                                              ; preds = %128
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @init_coins(%struct.TYPE_13__* %137, i32 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @init_coins(%struct.TYPE_13__* %140, i32 %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @append_symbol_coins(%struct.TYPE_13__* %143, i32* %144, i64 %145, i64 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i64, i64* %13, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %17, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @sort_coins(%struct.TYPE_13__* %150, i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %232, label %155

155:                                              ; preds = %136
  store i32 0, i32* %19, align 4
  store i32 1, i32* %11, align 4
  br label %156

156:                                              ; preds = %228, %155
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ule i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i1 [ false, %156 ], [ %163, %160 ]
  br i1 %165, label %166, label %231

166:                                              ; preds = %164
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %21, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %16, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %169, %struct.TYPE_13__** %15, align 8
  %170 = load i32, i32* %19, align 4
  store i32 %170, i32* %20, align 4
  %171 = load i32, i32* %17, align 4
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  store i32 %172, i32* %17, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @cleanup_coins(%struct.TYPE_13__* %173, i32 %174)
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @init_coins(%struct.TYPE_13__* %176, i32 %177)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %179

179:                                              ; preds = %203, %166
  %180 = load i32, i32* %10, align 4
  %181 = add i32 %180, 1
  %182 = load i32, i32* %19, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %179
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %186 = load i32, i32* %17, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %17, align 4
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i64 %188
  store %struct.TYPE_13__* %189, %struct.TYPE_13__** %22, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %192 = load i32, i32* %10, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i64 %193
  %195 = call i32 @coin_copy(%struct.TYPE_13__* %190, %struct.TYPE_13__* %194)
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %198 = load i32, i32* %10, align 4
  %199 = add i32 %198, 1
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i64 %200
  %202 = call i32 @add_coins(%struct.TYPE_13__* %196, %struct.TYPE_13__* %201)
  br label %203

203:                                              ; preds = %184
  %204 = load i32, i32* %10, align 4
  %205 = add i32 %204, 2
  store i32 %205, i32* %10, align 4
  br label %179

206:                                              ; preds = %179
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %206
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %212 = load i32, i32* %17, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %213
  %215 = load i32*, i32** %7, align 8
  %216 = load i64, i64* %8, align 8
  %217 = load i64, i64* %12, align 8
  %218 = call i32 @append_symbol_coins(%struct.TYPE_13__* %214, i32* %215, i64 %216, i64 %217)
  store i32 %218, i32* %14, align 4
  %219 = load i64, i64* %13, align 8
  %220 = load i32, i32* %17, align 4
  %221 = zext i32 %220 to i64
  %222 = add i64 %221, %219
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %210, %206
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %226 = load i32, i32* %17, align 4
  %227 = call i32 @sort_coins(%struct.TYPE_13__* %225, i32 %226)
  br label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %11, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %156

231:                                              ; preds = %164
  br label %232

232:                                              ; preds = %231, %136
  %233 = load i32, i32* %14, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %275, label %235

235:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %271, %235
  %237 = load i32, i32* %10, align 4
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %13, align 8
  %240 = sub i64 %239, 1
  %241 = icmp ult i64 %238, %240
  br i1 %241, label %242, label %274

242:                                              ; preds = %236
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %244 = load i32, i32* %10, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i64 %245
  store %struct.TYPE_13__* %246, %struct.TYPE_13__** %23, align 8
  store i32 0, i32* %11, align 4
  br label %247

247:                                              ; preds = %267, %242
  %248 = load i32, i32* %11, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ult i32 %248, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %247
  %255 = load i32*, i32** %6, align 8
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %255, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %254
  %268 = load i32, i32* %11, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %247

270:                                              ; preds = %247
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %10, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %236

274:                                              ; preds = %236
  br label %275

275:                                              ; preds = %274, %232
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %277 = load i32, i32* %18, align 4
  %278 = call i32 @cleanup_coins(%struct.TYPE_13__* %276, i32 %277)
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %280 = call i32 @lodepng_free(%struct.TYPE_13__* %279)
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %282 = load i32, i32* %18, align 4
  %283 = call i32 @cleanup_coins(%struct.TYPE_13__* %281, i32 %282)
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %285 = call i32 @lodepng_free(%struct.TYPE_13__* %284)
  br label %286

286:                                              ; preds = %275, %109
  br label %287

287:                                              ; preds = %286, %72
  %288 = load i32, i32* %14, align 4
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %287, %131, %26
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @lodepng_free(%struct.TYPE_13__*) #1

declare dso_local i32 @init_coins(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @append_symbol_coins(%struct.TYPE_13__*, i32*, i64, i64) #1

declare dso_local i32 @sort_coins(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @cleanup_coins(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @coin_copy(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @add_coins(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
