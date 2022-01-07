; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_utils.c_rgb24_to_yuv420p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_utils.c_rgb24_to_yuv420p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONE_HALF = common dso_local global i32 0, align 4
@SCALEBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32, i32)* @rgb24_to_yuv420p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb24_to_yuv420p(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %25, 3
  store i32 %26, i32* %14, align 4
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %23, align 8
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %269, %6
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %272

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %257, %32
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %260

37:                                               ; preds = %33
  %38 = load i8*, i8** %23, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i8*, i8** %23, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %18, align 4
  %46 = load i8*, i8** %23, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %22, align 4
  %53 = call i32 @FIX(double 2.990000e-01)
  %54 = load i32, i32* %17, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @FIX(double 5.870000e-01)
  %57 = load i32, i32* %18, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %55, %58
  %60 = call i32 @FIX(double 1.140000e-01)
  %61 = load i32, i32* %19, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* @ONE_HALF, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @SCALEBITS, align 4
  %67 = ashr i32 %65, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %70, align 1
  %71 = load i8*, i8** %23, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %17, align 4
  %75 = load i8*, i8** %23, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %18, align 4
  %79 = load i8*, i8** %23, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %22, align 4
  %92 = call i32 @FIX(double 2.990000e-01)
  %93 = load i32, i32* %17, align 4
  %94 = mul nsw i32 %92, %93
  %95 = call i32 @FIX(double 5.870000e-01)
  %96 = load i32, i32* %18, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = call i32 @FIX(double 1.140000e-01)
  %100 = load i32, i32* %19, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  %103 = load i32, i32* @ONE_HALF, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @SCALEBITS, align 4
  %106 = ashr i32 %104, %105
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %14, align 4
  %111 = load i8*, i8** %23, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %23, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %7, align 8
  %118 = load i8*, i8** %23, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  store i32 %121, i32* %17, align 4
  %122 = load i8*, i8** %23, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  store i32 %125, i32* %18, align 4
  %126 = load i8*, i8** %23, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %21, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %22, align 4
  %139 = call i32 @FIX(double 2.990000e-01)
  %140 = load i32, i32* %17, align 4
  %141 = mul nsw i32 %139, %140
  %142 = call i32 @FIX(double 5.870000e-01)
  %143 = load i32, i32* %18, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = call i32 @FIX(double 1.140000e-01)
  %147 = load i32, i32* %19, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %145, %148
  %150 = load i32, i32* @ONE_HALF, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* @SCALEBITS, align 4
  %153 = ashr i32 %151, %152
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 %154, i8* %156, align 1
  %157 = load i8*, i8** %23, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  store i32 %160, i32* %17, align 4
  %161 = load i8*, i8** %23, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 4
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  store i32 %164, i32* %18, align 4
  %165 = load i8*, i8** %23, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 5
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %20, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %21, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %22, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %22, align 4
  %178 = call i32 @FIX(double 2.990000e-01)
  %179 = load i32, i32* %17, align 4
  %180 = mul nsw i32 %178, %179
  %181 = call i32 @FIX(double 5.870000e-01)
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = call i32 @FIX(double 1.140000e-01)
  %186 = load i32, i32* %19, align 4
  %187 = mul nsw i32 %185, %186
  %188 = add nsw i32 %184, %187
  %189 = load i32, i32* @ONE_HALF, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* @SCALEBITS, align 4
  %192 = ashr i32 %190, %191
  %193 = trunc i32 %192 to i8
  %194 = load i8*, i8** %7, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 %193, i8* %195, align 1
  %196 = call i32 @FIX(double 1.687400e-01)
  %197 = sub nsw i32 0, %196
  %198 = load i32, i32* %20, align 4
  %199 = mul nsw i32 %197, %198
  %200 = call i32 @FIX(double 3.312600e-01)
  %201 = load i32, i32* %21, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sub nsw i32 %199, %202
  %204 = call i32 @FIX(double 5.000000e-01)
  %205 = load i32, i32* %22, align 4
  %206 = mul nsw i32 %204, %205
  %207 = add nsw i32 %203, %206
  %208 = load i32, i32* @ONE_HALF, align 4
  %209 = mul nsw i32 4, %208
  %210 = add nsw i32 %207, %209
  %211 = sub nsw i32 %210, 1
  %212 = load i32, i32* @SCALEBITS, align 4
  %213 = add nsw i32 %212, 2
  %214 = ashr i32 %211, %213
  %215 = add nsw i32 %214, 128
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %8, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  store i8 %216, i8* %218, align 1
  %219 = call i32 @FIX(double 5.000000e-01)
  %220 = load i32, i32* %20, align 4
  %221 = mul nsw i32 %219, %220
  %222 = call i32 @FIX(double 4.186900e-01)
  %223 = load i32, i32* %21, align 4
  %224 = mul nsw i32 %222, %223
  %225 = sub nsw i32 %221, %224
  %226 = call i32 @FIX(double 0x3FB4D0BB6ED67770)
  %227 = load i32, i32* %22, align 4
  %228 = mul nsw i32 %226, %227
  %229 = sub nsw i32 %225, %228
  %230 = load i32, i32* @ONE_HALF, align 4
  %231 = mul nsw i32 4, %230
  %232 = add nsw i32 %229, %231
  %233 = sub nsw i32 %232, 1
  %234 = load i32, i32* @SCALEBITS, align 4
  %235 = add nsw i32 %234, 2
  %236 = ashr i32 %233, %235
  %237 = add nsw i32 %236, 128
  %238 = trunc i32 %237 to i8
  %239 = load i8*, i8** %9, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  store i8 %238, i8* %240, align 1
  %241 = load i8*, i8** %8, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %8, align 8
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %9, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sub nsw i32 0, %245
  %247 = add nsw i32 %246, 6
  %248 = load i8*, i8** %23, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %23, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sub nsw i32 0, %251
  %253 = add nsw i32 %252, 2
  %254 = load i8*, i8** %7, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %7, align 8
  br label %257

257:                                              ; preds = %37
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %258, 2
  store i32 %259, i32* %15, align 4
  br label %33

260:                                              ; preds = %33
  %261 = load i32, i32* %14, align 4
  %262 = load i8*, i8** %23, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8* %264, i8** %23, align 8
  %265 = load i32, i32* %13, align 4
  %266 = load i8*, i8** %7, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8* %268, i8** %7, align 8
  br label %269

269:                                              ; preds = %260
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 2
  store i32 %271, i32* %16, align 4
  br label %28

272:                                              ; preds = %28
  ret void
}

declare dso_local i32 @FIX(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
