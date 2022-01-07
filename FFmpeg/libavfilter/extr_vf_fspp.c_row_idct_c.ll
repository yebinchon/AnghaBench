; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_row_idct_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_row_idct_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIX_1_414213562_A = common dso_local global i32 0, align 4
@FIX_1_414213562 = common dso_local global i32 0, align 4
@FIX_1_847759065 = common dso_local global i32 0, align 4
@FIX_1_082392200 = common dso_local global i32 0, align 4
@FIX_2_613125930 = common dso_local global i32 0, align 4
@DCTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32)* @row_idct_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @row_idct_c(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  store i32* %30, i32** %27, align 8
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %26, align 8
  br label %32

32:                                               ; preds = %246, %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %249

35:                                               ; preds = %32
  %36 = load i32*, i32** %27, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %27, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %27, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %27, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32*, i32** %27, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %27, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %20, align 4
  %57 = load i32*, i32** %27, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %27, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = load i32, i32* @FIX_1_414213562_A, align 4
  %65 = call i32 @MULTIPLY16H(i32 %63, i32 %64)
  %66 = shl i32 %65, 2
  %67 = load i32, i32* %20, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %20, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32*, i32** %27, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %27, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %25, align 4
  %88 = load i32*, i32** %27, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %27, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %22, align 4
  %95 = load i32*, i32** %27, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 6
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %27, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %23, align 4
  %102 = load i32*, i32** %27, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %27, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %24, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %25, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %23, align 4
  %113 = load i32, i32* %25, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* @FIX_1_414213562, align 4
  %116 = call i32 @MULTIPLY16H(i32 %114, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %24, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @FIX_1_847759065, align 4
  %121 = call i32 @MULTIPLY16H(i32 %119, i32 %120)
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* @FIX_1_082392200, align 4
  %124 = call i32 @MULTIPLY16H(i32 %122, i32 %123)
  %125 = load i32, i32* %21, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* @FIX_2_613125930, align 4
  %129 = call i32 @MULTIPLY16H(i32 %127, i32 %128)
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %19, align 4
  %133 = shl i32 %132, 3
  %134 = load i32, i32* %16, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %18, align 4
  %137 = shl i32 %136, 3
  %138 = load i32, i32* %15, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %17, align 4
  %141 = shl i32 %140, 3
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i64 @DESCALE(i32 %146, i32 3)
  %148 = load i32*, i32** %26, align 8
  %149 = load i64, i64* %7, align 8
  %150 = mul i64 0, %149
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %147
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i64 @DESCALE(i32 %158, i32 3)
  %160 = load i32*, i32** %26, align 8
  %161 = load i64, i64* %7, align 8
  %162 = mul i64 1, %161
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %159
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i64 @DESCALE(i32 %170, i32 3)
  %172 = load i32*, i32** %26, align 8
  %173 = load i64, i64* %7, align 8
  %174 = mul i64 2, %173
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %171
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %180, %181
  %183 = call i64 @DESCALE(i32 %182, i32 3)
  %184 = load i32*, i32** %26, align 8
  %185 = load i64, i64* %7, align 8
  %186 = mul i64 3, %185
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %183
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %192, %193
  %195 = call i64 @DESCALE(i32 %194, i32 3)
  %196 = load i32*, i32** %26, align 8
  %197 = load i64, i64* %7, align 8
  %198 = mul i64 4, %197
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %195
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %199, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %14, align 4
  %206 = sub nsw i32 %204, %205
  %207 = call i64 @DESCALE(i32 %206, i32 3)
  %208 = load i32*, i32** %26, align 8
  %209 = load i64, i64* %7, align 8
  %210 = mul i64 5, %209
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %207
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %211, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %15, align 4
  %218 = sub nsw i32 %216, %217
  %219 = call i64 @DESCALE(i32 %218, i32 3)
  %220 = load i32*, i32** %26, align 8
  %221 = load i64, i64* %7, align 8
  %222 = mul i64 6, %221
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %219
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %223, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %16, align 4
  %230 = sub nsw i32 %228, %229
  %231 = call i64 @DESCALE(i32 %230, i32 3)
  %232 = load i32*, i32** %26, align 8
  %233 = load i64, i64* %7, align 8
  %234 = mul i64 7, %233
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %231
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %235, align 4
  %240 = load i32*, i32** %26, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %26, align 8
  %242 = load i32, i32* @DCTSIZE, align 4
  %243 = load i32*, i32** %27, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %27, align 8
  br label %246

246:                                              ; preds = %35
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %8, align 4
  br label %32

249:                                              ; preds = %32
  ret void
}

declare dso_local i32 @MULTIPLY16H(i32, i32) #1

declare dso_local i64 @DESCALE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
