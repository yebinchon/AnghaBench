; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faandct.c_ff_faandct248.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_faandct.c_ff_faandct248.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@postscale = common dso_local global i32* null, align 8
@A1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_faandct248(i32* %0) #0 {
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
  %15 = alloca [64 x i32], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %17 = call i32 (...) @emms_c()
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @row_fdct(i32* %18, i32* %19)
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %277, %1
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %280

24:                                               ; preds = %21
  %25 = load i32, i32* %16, align 4
  %26 = add nsw i32 0, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %16, align 4
  %31 = add nsw i32 8, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 16, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 24, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %40, %45
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 32, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 40, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 48, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 56, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 0, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 8, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 16, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 24, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %84, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 32, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 40, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %95, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 48, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 56, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %106, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %14, align 4
  %125 = load i32*, i32** @postscale, align 8
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 0, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %131, %132
  %134 = mul nsw i32 %130, %133
  %135 = call i32 @lrintf(i32 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 0, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load i32*, i32** @postscale, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 32, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %147, %148
  %150 = mul nsw i32 %146, %149
  %151 = call i32 @lrintf(i32 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 32, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 %151, i32* %156, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* @A1, align 4
  %161 = load i32, i32* %13, align 4
  %162 = mul nsw i32 %161, %160
  store i32 %162, i32* %13, align 4
  %163 = load i32*, i32** @postscale, align 8
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 16, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %169, %170
  %172 = mul nsw i32 %168, %171
  %173 = call i32 @lrintf(i32 %172)
  %174 = load i32*, i32** %2, align 8
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 16, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32*, i32** @postscale, align 8
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 48, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %185, %186
  %188 = mul nsw i32 %184, %187
  %189 = call i32 @lrintf(i32 %188)
  %190 = load i32*, i32** %2, align 8
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 48, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %195, %196
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %198, %199
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %10, align 4
  %206 = sub nsw i32 %204, %205
  store i32 %206, i32* %14, align 4
  %207 = load i32*, i32** @postscale, align 8
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 0, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %213, %214
  %216 = mul nsw i32 %212, %215
  %217 = call i32 @lrintf(i32 %216)
  %218 = load i32*, i32** %2, align 8
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 8, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  store i32 %217, i32* %222, align 4
  %223 = load i32*, i32** @postscale, align 8
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 32, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %12, align 4
  %231 = sub nsw i32 %229, %230
  %232 = mul nsw i32 %228, %231
  %233 = call i32 @lrintf(i32 %232)
  %234 = load i32*, i32** %2, align 8
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 40, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  store i32 %233, i32* %238, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* @A1, align 4
  %243 = load i32, i32* %13, align 4
  %244 = mul nsw i32 %243, %242
  store i32 %244, i32* %13, align 4
  %245 = load i32*, i32** @postscale, align 8
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 16, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %251, %252
  %254 = mul nsw i32 %250, %253
  %255 = call i32 @lrintf(i32 %254)
  %256 = load i32*, i32** %2, align 8
  %257 = load i32, i32* %16, align 4
  %258 = add nsw i32 24, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load i32*, i32** @postscale, align 8
  %262 = load i32, i32* %16, align 4
  %263 = add nsw i32 48, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %13, align 4
  %269 = sub nsw i32 %267, %268
  %270 = mul nsw i32 %266, %269
  %271 = call i32 @lrintf(i32 %270)
  %272 = load i32*, i32** %2, align 8
  %273 = load i32, i32* %16, align 4
  %274 = add nsw i32 56, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  store i32 %271, i32* %276, align 4
  br label %277

277:                                              ; preds = %24
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %16, align 4
  br label %21

280:                                              ; preds = %21
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
