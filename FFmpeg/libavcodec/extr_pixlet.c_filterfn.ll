; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_filterfn.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_filterfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32, i32)* @filterfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filterfn(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = lshr i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  store i64* %22, i64** %9, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i32, i32* %15, align 4
  %25 = add nsw i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64* %27, i64** %10, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @memcpy(i64* %28, i64* %29, i32 %30)
  %32 = load i64*, i64** %10, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @memcpy(i64* %32, i64* %36, i32 %37)
  %39 = load i64*, i64** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64* %42, i64** %11, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64* %46, i64** %12, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64* %50, i64** %13, align 8
  %51 = load i64*, i64** %13, align 8
  store i64* %51, i64** %14, align 8
  store i32 4, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %52

52:                                               ; preds = %88, %4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %52
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 %63, 5
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  store i64 %61, i64* %66, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 -1
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %69, i64* %71, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %79, 5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  store i64 %77, i64* %82, align 8
  %83 = load i64*, i64** %13, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 -2
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %14, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %55
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = load i64*, i64** %11, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 -1
  store i64* %94, i64** %11, align 8
  %95 = load i64*, i64** %14, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %14, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %12, align 8
  %99 = load i64*, i64** %13, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 -1
  store i64* %100, i64** %13, align 8
  br label %52

101:                                              ; preds = %52
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %169, %101
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %172

106:                                              ; preds = %102
  %107 = load i64*, i64** %9, align 8
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @INT64_C(i32 325392907)
  %115 = sub nsw i32 0, %114
  %116 = mul nsw i32 %113, %115
  %117 = load i64*, i64** %9, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 0
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @INT64_C(i32 -607180976)
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %116, %125
  %127 = load i64*, i64** %9, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @INT64_C(i32 325392907)
  %135 = sub nsw i32 0, %134
  %136 = mul nsw i32 %133, %135
  %137 = add nsw i32 %126, %136
  %138 = load i64*, i64** %10, align 8
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 0
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @INT64_C(i32 1518500249)
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %137, %146
  %148 = load i64*, i64** %10, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @INT64_C(i32 1518500249)
  %156 = mul nsw i32 %154, %155
  %157 = add nsw i32 %147, %156
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = ashr i32 %158, 32
  %160 = load i32, i32* %8, align 4
  %161 = mul nsw i32 %159, %160
  %162 = ashr i32 %161, 32
  %163 = call i64 @av_clip_int16(i32 %162)
  %164 = load i64*, i64** %5, align 8
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  store i64 %163, i64* %168, align 8
  br label %169

169:                                              ; preds = %106
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %102

172:                                              ; preds = %102
  store i32 0, i32* %16, align 4
  br label %173

173:                                              ; preds = %262, %172
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %265

177:                                              ; preds = %173
  %178 = load i64*, i64** %9, align 8
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @INT64_C(i32 65078576)
  %186 = sub nsw i32 0, %185
  %187 = mul nsw i32 %184, %186
  %188 = load i64*, i64** %9, align 8
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @INT64_C(i32 1583578880)
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %187, %196
  %198 = load i64*, i64** %9, align 8
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @INT64_C(i32 1583578880)
  %206 = mul nsw i32 %204, %205
  %207 = add nsw i32 %197, %206
  %208 = load i64*, i64** %9, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 @INT64_C(i32 65078576)
  %216 = sub nsw i32 0, %215
  %217 = mul nsw i32 %214, %216
  %218 = add nsw i32 %207, %217
  %219 = load i64*, i64** %10, align 8
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 @INT64_C(i32 303700064)
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %218, %227
  %229 = load i64*, i64** %10, align 8
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 0
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %229, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @INT64_C(i32 -650566656)
  %237 = sub nsw i32 0, %236
  %238 = mul nsw i32 %235, %237
  %239 = add nsw i32 %228, %238
  %240 = load i64*, i64** %10, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %240, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = call i32 @INT64_C(i32 303700064)
  %248 = mul nsw i32 %246, %247
  %249 = add nsw i32 %239, %248
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* %18, align 4
  %251 = ashr i32 %250, 32
  %252 = load i32, i32* %8, align 4
  %253 = mul nsw i32 %251, %252
  %254 = ashr i32 %253, 32
  %255 = call i64 @av_clip_int16(i32 %254)
  %256 = load i64*, i64** %5, align 8
  %257 = load i32, i32* %16, align 4
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %256, i64 %260
  store i64 %255, i64* %261, align 8
  br label %262

262:                                              ; preds = %177
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %16, align 4
  br label %173

265:                                              ; preds = %173
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
