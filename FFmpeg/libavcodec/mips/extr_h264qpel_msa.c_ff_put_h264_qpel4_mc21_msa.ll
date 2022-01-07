; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc21_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel4_mc21_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel4_mc21_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %47 = load i32*, i32** @luma_mask_arr, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 48
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %22, align 4
  %52 = call i32 @LD_SB3(i32* %48, i32 16, i32 %49, i32 %50, i32 %51)
  %53 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %53, i64* %34, align 8
  %54 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %54, i64* %35, align 8
  %55 = call i64 @__msa_fill_w(i32 131067)
  store i64 %55, i64* %36, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %57, 2
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @LD_SB5(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 5, %71
  %73 = load i32*, i32** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @LD_SB4(i32* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @XORI_B5_128_SB(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @XORI_B4_128_SB(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = call i64 @AVC_HORZ_FILTER_SH(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  store i64 %99, i64* %23, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %22, align 4
  %105 = call i64 @AVC_HORZ_FILTER_SH(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  store i64 %105, i64* %25, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = call i64 @AVC_HORZ_FILTER_SH(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  store i64 %111, i64* %27, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %22, align 4
  %117 = call i64 @AVC_HORZ_FILTER_SH(i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  store i64 %117, i64* %29, align 8
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %22, align 4
  %123 = call i64 @AVC_HORZ_FILTER_SH(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  store i64 %123, i64* %31, align 8
  %124 = load i64, i64* %23, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i64, i64* %25, align 8
  %127 = load i64, i64* %25, align 8
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* %26, align 8
  %130 = call i32 @PCKOD_D2_SH(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %29, align 8
  %134 = load i64, i64* %29, align 8
  %135 = load i64, i64* %28, align 8
  %136 = load i64, i64* %30, align 8
  %137 = call i32 @PCKOD_D2_SH(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %25, align 8
  %141 = load i64, i64* %24, align 8
  %142 = load i64, i64* %26, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %27, align 8
  %145 = load i64, i64* %26, align 8
  %146 = load i64, i64* %37, align 8
  %147 = load i64, i64* %38, align 8
  %148 = load i64, i64* %39, align 8
  %149 = load i64, i64* %40, align 8
  %150 = call i32 @ILVR_H4_SH(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %28, align 8
  %152 = load i64, i64* %27, align 8
  %153 = load i64, i64* %29, align 8
  %154 = load i64, i64* %28, align 8
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* %31, align 8
  %158 = load i64, i64* %30, align 8
  %159 = load i64, i64* %41, align 8
  %160 = load i64, i64* %42, align 8
  %161 = load i64, i64* %43, align 8
  %162 = load i64, i64* %44, align 8
  %163 = call i32 @ILVR_H4_SH(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %37, align 8
  %165 = load i64, i64* %39, align 8
  %166 = load i64, i64* %41, align 8
  %167 = load i64, i64* %34, align 8
  %168 = load i64, i64* %35, align 8
  %169 = load i64, i64* %36, align 8
  %170 = call i64 @AVC_DOT_SW3_SW(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  store i64 %170, i64* %45, align 8
  %171 = load i64, i64* %38, align 8
  %172 = load i64, i64* %40, align 8
  %173 = load i64, i64* %42, align 8
  %174 = load i64, i64* %34, align 8
  %175 = load i64, i64* %35, align 8
  %176 = load i64, i64* %36, align 8
  %177 = call i64 @AVC_DOT_SW3_SW(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  store i64 %177, i64* %46, align 8
  %178 = load i64, i64* %46, align 8
  %179 = load i64, i64* %45, align 8
  %180 = call i64 @__msa_pckev_h(i64 %178, i64 %179)
  store i64 %180, i64* %32, align 8
  %181 = load i64, i64* %39, align 8
  %182 = load i64, i64* %41, align 8
  %183 = load i64, i64* %43, align 8
  %184 = load i64, i64* %34, align 8
  %185 = load i64, i64* %35, align 8
  %186 = load i64, i64* %36, align 8
  %187 = call i64 @AVC_DOT_SW3_SW(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  store i64 %187, i64* %45, align 8
  %188 = load i64, i64* %40, align 8
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %44, align 8
  %191 = load i64, i64* %34, align 8
  %192 = load i64, i64* %35, align 8
  %193 = load i64, i64* %36, align 8
  %194 = call i64 @AVC_DOT_SW3_SW(i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  store i64 %194, i64* %46, align 8
  %195 = load i64, i64* %46, align 8
  %196 = load i64, i64* %45, align 8
  %197 = call i64 @__msa_pckev_h(i64 %195, i64 %196)
  store i64 %197, i64* %33, align 8
  %198 = load i64, i64* %25, align 8
  %199 = load i64, i64* %27, align 8
  %200 = call i32 @SRARI_H2_SH(i64 %198, i64 %199, i32 5)
  %201 = load i64, i64* %25, align 8
  %202 = load i64, i64* %27, align 8
  %203 = call i32 @SAT_SH2_SH(i64 %201, i64 %202, i32 7)
  %204 = load i64, i64* %32, align 8
  %205 = load i64, i64* %25, align 8
  %206 = call i64 @__msa_aver_s_h(i64 %204, i64 %205)
  store i64 %206, i64* %32, align 8
  %207 = load i64, i64* %33, align 8
  %208 = load i64, i64* %27, align 8
  %209 = call i64 @__msa_aver_s_h(i64 %207, i64 %208)
  store i64 %209, i64* %33, align 8
  %210 = load i64, i64* %32, align 8
  %211 = load i64, i64* %33, align 8
  %212 = call i32 @PCKEV_XORI128_UB(i64 %210, i64 %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32*, i32** %4, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @ST_W4(i32 %213, i32 0, i32 1, i32 2, i32 3, i32* %214, i32 %215)
  ret void
}

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKOD_D2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i64 @__msa_aver_s_h(i64, i64) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
