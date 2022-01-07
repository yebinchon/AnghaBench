; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faandct.c_ff_faandct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faandct.c_ff_faandct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@postscale = common dso_local global i32* null, align 8
@A1 = common dso_local global i32 0, align 4
@A2 = common dso_local global i32 0, align 4
@A5 = common dso_local global i32 0, align 4
@A4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_faandct(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %19 = alloca [64 x i32], align 16
  %20 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %21 = call i32 (...) @emms_c()
  %22 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 0
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @row_fdct(i32* %22, i32* %23)
  store i32 0, i32* %20, align 4
  br label %25

25:                                               ; preds = %299, %1
  %26 = load i32, i32* %20, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %302

28:                                               ; preds = %25
  %29 = load i32, i32* %20, align 4
  %30 = add nsw i32 0, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %20, align 4
  %35 = add nsw i32 56, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %33, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %20, align 4
  %41 = add nsw i32 0, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %20, align 4
  %46 = add nsw i32 56, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %44, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %20, align 4
  %52 = add nsw i32 8, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %20, align 4
  %57 = add nsw i32 48, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %55, %60
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %20, align 4
  %63 = add nsw i32 8, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 48, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %66, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 16, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 40, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %77, %82
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 16, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 40, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %88, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 24, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 32, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %99, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 24, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 32, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %110, %115
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %123, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %5, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** @postscale, align 8
  %130 = load i32, i32* %20, align 4
  %131 = add nsw i32 0, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = mul nsw i32 %134, %137
  %139 = call i32 @lrintf(i32 %138)
  %140 = load i32*, i32** %2, align 8
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 0, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load i32*, i32** @postscale, align 8
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 32, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %151, %152
  %154 = mul nsw i32 %150, %153
  %155 = call i32 @lrintf(i32 %154)
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 32, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* @A1, align 4
  %165 = load i32, i32* %13, align 4
  %166 = mul nsw i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load i32*, i32** @postscale, align 8
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 16, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %173, %174
  %176 = mul nsw i32 %172, %175
  %177 = call i32 @lrintf(i32 %176)
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 16, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load i32*, i32** @postscale, align 8
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 48, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %189, %190
  %192 = mul nsw i32 %188, %191
  %193 = call i32 @lrintf(i32 %192)
  %194 = load i32*, i32** %2, align 8
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 48, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %193, i32* %198, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @A2, align 4
  %210 = load i32, i32* @A5, align 4
  %211 = add nsw i32 %209, %210
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @A5, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sub nsw i32 %212, %215
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @A4, align 4
  %219 = load i32, i32* @A5, align 4
  %220 = sub nsw i32 %218, %219
  %221 = mul nsw i32 %217, %220
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @A5, align 4
  %224 = mul nsw i32 %222, %223
  %225 = add nsw i32 %221, %224
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* @A1, align 4
  %227 = load i32, i32* %8, align 4
  %228 = mul nsw i32 %227, %226
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %229, %230
  store i32 %231, i32* %17, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %8, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %18, align 4
  %235 = load i32*, i32** @postscale, align 8
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 40, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %241, %242
  %244 = mul nsw i32 %240, %243
  %245 = call i32 @lrintf(i32 %244)
  %246 = load i32*, i32** %2, align 8
  %247 = load i32, i32* %20, align 4
  %248 = add nsw i32 40, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store i32 %245, i32* %250, align 4
  %251 = load i32*, i32** @postscale, align 8
  %252 = load i32, i32* %20, align 4
  %253 = add nsw i32 24, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %15, align 4
  %259 = sub nsw i32 %257, %258
  %260 = mul nsw i32 %256, %259
  %261 = call i32 @lrintf(i32 %260)
  %262 = load i32*, i32** %2, align 8
  %263 = load i32, i32* %20, align 4
  %264 = add nsw i32 24, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  store i32 %261, i32* %266, align 4
  %267 = load i32*, i32** @postscale, align 8
  %268 = load i32, i32* %20, align 4
  %269 = add nsw i32 8, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* %16, align 4
  %275 = add nsw i32 %273, %274
  %276 = mul nsw i32 %272, %275
  %277 = call i32 @lrintf(i32 %276)
  %278 = load i32*, i32** %2, align 8
  %279 = load i32, i32* %20, align 4
  %280 = add nsw i32 8, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  store i32 %277, i32* %282, align 4
  %283 = load i32*, i32** @postscale, align 8
  %284 = load i32, i32* %20, align 4
  %285 = add nsw i32 56, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %16, align 4
  %291 = sub nsw i32 %289, %290
  %292 = mul nsw i32 %288, %291
  %293 = call i32 @lrintf(i32 %292)
  %294 = load i32*, i32** %2, align 8
  %295 = load i32, i32* %20, align 4
  %296 = add nsw i32 56, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  store i32 %293, i32* %298, align 4
  br label %299

299:                                              ; preds = %28
  %300 = load i32, i32* %20, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %20, align 4
  br label %25

302:                                              ; preds = %25
  ret void
}

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @row_fdct(i32*, i32*) #1

declare dso_local i32 @lrintf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
