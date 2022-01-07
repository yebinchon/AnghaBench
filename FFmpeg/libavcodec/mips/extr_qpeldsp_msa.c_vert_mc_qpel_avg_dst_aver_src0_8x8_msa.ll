; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_avg_dst_aver_src0_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_avg_dst_aver_src0_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_avg_dst_aver_src0_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_avg_dst_aver_src0_8x8_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %29 = call i64 @__msa_ldi_b(i32 20)
  store i64 %29, i64* %26, align 8
  %30 = call i64 @__msa_ldi_b(i32 6)
  store i64 %30, i64* %27, align 8
  %31 = call i64 @__msa_ldi_b(i32 3)
  store i64 %31, i64* %28, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @LD_UB4(i32* %32, i32 %33, i64 %34, i64 %35, i64 %36, i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 4, %39
  %41 = load i32*, i32** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @LD_UB2(i32* %44, i32 %45, i64 %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 2, %49
  %51 = load i32*, i32** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %26, align 8
  %71 = load i64, i64* %27, align 8
  %72 = load i64, i64* %28, align 8
  %73 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72)
  store i64 %73, i64* %24, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = call i32 @LD_UB2(i32* %74, i32 %75, i64 %76, i64 %77)
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 2, %79
  %81 = load i32*, i32** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %5, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %26, align 8
  %101 = load i64, i64* %27, align 8
  %102 = load i64, i64* %28, align 8
  %103 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  store i64 %103, i64* %25, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %21, align 8
  %110 = call i32 @LD_UB4(i32* %104, i32 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %111 = load i64, i64* %9, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i64, i64* %10, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i64 @__msa_insve_d(i32 %112, i32 1, i32 %114)
  store i64 %115, i64* %22, align 8
  %116 = load i64, i64* %11, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %12, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @__msa_insve_d(i32 %117, i32 1, i32 %119)
  store i64 %120, i64* %23, align 8
  %121 = load i64, i64* %18, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* %19, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i64 @__msa_insve_d(i32 %122, i32 1, i32 %124)
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %20, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i64, i64* %21, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @__msa_insve_d(i32 %127, i32 1, i32 %129)
  store i64 %130, i64* %20, align 8
  %131 = load i64, i64* %24, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load i64, i64* %25, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %24, align 8
  %136 = load i64, i64* %25, align 8
  %137 = call i32 @AVER_UB2_UB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %25, align 8
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %25, align 8
  %144 = call i32 @AVER_UB2_UB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %24, align 8
  %146 = load i64, i64* %25, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @ST_D4(i64 %145, i64 %146, i32 0, i32 1, i32 0, i32 1, i32* %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = mul nsw i32 4, %150
  %152 = load i32*, i32** %7, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %7, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = call i64 @LD_UB(i32* %155)
  store i64 %156, i64* %17, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %15, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* %26, align 8
  %174 = load i64, i64* %27, align 8
  %175 = load i64, i64* %28, align 8
  %176 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  store i64 %176, i64* %24, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %16, align 8
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %13, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* %17, align 8
  %191 = load i64, i64* %16, align 8
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* %26, align 8
  %194 = load i64, i64* %27, align 8
  %195 = load i64, i64* %28, align 8
  %196 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  store i64 %196, i64* %25, align 8
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i64, i64* %18, align 8
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %20, align 8
  %202 = load i64, i64* %21, align 8
  %203 = call i32 @LD_UB4(i32* %197, i32 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i64, i64* %13, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i64, i64* %14, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i64 @__msa_insve_d(i32 %205, i32 1, i32 %207)
  store i64 %208, i64* %22, align 8
  %209 = load i64, i64* %15, align 8
  %210 = trunc i64 %209 to i32
  %211 = load i64, i64* %16, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i64 @__msa_insve_d(i32 %210, i32 1, i32 %212)
  store i64 %213, i64* %23, align 8
  %214 = load i64, i64* %18, align 8
  %215 = trunc i64 %214 to i32
  %216 = load i64, i64* %19, align 8
  %217 = trunc i64 %216 to i32
  %218 = call i64 @__msa_insve_d(i32 %215, i32 1, i32 %217)
  store i64 %218, i64* %18, align 8
  %219 = load i64, i64* %20, align 8
  %220 = trunc i64 %219 to i32
  %221 = load i64, i64* %21, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i64 @__msa_insve_d(i32 %220, i32 1, i32 %222)
  store i64 %223, i64* %20, align 8
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* %22, align 8
  %226 = load i64, i64* %25, align 8
  %227 = load i64, i64* %23, align 8
  %228 = load i64, i64* %24, align 8
  %229 = load i64, i64* %25, align 8
  %230 = call i32 @AVER_UB2_UB(i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229)
  %231 = load i64, i64* %18, align 8
  %232 = load i64, i64* %24, align 8
  %233 = load i64, i64* %20, align 8
  %234 = load i64, i64* %25, align 8
  %235 = load i64, i64* %24, align 8
  %236 = load i64, i64* %25, align 8
  %237 = call i32 @AVER_UB2_UB(i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  %238 = load i64, i64* %24, align 8
  %239 = load i64, i64* %25, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @ST_D4(i64 %238, i64 %239, i32 0, i32 1, i32 0, i32 1, i32* %240, i32 %241)
  ret void
}

declare dso_local i64 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_insve_d(i32, i32, i32) #1

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @LD_UB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
