; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_avg_dst_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_avg_dst_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_avg_dst_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_avg_dst_8x8_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = call i64 @__msa_ldi_b(i32 20)
  store i64 %27, i64* %24, align 8
  %28 = call i64 @__msa_ldi_b(i32 6)
  store i64 %28, i64* %25, align 8
  %29 = call i64 @__msa_ldi_b(i32 3)
  store i64 %29, i64* %26, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @LD_UB4(i32* %30, i32 %31, i64 %32, i64 %33, i64 %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 4, %37
  %39 = load i32*, i32** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @LD_UB2(i32* %42, i32 %43, i64 %44, i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 2, %47
  %49 = load i32*, i32** %5, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %24, align 8
  %69 = load i64, i64* %25, align 8
  %70 = load i64, i64* %26, align 8
  %71 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  store i64 %71, i64* %22, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @LD_UB2(i32* %72, i32 %73, i64 %74, i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 2, %77
  %79 = load i32*, i32** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %24, align 8
  %99 = load i64, i64* %25, align 8
  %100 = load i64, i64* %26, align 8
  %101 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100)
  store i64 %101, i64* %23, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = call i32 @LD_UB4(i32* %102, i32 %103, i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %18, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* %19, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i64 @__msa_insve_d(i32 %110, i32 1, i32 %112)
  store i64 %113, i64* %18, align 8
  %114 = load i64, i64* %20, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %21, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @__msa_insve_d(i32 %115, i32 1, i32 %117)
  store i64 %118, i64* %20, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %22, align 8
  %124 = load i64, i64* %23, align 8
  %125 = call i32 @AVER_UB2_UB(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %23, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @ST_D4(i64 %126, i64 %127, i32 0, i32 1, i32 0, i32 1, i32* %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 4, %131
  %133 = load i32*, i32** %7, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %7, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i64 @LD_UB(i32* %136)
  store i64 %137, i64* %17, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %24, align 8
  %155 = load i64, i64* %25, align 8
  %156 = load i64, i64* %26, align 8
  %157 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  store i64 %157, i64* %22, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %24, align 8
  %175 = load i64, i64* %25, align 8
  %176 = load i64, i64* %26, align 8
  %177 = call i64 @APPLY_VERT_QPEL_FILTER_8BYTE(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  store i64 %177, i64* %23, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i64, i64* %18, align 8
  %181 = load i64, i64* %19, align 8
  %182 = load i64, i64* %20, align 8
  %183 = load i64, i64* %21, align 8
  %184 = call i32 @LD_UB4(i32* %178, i32 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %18, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i64, i64* %19, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i64 @__msa_insve_d(i32 %186, i32 1, i32 %188)
  store i64 %189, i64* %18, align 8
  %190 = load i64, i64* %20, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i64, i64* %21, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i64 @__msa_insve_d(i32 %191, i32 1, i32 %193)
  store i64 %194, i64* %20, align 8
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* %22, align 8
  %197 = load i64, i64* %20, align 8
  %198 = load i64, i64* %23, align 8
  %199 = load i64, i64* %22, align 8
  %200 = load i64, i64* %23, align 8
  %201 = call i32 @AVER_UB2_UB(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200)
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %23, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @ST_D4(i64 %202, i64 %203, i32 0, i32 1, i32 0, i32 1, i32* %204, i32 %205)
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
