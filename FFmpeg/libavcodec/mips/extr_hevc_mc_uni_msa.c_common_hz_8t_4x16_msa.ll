; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_4x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_4x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_8t_4x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_4x16_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %29 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 16
  %31 = call i64 @LD_UB(i32* %30)
  store i64 %31, i64* %11, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -3
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @LD_SH(i32* %34)
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %22, align 4
  %40 = load i32, i32* %23, align 4
  %41 = call i32 @SPLATI_H4_SB(i32 %36, i32 0, i32 1, i32 2, i32 3, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = add nsw i64 %42, 2
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, 4
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %46, 6
  store i64 %47, i64* %14, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @LD_SB4(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @XORI_B4_128_SB(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 4, %60
  %62 = load i32*, i32** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %23, align 4
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* %26, align 4
  %79 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %65, i32 %66, i32 %67, i32 %68, i64 %69, i64 %70, i64 %71, i64 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @LD_SB4(i32* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @XORI_B4_128_SB(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 4, %92
  %94 = load i32*, i32** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %6, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %27, align 4
  %110 = load i32, i32* %28, align 4
  %111 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %97, i32 %98, i32 %99, i32 %100, i64 %101, i64 %102, i64 %103, i64 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %28, align 4
  %116 = call i32 @SRARI_H4_SH(i32 %112, i32 %113, i32 %114, i32 %115, i32 6)
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %26, align 4
  %119 = load i32, i32* %27, align 4
  %120 = load i32, i32* %28, align 4
  %121 = call i32 @SAT_SH4_SH(i32 %117, i32 %118, i32 %119, i32 %120, i32 7)
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = call i64 @PCKEV_XORI128_UB(i32 %122, i32 %123)
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @ST_W4(i64 %125, i32 0, i32 1, i32 2, i32 3, i32* %126, i32 %127)
  %129 = load i32, i32* %27, align 4
  %130 = load i32, i32* %28, align 4
  %131 = call i64 @PCKEV_XORI128_UB(i32 %129, i32 %130)
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = mul nsw i32 4, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @ST_W4(i64 %132, i32 0, i32 1, i32 2, i32 3, i32* %137, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 8, %140
  %142 = load i32*, i32** %8, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %8, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @LD_SB4(i32* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @XORI_B4_128_SB(i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 4, %157
  %159 = load i32*, i32** %6, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %6, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %26, align 4
  %176 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %162, i32 %163, i32 %164, i32 %165, i64 %166, i64 %167, i64 %168, i64 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @LD_SB4(i32* %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @XORI_B4_128_SB(i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 4, %189
  %191 = load i32*, i32** %6, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %6, align 8
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* %14, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %28, align 4
  %208 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %194, i32 %195, i32 %196, i32 %197, i64 %198, i64 %199, i64 %200, i64 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %28, align 4
  %213 = call i32 @SRARI_H4_SH(i32 %209, i32 %210, i32 %211, i32 %212, i32 6)
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* %28, align 4
  %218 = call i32 @SAT_SH4_SH(i32 %214, i32 %215, i32 %216, i32 %217, i32 7)
  %219 = load i32, i32* %25, align 4
  %220 = load i32, i32* %26, align 4
  %221 = call i64 @PCKEV_XORI128_UB(i32 %219, i32 %220)
  store i64 %221, i64* %15, align 8
  %222 = load i64, i64* %15, align 8
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @ST_W4(i64 %222, i32 0, i32 1, i32 2, i32 3, i32* %223, i32 %224)
  %226 = load i32, i32* %27, align 4
  %227 = load i32, i32* %28, align 4
  %228 = call i64 @PCKEV_XORI128_UB(i32 %226, i32 %227)
  store i64 %228, i64* %15, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %9, align 4
  %232 = mul nsw i32 4, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @ST_W4(i64 %229, i32 0, i32 1, i32 2, i32 3, i32* %234, i32 %235)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
