; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_wmv2dsp_mmi.c_wmv2_idct_col_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_wmv2dsp_mmi.c_wmv2_idct_col_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W0 = common dso_local global i16 0, align 2
@W1 = common dso_local global i16 0, align 2
@W7 = common dso_local global i16 0, align 2
@W2 = common dso_local global i16 0, align 2
@W6 = common dso_local global i16 0, align 2
@W3 = common dso_local global i16 0, align 2
@W5 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @wmv2_idct_col_mmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmv2_idct_col_mmi(i16* %0) #0 {
  %2 = alloca i16*, align 8
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
  store i16* %0, i16** %2, align 8
  %13 = load i16, i16* @W0, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16*, i16** %2, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 0
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %14, %18
  %20 = load i16, i16* @W0, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 32
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %21, %25
  %27 = add nsw i32 %19, %26
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load i16, i16* @W1, align 2
  %30 = sext i16 %29 to i32
  %31 = load i16*, i16** %2, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 8
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %30, %34
  %36 = load i16, i16* @W7, align 2
  %37 = sext i16 %36 to i32
  %38 = load i16*, i16** %2, align 8
  %39 = getelementptr inbounds i16, i16* %38, i64 56
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = mul nsw i32 %37, %41
  %43 = add nsw i32 %35, %42
  %44 = add nsw i32 %43, 4
  %45 = ashr i32 %44, 3
  store i32 %45, i32* %6, align 4
  %46 = load i16, i16* @W2, align 2
  %47 = sext i16 %46 to i32
  %48 = load i16*, i16** %2, align 8
  %49 = getelementptr inbounds i16, i16* %48, i64 16
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i32
  %52 = mul nsw i32 %47, %51
  %53 = load i16, i16* @W6, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16*, i16** %2, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 48
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i32
  %59 = mul nsw i32 %54, %58
  %60 = add nsw i32 %52, %59
  %61 = add nsw i32 %60, 4
  %62 = ashr i32 %61, 3
  store i32 %62, i32* %7, align 4
  %63 = load i16, i16* @W3, align 2
  %64 = sext i16 %63 to i32
  %65 = load i16*, i16** %2, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 40
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  %69 = mul nsw i32 %64, %68
  %70 = load i16, i16* @W5, align 2
  %71 = sext i16 %70 to i32
  %72 = load i16*, i16** %2, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 24
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = mul nsw i32 %71, %75
  %77 = sub nsw i32 %69, %76
  %78 = add nsw i32 %77, 4
  %79 = ashr i32 %78, 3
  store i32 %79, i32* %8, align 4
  %80 = load i16, i16* @W0, align 2
  %81 = sext i16 %80 to i32
  %82 = load i16*, i16** %2, align 8
  %83 = getelementptr inbounds i16, i16* %82, i64 0
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = mul nsw i32 %81, %85
  %87 = load i16, i16* @W0, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16*, i16** %2, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 32
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = mul nsw i32 %88, %92
  %94 = sub nsw i32 %86, %93
  %95 = ashr i32 %94, 3
  store i32 %95, i32* %9, align 4
  %96 = load i16, i16* @W5, align 2
  %97 = sext i16 %96 to i32
  %98 = load i16*, i16** %2, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 40
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = mul nsw i32 %97, %101
  %103 = load i16, i16* @W3, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16*, i16** %2, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 24
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %104, %108
  %110 = add nsw i32 %102, %109
  %111 = add nsw i32 %110, 4
  %112 = ashr i32 %111, 3
  store i32 %112, i32* %10, align 4
  %113 = load i16, i16* @W6, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16*, i16** %2, align 8
  %116 = getelementptr inbounds i16, i16* %115, i64 16
  %117 = load i16, i16* %116, align 2
  %118 = sext i16 %117 to i32
  %119 = mul nsw i32 %114, %118
  %120 = load i16, i16* @W2, align 2
  %121 = sext i16 %120 to i32
  %122 = load i16*, i16** %2, align 8
  %123 = getelementptr inbounds i16, i16* %122, i64 48
  %124 = load i16, i16* %123, align 2
  %125 = sext i16 %124 to i32
  %126 = mul nsw i32 %121, %125
  %127 = sub nsw i32 %119, %126
  %128 = add nsw i32 %127, 4
  %129 = ashr i32 %128, 3
  store i32 %129, i32* %11, align 4
  %130 = load i16, i16* @W7, align 2
  %131 = sext i16 %130 to i32
  %132 = load i16*, i16** %2, align 8
  %133 = getelementptr inbounds i16, i16* %132, i64 8
  %134 = load i16, i16* %133, align 2
  %135 = sext i16 %134 to i32
  %136 = mul nsw i32 %131, %135
  %137 = load i16, i16* @W1, align 2
  %138 = sext i16 %137 to i32
  %139 = load i16*, i16** %2, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 56
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = mul nsw i32 %138, %142
  %144 = sub nsw i32 %136, %143
  %145 = add nsw i32 %144, 4
  %146 = ashr i32 %145, 3
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %151, %152
  %154 = mul nsw i32 181, %153
  %155 = add nsw i32 %154, 128
  %156 = ashr i32 %155, 8
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %161, %162
  %164 = mul nsw i32 181, %163
  %165 = add nsw i32 %164, 128
  %166 = ashr i32 %165, 8
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %171, %172
  %174 = add nsw i32 %173, 8192
  %175 = ashr i32 %174, 14
  %176 = trunc i32 %175 to i16
  %177 = load i16*, i16** %2, align 8
  %178 = getelementptr inbounds i16, i16* %177, i64 0
  store i16 %176, i16* %178, align 2
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %181, %182
  %184 = add nsw i32 %183, 8192
  %185 = ashr i32 %184, 14
  %186 = trunc i32 %185 to i16
  %187 = load i16*, i16** %2, align 8
  %188 = getelementptr inbounds i16, i16* %187, i64 8
  store i16 %186, i16* %188, align 2
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %11, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %191, %192
  %194 = add nsw i32 %193, 8192
  %195 = ashr i32 %194, 14
  %196 = trunc i32 %195 to i16
  %197 = load i16*, i16** %2, align 8
  %198 = getelementptr inbounds i16, i16* %197, i64 16
  store i16 %196, i16* %198, align 2
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %203, %204
  %206 = add nsw i32 %205, 8192
  %207 = ashr i32 %206, 14
  %208 = trunc i32 %207 to i16
  %209 = load i16*, i16** %2, align 8
  %210 = getelementptr inbounds i16, i16* %209, i64 24
  store i16 %208, i16* %210, align 2
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* %7, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load i32, i32* %12, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* %8, align 4
  %217 = sub nsw i32 %215, %216
  %218 = add nsw i32 %217, 8192
  %219 = ashr i32 %218, 14
  %220 = trunc i32 %219 to i16
  %221 = load i16*, i16** %2, align 8
  %222 = getelementptr inbounds i16, i16* %221, i64 32
  store i16 %220, i16* %222, align 2
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %11, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* %4, align 4
  %227 = sub nsw i32 %225, %226
  %228 = add nsw i32 %227, 8192
  %229 = ashr i32 %228, 14
  %230 = trunc i32 %229 to i16
  %231 = load i16*, i16** %2, align 8
  %232 = getelementptr inbounds i16, i16* %231, i64 40
  store i16 %230, i16* %232, align 2
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %3, align 4
  %237 = sub nsw i32 %235, %236
  %238 = add nsw i32 %237, 8192
  %239 = ashr i32 %238, 14
  %240 = trunc i32 %239 to i16
  %241 = load i16*, i16** %2, align 8
  %242 = getelementptr inbounds i16, i16* %241, i64 48
  store i16 %240, i16* %242, align 2
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* %6, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load i32, i32* %10, align 4
  %249 = sub nsw i32 %247, %248
  %250 = add nsw i32 %249, 8192
  %251 = ashr i32 %250, 14
  %252 = trunc i32 %251 to i16
  %253 = load i16*, i16** %2, align 8
  %254 = getelementptr inbounds i16, i16* %253, i64 56
  store i16 %252, i16* %254, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
