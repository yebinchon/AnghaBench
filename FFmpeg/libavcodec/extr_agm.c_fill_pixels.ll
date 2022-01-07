; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_fill_pixels.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_fill_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64**, i64**, i64**, i32, i32, i32, i64*, i32*, i32*, i32*, i32, i32)* @fill_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_pixels(i64** %0, i64** %1, i64** %2, i64** %3, i32 %4, i32 %5, i32 %6, i64* %7, i32* %8, i32* %9, i32* %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i64**, align 8
  %16 = alloca i64**, align 8
  %17 = alloca i64**, align 8
  %18 = alloca i64**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i64** %0, i64*** %15, align 8
  store i64** %1, i64*** %16, align 8
  store i64** %2, i64*** %17, align 8
  store i64** %3, i64*** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i64* %7, i64** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %35 = load i64**, i64*** %15, align 8
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %28, align 8
  %37 = load i64**, i64*** %16, align 8
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %29, align 8
  %39 = load i64**, i64*** %17, align 8
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %30, align 8
  %41 = load i64**, i64*** %18, align 8
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %31, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %32, align 4
  %45 = load i32*, i32** %24, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %33, align 4
  %47 = load i32*, i32** %25, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %34, align 4
  %49 = load i32, i32* %34, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %13
  %52 = load i64*, i64** %22, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %28, align 8
  %56 = load i32, i32* %32, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %57, 0
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %54
  store i64 %62, i64* %60, align 8
  %63 = load i64*, i64** %22, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %28, align 8
  %67 = load i32, i32* %32, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %65
  store i64 %73, i64* %71, align 8
  %74 = load i64*, i64** %22, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %29, align 8
  %78 = load i32, i32* %32, align 4
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 %79, 0
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %76
  store i64 %84, i64* %82, align 8
  %85 = load i64*, i64** %22, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %29, align 8
  %89 = load i32, i32* %32, align 4
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %87
  store i64 %95, i64* %93, align 8
  %96 = load i32, i32* %34, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %34, align 4
  br label %262

98:                                               ; preds = %13
  %99 = load i32, i32* %34, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %180

101:                                              ; preds = %98
  %102 = load i64*, i64** %22, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %30, align 8
  %106 = load i32, i32* %32, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %104
  store i64 %110, i64* %108, align 8
  %111 = load i64*, i64** %22, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %31, align 8
  %115 = load i32, i32* %32, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %113
  store i64 %119, i64* %117, align 8
  %120 = load i32, i32* %32, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %32, align 4
  %122 = load i32, i32* %32, align 4
  %123 = load i32, i32* %26, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %101
  store i32 0, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %33, align 4
  %128 = load i32, i32* %33, align 4
  %129 = load i32, i32* %27, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 1, i32* %14, align 4
  br label %277

132:                                              ; preds = %125
  %133 = load i32, i32* %19, align 4
  %134 = mul nsw i32 2, %133
  %135 = load i64*, i64** %28, align 8
  %136 = sext i32 %134 to i64
  %137 = sub i64 0, %136
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  store i64* %138, i64** %28, align 8
  %139 = load i32, i32* %19, align 4
  %140 = mul nsw i32 2, %139
  %141 = load i64*, i64** %29, align 8
  %142 = sext i32 %140 to i64
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64* %144, i64** %29, align 8
  %145 = load i32, i32* %20, align 4
  %146 = load i64*, i64** %30, align 8
  %147 = sext i32 %145 to i64
  %148 = sub i64 0, %147
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64* %149, i64** %30, align 8
  %150 = load i32, i32* %21, align 4
  %151 = load i64*, i64** %31, align 8
  %152 = sext i32 %150 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64* %154, i64** %31, align 8
  br label %155

155:                                              ; preds = %132, %101
  %156 = load i64*, i64** %22, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %28, align 8
  %160 = load i32, i32* %32, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 %161, 0
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %159, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %158
  store i64 %166, i64* %164, align 8
  %167 = load i64*, i64** %22, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %28, align 8
  %171 = load i32, i32* %32, align 4
  %172 = mul nsw i32 2, %171
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %170, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %169
  store i64 %177, i64* %175, align 8
  %178 = load i32, i32* %34, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %34, align 4
  br label %261

180:                                              ; preds = %98
  %181 = load i32, i32* %34, align 4
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %260

183:                                              ; preds = %180
  %184 = load i64*, i64** %22, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %29, align 8
  %188 = load i32, i32* %32, align 4
  %189 = mul nsw i32 2, %188
  %190 = add nsw i32 %189, 0
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %187, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %186
  store i64 %194, i64* %192, align 8
  %195 = load i64*, i64** %22, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %29, align 8
  %199 = load i32, i32* %32, align 4
  %200 = mul nsw i32 2, %199
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %198, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %197
  store i64 %205, i64* %203, align 8
  %206 = load i64*, i64** %22, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %30, align 8
  %210 = load i32, i32* %32, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %208
  store i64 %214, i64* %212, align 8
  %215 = load i64*, i64** %22, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 3
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %31, align 8
  %219 = load i32, i32* %32, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %217
  store i64 %223, i64* %221, align 8
  %224 = load i32, i32* %32, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %32, align 4
  %226 = load i32, i32* %32, align 4
  %227 = load i32, i32* %26, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %259

229:                                              ; preds = %183
  store i32 0, i32* %32, align 4
  %230 = load i32, i32* %33, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %33, align 4
  %232 = load i32, i32* %33, align 4
  %233 = load i32, i32* %27, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  store i32 1, i32* %14, align 4
  br label %277

236:                                              ; preds = %229
  %237 = load i32, i32* %19, align 4
  %238 = mul nsw i32 2, %237
  %239 = load i64*, i64** %28, align 8
  %240 = sext i32 %238 to i64
  %241 = sub i64 0, %240
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  store i64* %242, i64** %28, align 8
  %243 = load i32, i32* %19, align 4
  %244 = mul nsw i32 2, %243
  %245 = load i64*, i64** %29, align 8
  %246 = sext i32 %244 to i64
  %247 = sub i64 0, %246
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  store i64* %248, i64** %29, align 8
  %249 = load i32, i32* %20, align 4
  %250 = load i64*, i64** %30, align 8
  %251 = sext i32 %249 to i64
  %252 = sub i64 0, %251
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  store i64* %253, i64** %30, align 8
  %254 = load i32, i32* %21, align 4
  %255 = load i64*, i64** %31, align 8
  %256 = sext i32 %254 to i64
  %257 = sub i64 0, %256
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  store i64* %258, i64** %31, align 8
  br label %259

259:                                              ; preds = %236, %183
  store i32 0, i32* %34, align 4
  br label %260

260:                                              ; preds = %259, %180
  br label %261

261:                                              ; preds = %260, %155
  br label %262

262:                                              ; preds = %261, %51
  %263 = load i64*, i64** %28, align 8
  %264 = load i64**, i64*** %15, align 8
  store i64* %263, i64** %264, align 8
  %265 = load i64*, i64** %29, align 8
  %266 = load i64**, i64*** %16, align 8
  store i64* %265, i64** %266, align 8
  %267 = load i64*, i64** %30, align 8
  %268 = load i64**, i64*** %17, align 8
  store i64* %267, i64** %268, align 8
  %269 = load i64*, i64** %31, align 8
  %270 = load i64**, i64*** %18, align 8
  store i64* %269, i64** %270, align 8
  %271 = load i32, i32* %34, align 4
  %272 = load i32*, i32** %25, align 8
  store i32 %271, i32* %272, align 4
  %273 = load i32, i32* %32, align 4
  %274 = load i32*, i32** %23, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %33, align 4
  %276 = load i32*, i32** %24, align 8
  store i32 %275, i32* %276, align 4
  store i32 0, i32* %14, align 4
  br label %277

277:                                              ; preds = %262, %235, %131
  %278 = load i32, i32* %14, align 4
  ret i32 %278
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
