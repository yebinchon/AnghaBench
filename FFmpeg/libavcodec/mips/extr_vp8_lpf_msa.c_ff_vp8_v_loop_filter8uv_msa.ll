; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_v_loop_filter8uv_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_v_loop_filter8uv_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_v_loop_filter8uv_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
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
  %49 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @__msa_fill_b(i32 %50)
  store i64 %51, i64* %33, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @__msa_fill_b(i32 %52)
  store i64 %53, i64* %32, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @__msa_fill_b(i32 %54)
  store i64 %55, i64* %31, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %34, align 8
  %65 = load i64, i64* %35, align 8
  %66 = load i64, i64* %36, align 8
  %67 = load i64, i64* %37, align 8
  %68 = load i64, i64* %41, align 8
  %69 = load i64, i64* %40, align 8
  %70 = load i64, i64* %39, align 8
  %71 = load i64, i64* %38, align 8
  %72 = call i32 @LD_UB8(i32* %62, i32 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i64, i64* %42, align 8
  %82 = load i64, i64* %43, align 8
  %83 = load i64, i64* %44, align 8
  %84 = load i64, i64* %45, align 8
  %85 = load i64, i64* %49, align 8
  %86 = load i64, i64* %48, align 8
  %87 = load i64, i64* %47, align 8
  %88 = load i64, i64* %46, align 8
  %89 = call i32 @LD_UB8(i32* %79, i32 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i64, i64* %42, align 8
  %91 = load i64, i64* %34, align 8
  %92 = load i64, i64* %43, align 8
  %93 = load i64, i64* %35, align 8
  %94 = load i64, i64* %44, align 8
  %95 = load i64, i64* %36, align 8
  %96 = load i64, i64* %45, align 8
  %97 = load i64, i64* %37, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* %23, align 8
  %102 = call i32 @ILVR_D4_UB(i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i64, i64* %49, align 8
  %104 = load i64, i64* %41, align 8
  %105 = load i64, i64* %48, align 8
  %106 = load i64, i64* %40, align 8
  %107 = load i64, i64* %47, align 8
  %108 = load i64, i64* %39, align 8
  %109 = load i64, i64* %46, align 8
  %110 = load i64, i64* %38, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %26, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %24, align 8
  %115 = call i32 @ILVR_D4_UB(i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %27, align 8
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* %32, align 8
  %125 = load i64, i64* %33, align 8
  %126 = load i64, i64* %31, align 8
  %127 = load i64, i64* %29, align 8
  %128 = load i64, i64* %28, align 8
  %129 = load i64, i64* %30, align 8
  %130 = call i32 @LPF_MASK_HEV(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %21, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load i64, i64* %23, align 8
  %134 = load i64, i64* %27, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %25, align 8
  %137 = load i64, i64* %28, align 8
  %138 = load i64, i64* %29, align 8
  %139 = call i32 @VP8_MBFILTER(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %21, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @__msa_copy_u_d(i32 %141, i32 0)
  store i32 %142, i32* %14, align 4
  %143 = load i64, i64* %22, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @__msa_copy_u_d(i32 %144, i32 0)
  store i32 %145, i32* %15, align 4
  %146 = load i64, i64* %23, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @__msa_copy_u_d(i32 %147, i32 0)
  store i32 %148, i32* %16, align 4
  %149 = load i64, i64* %27, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @__msa_copy_u_d(i32 %150, i32 0)
  store i32 %151, i32* %17, align 4
  %152 = load i64, i64* %26, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 @__msa_copy_u_d(i32 %153, i32 0)
  store i32 %154, i32* %18, align 4
  %155 = load i64, i64* %25, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @__msa_copy_u_d(i32 %156, i32 0)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %158, 3
  %160 = load i32*, i32** %7, align 8
  %161 = sext i32 %159 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32* %163, i32** %7, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @SD4(i32 %164, i32 %165, i32 %166, i32 %167, i32* %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = mul nsw i32 4, %171
  %173 = load i32*, i32** %7, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %7, align 8
  %176 = load i32, i32* %18, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @SD(i32 %176, i32* %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %7, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @SD(i32 %183, i32* %184)
  %186 = load i64, i64* %21, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @__msa_copy_u_d(i32 %187, i32 1)
  store i32 %188, i32* %14, align 4
  %189 = load i64, i64* %22, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @__msa_copy_u_d(i32 %190, i32 1)
  store i32 %191, i32* %15, align 4
  %192 = load i64, i64* %23, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @__msa_copy_u_d(i32 %193, i32 1)
  store i32 %194, i32* %16, align 4
  %195 = load i64, i64* %27, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @__msa_copy_u_d(i32 %196, i32 1)
  store i32 %197, i32* %17, align 4
  %198 = load i64, i64* %26, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @__msa_copy_u_d(i32 %199, i32 1)
  store i32 %200, i32* %18, align 4
  %201 = load i64, i64* %25, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @__msa_copy_u_d(i32 %202, i32 1)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %9, align 4
  %205 = mul nsw i32 %204, 3
  %206 = load i32*, i32** %8, align 8
  %207 = sext i32 %205 to i64
  %208 = sub i64 0, %207
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32* %209, i32** %8, align 8
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @SD4(i32 %210, i32 %211, i32 %212, i32 %213, i32* %214, i32 %215)
  %217 = load i32, i32* %9, align 4
  %218 = mul nsw i32 4, %217
  %219 = load i32*, i32** %8, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %8, align 8
  %222 = load i32, i32* %18, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = call i32 @SD(i32 %222, i32* %223)
  %225 = load i32, i32* %9, align 4
  %226 = load i32*, i32** %8, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %8, align 8
  %229 = load i32, i32* %19, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = call i32 @SD(i32 %229, i32* %230)
  ret void
}

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP8_MBFILTER(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SD(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
