; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc02_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc02_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel8_mc02_msa(i32* %0, i32* %1, i32 %2) #0 {
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %7, align 4
  store i32 5140, i32* %8, align 4
  store i32 507, i32* %9, align 4
  %50 = call i64 @__msa_fill_h(i32 64257)
  store i64 %50, i64* %39, align 8
  %51 = call i64 @__msa_fill_h(i32 5140)
  store i64 %51, i64* %40, align 8
  %52 = call i64 @__msa_fill_h(i32 507)
  store i64 %52, i64* %41, align 8
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %53, 2
  %55 = load i32*, i32** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %21, align 8
  %69 = call i32 @LD_SB8(i32* %59, i32 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 8, %70
  %72 = load i32*, i32** %5, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %5, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i64, i64* %22, align 8
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* %24, align 8
  %80 = load i64, i64* %25, align 8
  %81 = load i64, i64* %26, align 8
  %82 = call i32 @LD_SB5(i32* %75, i32 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81)
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %27, align 8
  %92 = load i64, i64* %28, align 8
  %93 = load i64, i64* %29, align 8
  %94 = load i64, i64* %30, align 8
  %95 = call i32 @ILVR_B4_SB(i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %21, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %22, align 8
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* %31, align 8
  %105 = load i64, i64* %32, align 8
  %106 = load i64, i64* %33, align 8
  %107 = load i64, i64* %34, align 8
  %108 = call i32 @ILVR_B4_SB(i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %23, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %24, align 8
  %112 = load i64, i64* %23, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %24, align 8
  %115 = load i64, i64* %26, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i64, i64* %35, align 8
  %118 = load i64, i64* %36, align 8
  %119 = load i64, i64* %37, align 8
  %120 = load i64, i64* %38, align 8
  %121 = call i32 @ILVR_B4_SB(i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %27, align 8
  %123 = load i64, i64* %28, align 8
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* %30, align 8
  %126 = call i32 @XORI_B4_128_SB(i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %33, align 8
  %130 = load i64, i64* %34, align 8
  %131 = call i32 @XORI_B4_128_SB(i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i64, i64* %35, align 8
  %133 = load i64, i64* %36, align 8
  %134 = load i64, i64* %37, align 8
  %135 = load i64, i64* %38, align 8
  %136 = call i32 @XORI_B4_128_SB(i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i64, i64* %27, align 8
  %138 = load i64, i64* %29, align 8
  %139 = load i64, i64* %31, align 8
  %140 = load i64, i64* %39, align 8
  %141 = load i64, i64* %40, align 8
  %142 = load i64, i64* %41, align 8
  %143 = call i32 @AVC_DOT_SH3_SH(i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  store i32 %143, i32* %42, align 4
  %144 = load i64, i64* %28, align 8
  %145 = load i64, i64* %30, align 8
  %146 = load i64, i64* %32, align 8
  %147 = load i64, i64* %39, align 8
  %148 = load i64, i64* %40, align 8
  %149 = load i64, i64* %41, align 8
  %150 = call i32 @AVC_DOT_SH3_SH(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  store i32 %150, i32* %43, align 4
  %151 = load i64, i64* %29, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %33, align 8
  %154 = load i64, i64* %39, align 8
  %155 = load i64, i64* %40, align 8
  %156 = load i64, i64* %41, align 8
  %157 = call i32 @AVC_DOT_SH3_SH(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  store i32 %157, i32* %44, align 4
  %158 = load i64, i64* %30, align 8
  %159 = load i64, i64* %32, align 8
  %160 = load i64, i64* %34, align 8
  %161 = load i64, i64* %39, align 8
  %162 = load i64, i64* %40, align 8
  %163 = load i64, i64* %41, align 8
  %164 = call i32 @AVC_DOT_SH3_SH(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  store i32 %164, i32* %45, align 4
  %165 = load i64, i64* %31, align 8
  %166 = load i64, i64* %33, align 8
  %167 = load i64, i64* %35, align 8
  %168 = load i64, i64* %39, align 8
  %169 = load i64, i64* %40, align 8
  %170 = load i64, i64* %41, align 8
  %171 = call i32 @AVC_DOT_SH3_SH(i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  store i32 %171, i32* %46, align 4
  %172 = load i64, i64* %32, align 8
  %173 = load i64, i64* %34, align 8
  %174 = load i64, i64* %36, align 8
  %175 = load i64, i64* %39, align 8
  %176 = load i64, i64* %40, align 8
  %177 = load i64, i64* %41, align 8
  %178 = call i32 @AVC_DOT_SH3_SH(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  store i32 %178, i32* %47, align 4
  %179 = load i64, i64* %33, align 8
  %180 = load i64, i64* %35, align 8
  %181 = load i64, i64* %37, align 8
  %182 = load i64, i64* %39, align 8
  %183 = load i64, i64* %40, align 8
  %184 = load i64, i64* %41, align 8
  %185 = call i32 @AVC_DOT_SH3_SH(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  store i32 %185, i32* %48, align 4
  %186 = load i64, i64* %34, align 8
  %187 = load i64, i64* %36, align 8
  %188 = load i64, i64* %38, align 8
  %189 = load i64, i64* %39, align 8
  %190 = load i64, i64* %40, align 8
  %191 = load i64, i64* %41, align 8
  %192 = call i32 @AVC_DOT_SH3_SH(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  store i32 %192, i32* %49, align 4
  %193 = load i32, i32* %42, align 4
  %194 = load i32, i32* %43, align 4
  %195 = load i32, i32* %44, align 4
  %196 = load i32, i32* %45, align 4
  %197 = call i32 @SRARI_H4_SH(i32 %193, i32 %194, i32 %195, i32 %196, i32 5)
  %198 = load i32, i32* %46, align 4
  %199 = load i32, i32* %47, align 4
  %200 = load i32, i32* %48, align 4
  %201 = load i32, i32* %49, align 4
  %202 = call i32 @SRARI_H4_SH(i32 %198, i32 %199, i32 %200, i32 %201, i32 5)
  %203 = load i32, i32* %42, align 4
  %204 = load i32, i32* %43, align 4
  %205 = load i32, i32* %44, align 4
  %206 = load i32, i32* %45, align 4
  %207 = call i32 @SAT_SH4_SH(i32 %203, i32 %204, i32 %205, i32 %206, i32 7)
  %208 = load i32, i32* %46, align 4
  %209 = load i32, i32* %47, align 4
  %210 = load i32, i32* %48, align 4
  %211 = load i32, i32* %49, align 4
  %212 = call i32 @SAT_SH4_SH(i32 %208, i32 %209, i32 %210, i32 %211, i32 7)
  %213 = load i32, i32* %42, align 4
  %214 = load i32, i32* %43, align 4
  %215 = call i32 @PCKEV_XORI128_UB(i32 %213, i32 %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %44, align 4
  %217 = load i32, i32* %45, align 4
  %218 = call i32 @PCKEV_XORI128_UB(i32 %216, i32 %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %46, align 4
  %220 = load i32, i32* %47, align 4
  %221 = call i32 @PCKEV_XORI128_UB(i32 %219, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %48, align 4
  %223 = load i32, i32* %49, align 4
  %224 = call i32 @PCKEV_XORI128_UB(i32 %222, i32 %223)
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32*, i32** %4, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @ST_D8(i32 %225, i32 %226, i32 %227, i32 %228, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %229, i32 %230)
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
