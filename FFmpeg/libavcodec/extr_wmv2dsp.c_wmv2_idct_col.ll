; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_idct_col.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_idct_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W1 = common dso_local global i16 0, align 2
@W7 = common dso_local global i16 0, align 2
@W5 = common dso_local global i16 0, align 2
@W3 = common dso_local global i16 0, align 2
@W2 = common dso_local global i16 0, align 2
@W6 = common dso_local global i16 0, align 2
@W0 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @wmv2_idct_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmv2_idct_col(i16* %0) #0 {
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
  %13 = load i16, i16* @W1, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16*, i16** %2, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 8
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %14, %18
  %20 = load i16, i16* @W7, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 56
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %21, %25
  %27 = add nsw i32 %19, %26
  %28 = add nsw i32 %27, 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %6, align 4
  %30 = load i16, i16* @W7, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16*, i16** %2, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 8
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %31, %35
  %37 = load i16, i16* @W1, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16*, i16** %2, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 56
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = mul nsw i32 %38, %42
  %44 = sub nsw i32 %36, %43
  %45 = add nsw i32 %44, 4
  %46 = ashr i32 %45, 3
  store i32 %46, i32* %12, align 4
  %47 = load i16, i16* @W5, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16*, i16** %2, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 40
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = mul nsw i32 %48, %52
  %54 = load i16, i16* @W3, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16*, i16** %2, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 24
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = mul nsw i32 %55, %59
  %61 = add nsw i32 %53, %60
  %62 = add nsw i32 %61, 4
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %10, align 4
  %64 = load i16, i16* @W3, align 2
  %65 = sext i16 %64 to i32
  %66 = load i16*, i16** %2, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 40
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = mul nsw i32 %65, %69
  %71 = load i16, i16* @W5, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16*, i16** %2, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 24
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = mul nsw i32 %72, %76
  %78 = sub nsw i32 %70, %77
  %79 = add nsw i32 %78, 4
  %80 = ashr i32 %79, 3
  store i32 %80, i32* %8, align 4
  %81 = load i16, i16* @W2, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16*, i16** %2, align 8
  %84 = getelementptr inbounds i16, i16* %83, i64 16
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = mul nsw i32 %82, %86
  %88 = load i16, i16* @W6, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16*, i16** %2, align 8
  %91 = getelementptr inbounds i16, i16* %90, i64 48
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  %94 = mul nsw i32 %89, %93
  %95 = add nsw i32 %87, %94
  %96 = add nsw i32 %95, 4
  %97 = ashr i32 %96, 3
  store i32 %97, i32* %7, align 4
  %98 = load i16, i16* @W6, align 2
  %99 = sext i16 %98 to i32
  %100 = load i16*, i16** %2, align 8
  %101 = getelementptr inbounds i16, i16* %100, i64 16
  %102 = load i16, i16* %101, align 2
  %103 = sext i16 %102 to i32
  %104 = mul nsw i32 %99, %103
  %105 = load i16, i16* @W2, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16*, i16** %2, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 48
  %109 = load i16, i16* %108, align 2
  %110 = sext i16 %109 to i32
  %111 = mul nsw i32 %106, %110
  %112 = sub nsw i32 %104, %111
  %113 = add nsw i32 %112, 4
  %114 = ashr i32 %113, 3
  store i32 %114, i32* %11, align 4
  %115 = load i16, i16* @W0, align 2
  %116 = sext i16 %115 to i32
  %117 = load i16*, i16** %2, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 0
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = mul nsw i32 %116, %120
  %122 = load i16, i16* @W0, align 2
  %123 = sext i16 %122 to i32
  %124 = load i16*, i16** %2, align 8
  %125 = getelementptr inbounds i16, i16* %124, i64 32
  %126 = load i16, i16* %125, align 2
  %127 = sext i16 %126 to i32
  %128 = mul nsw i32 %123, %127
  %129 = add nsw i32 %121, %128
  %130 = ashr i32 %129, 3
  store i32 %130, i32* %5, align 4
  %131 = load i16, i16* @W0, align 2
  %132 = sext i16 %131 to i32
  %133 = load i16*, i16** %2, align 8
  %134 = getelementptr inbounds i16, i16* %133, i64 0
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i32
  %137 = mul nsw i32 %132, %136
  %138 = load i16, i16* @W0, align 2
  %139 = sext i16 %138 to i32
  %140 = load i16*, i16** %2, align 8
  %141 = getelementptr inbounds i16, i16* %140, i64 32
  %142 = load i16, i16* %141, align 2
  %143 = sext i16 %142 to i32
  %144 = mul nsw i32 %139, %143
  %145 = sub nsw i32 %137, %144
  %146 = ashr i32 %145, 3
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %151, %152
  %154 = mul i32 181, %153
  %155 = add i32 %154, 128
  %156 = ashr i32 %155, 8
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %161, %162
  %164 = mul i32 181, %163
  %165 = add i32 %164, 128
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
