; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_vp9_transpose_16x16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_vp9_transpose_16x16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vp9_transpose_16x16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_transpose_16x16(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i32 @LD_UB8(i32* %49, i32 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58)
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 8, %60
  %62 = load i32*, i32** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %23, align 8
  %74 = load i64, i64* %24, align 8
  %75 = call i32 @LD_UB8(i32* %65, i32 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %19, align 8
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %33, align 8
  %93 = load i64, i64* %34, align 8
  %94 = load i64, i64* %35, align 8
  %95 = load i64, i64* %36, align 8
  %96 = load i64, i64* %37, align 8
  %97 = load i64, i64* %38, align 8
  %98 = load i64, i64* %39, align 8
  %99 = load i64, i64* %40, align 8
  %100 = call i32 @TRANSPOSE16x8_UB_UB(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i64, i64* %17, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i64 @__msa_ilvod_d(i32 %102, i32 %104)
  store i64 %105, i64* %48, align 8
  %106 = load i64, i64* %18, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i64, i64* %10, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i64 @__msa_ilvod_d(i32 %107, i32 %109)
  store i64 %110, i64* %47, align 8
  %111 = load i64, i64* %19, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i64, i64* %11, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i64 @__msa_ilvod_d(i32 %112, i32 %114)
  store i64 %115, i64* %46, align 8
  %116 = load i64, i64* %20, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %12, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @__msa_ilvod_d(i32 %117, i32 %119)
  store i64 %120, i64* %45, align 8
  %121 = load i64, i64* %21, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* %13, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i64 @__msa_ilvod_d(i32 %122, i32 %124)
  store i64 %125, i64* %44, align 8
  %126 = load i64, i64* %22, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i64, i64* %14, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @__msa_ilvod_d(i32 %127, i32 %129)
  store i64 %130, i64* %43, align 8
  %131 = load i64, i64* %23, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* %15, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @__msa_ilvod_d(i32 %132, i32 %134)
  store i64 %135, i64* %42, align 8
  %136 = load i64, i64* %24, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i64, i64* %16, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i64 @__msa_ilvod_d(i32 %137, i32 %139)
  store i64 %140, i64* %41, align 8
  %141 = load i64, i64* %48, align 8
  %142 = load i64, i64* %47, align 8
  %143 = load i64, i64* %46, align 8
  %144 = load i64, i64* %45, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %26, align 8
  %147 = call i32 @ILVEV_B2_SH(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %47, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i64, i64* %48, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i64 @__msa_ilvod_b(i32 %149, i32 %151)
  store i64 %152, i64* %27, align 8
  %153 = load i64, i64* %45, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i64, i64* %46, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i64 @__msa_ilvod_b(i32 %154, i32 %156)
  store i64 %157, i64* %28, align 8
  %158 = load i64, i64* %44, align 8
  %159 = load i64, i64* %43, align 8
  %160 = load i64, i64* %42, align 8
  %161 = load i64, i64* %41, align 8
  %162 = load i64, i64* %46, align 8
  %163 = load i64, i64* %48, align 8
  %164 = call i32 @ILVEV_B2_UB(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %43, align 8
  %166 = trunc i64 %165 to i32
  %167 = load i64, i64* %44, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i64 @__msa_ilvod_b(i32 %166, i32 %168)
  store i64 %169, i64* %29, align 8
  %170 = load i64, i64* %41, align 8
  %171 = trunc i64 %170 to i32
  %172 = load i64, i64* %42, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i64 @__msa_ilvod_b(i32 %171, i32 %173)
  store i64 %174, i64* %30, align 8
  %175 = load i64, i64* %25, align 8
  %176 = load i64, i64* %26, align 8
  %177 = load i64, i64* %46, align 8
  %178 = load i64, i64* %48, align 8
  %179 = load i64, i64* %31, align 8
  %180 = load i64, i64* %32, align 8
  %181 = call i32 @ILVEV_H2_SW(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load i64, i64* %32, align 8
  %183 = load i64, i64* %31, align 8
  %184 = call i64 @__msa_ilvev_w(i64 %182, i64 %183)
  store i64 %184, i64* %41, align 8
  %185 = load i64, i64* %32, align 8
  %186 = load i64, i64* %31, align 8
  %187 = call i64 @__msa_ilvod_w(i64 %185, i64 %186)
  store i64 %187, i64* %45, align 8
  %188 = load i64, i64* %26, align 8
  %189 = load i64, i64* %25, align 8
  %190 = call i64 @__msa_ilvod_h(i64 %188, i64 %189)
  store i64 %190, i64* %31, align 8
  %191 = load i64, i64* %48, align 8
  %192 = load i64, i64* %46, align 8
  %193 = call i64 @__msa_ilvod_h(i64 %191, i64 %192)
  store i64 %193, i64* %32, align 8
  %194 = load i64, i64* %32, align 8
  %195 = load i64, i64* %31, align 8
  %196 = call i64 @__msa_ilvev_w(i64 %194, i64 %195)
  store i64 %196, i64* %43, align 8
  %197 = load i64, i64* %32, align 8
  %198 = load i64, i64* %31, align 8
  %199 = call i64 @__msa_ilvod_w(i64 %197, i64 %198)
  store i64 %199, i64* %47, align 8
  %200 = load i64, i64* %27, align 8
  %201 = load i64, i64* %28, align 8
  %202 = load i64, i64* %29, align 8
  %203 = load i64, i64* %30, align 8
  %204 = load i64, i64* %31, align 8
  %205 = load i64, i64* %32, align 8
  %206 = call i32 @ILVEV_H2_SW(i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %32, align 8
  %208 = load i64, i64* %31, align 8
  %209 = call i64 @__msa_ilvev_w(i64 %207, i64 %208)
  store i64 %209, i64* %42, align 8
  %210 = load i64, i64* %32, align 8
  %211 = load i64, i64* %31, align 8
  %212 = call i64 @__msa_ilvod_w(i64 %210, i64 %211)
  store i64 %212, i64* %46, align 8
  %213 = load i64, i64* %28, align 8
  %214 = load i64, i64* %27, align 8
  %215 = call i64 @__msa_ilvod_h(i64 %213, i64 %214)
  store i64 %215, i64* %31, align 8
  %216 = load i64, i64* %30, align 8
  %217 = load i64, i64* %29, align 8
  %218 = call i64 @__msa_ilvod_h(i64 %216, i64 %217)
  store i64 %218, i64* %32, align 8
  %219 = load i64, i64* %32, align 8
  %220 = load i64, i64* %31, align 8
  %221 = call i64 @__msa_ilvev_w(i64 %219, i64 %220)
  store i64 %221, i64* %44, align 8
  %222 = load i64, i64* %32, align 8
  %223 = load i64, i64* %31, align 8
  %224 = call i64 @__msa_ilvod_w(i64 %222, i64 %223)
  store i64 %224, i64* %48, align 8
  %225 = load i64, i64* %33, align 8
  %226 = load i64, i64* %34, align 8
  %227 = load i64, i64* %35, align 8
  %228 = load i64, i64* %36, align 8
  %229 = load i64, i64* %37, align 8
  %230 = load i64, i64* %38, align 8
  %231 = load i64, i64* %39, align 8
  %232 = load i64, i64* %40, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @ST_UB8(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i32* %233, i32 %234)
  %236 = load i32, i32* %8, align 4
  %237 = mul nsw i32 8, %236
  %238 = load i32*, i32** %7, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  store i32* %240, i32** %7, align 8
  %241 = load i64, i64* %41, align 8
  %242 = load i64, i64* %42, align 8
  %243 = load i64, i64* %43, align 8
  %244 = load i64, i64* %44, align 8
  %245 = load i64, i64* %45, align 8
  %246 = load i64, i64* %46, align 8
  %247 = load i64, i64* %47, align 8
  %248 = load i64, i64* %48, align 8
  %249 = load i32*, i32** %7, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @ST_UB8(i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i32* %249, i32 %250)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @TRANSPOSE16x8_UB_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvod_d(i32, i32) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvod_b(i32, i32) #1

declare dso_local i32 @ILVEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_H2_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvev_w(i64, i64) #1

declare dso_local i64 @__msa_ilvod_w(i64, i64) #1

declare dso_local i64 @__msa_ilvod_h(i64, i64) #1

declare dso_local i32 @ST_UB8(i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
