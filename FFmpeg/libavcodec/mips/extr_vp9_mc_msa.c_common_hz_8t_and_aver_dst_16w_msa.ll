; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_and_aver_dst_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_and_aver_dst_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %49 = load i32*, i32** @mc_filt_mask_arr, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i64 @LD_UB(i32* %50)
  store i64 %51, i64* %22, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -3
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @LD_SH(i32* %54)
  store i32 %55, i32* %28, align 4
  %56 = load i32, i32* %28, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @SPLATI_H4_SB(i32 %56, i32 0, i32 1, i32 2, i32 3, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i64, i64* %22, align 8
  %63 = add nsw i64 %62, 2
  store i64 %63, i64* %23, align 8
  %64 = load i64, i64* %22, align 8
  %65 = add nsw i64 %64, 4
  store i64 %65, i64* %24, align 8
  %66 = load i64, i64* %22, align 8
  %67 = add nsw i64 %66, 6
  store i64 %67, i64* %25, align 8
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %74, %6
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %13, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %238

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @LD_SB2(i32* %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @LD_SB2(i32* %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 2, %86
  %88 = load i32*, i32** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %7, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @XORI_B4_128_SB(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i64, i64* %22, align 8
  %99 = load i64, i64* %23, align 8
  %100 = load i64, i64* %24, align 8
  %101 = load i64, i64* %25, align 8
  %102 = load i32, i32* %33, align 4
  %103 = load i32, i32* %37, align 4
  %104 = load i32, i32* %41, align 4
  %105 = load i32, i32* %45, align 4
  %106 = call i32 @VSHF_B4_SH(i32 %96, i32 %97, i64 %98, i64 %99, i64 %100, i64 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i64, i64* %22, align 8
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %24, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i32, i32* %34, align 4
  %114 = load i32, i32* %38, align 4
  %115 = load i32, i32* %42, align 4
  %116 = load i32, i32* %46, align 4
  %117 = call i32 @VSHF_B4_SH(i32 %107, i32 %108, i64 %109, i64 %110, i64 %111, i64 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* %25, align 8
  %124 = load i32, i32* %35, align 4
  %125 = load i32, i32* %39, align 4
  %126 = load i32, i32* %43, align 4
  %127 = load i32, i32* %47, align 4
  %128 = call i32 @VSHF_B4_SH(i32 %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* %23, align 8
  %133 = load i64, i64* %24, align 8
  %134 = load i64, i64* %25, align 8
  %135 = load i32, i32* %36, align 4
  %136 = load i32, i32* %40, align 4
  %137 = load i32, i32* %44, align 4
  %138 = load i32, i32* %48, align 4
  %139 = call i32 @VSHF_B4_SH(i32 %129, i32 %130, i64 %131, i64 %132, i64 %133, i64 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %33, align 4
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %35, align 4
  %143 = load i32, i32* %36, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %34, align 4
  %150 = load i32, i32* %35, align 4
  %151 = load i32, i32* %36, align 4
  %152 = call i32 @DOTP_SB4_SH(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %41, align 4
  %154 = load i32, i32* %42, align 4
  %155 = load i32, i32* %43, align 4
  %156 = load i32, i32* %44, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %41, align 4
  %162 = load i32, i32* %42, align 4
  %163 = load i32, i32* %43, align 4
  %164 = load i32, i32* %44, align 4
  %165 = call i32 @DOTP_SB4_SH(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %37, align 4
  %167 = load i32, i32* %38, align 4
  %168 = load i32, i32* %39, align 4
  %169 = load i32, i32* %40, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %33, align 4
  %175 = load i32, i32* %34, align 4
  %176 = load i32, i32* %35, align 4
  %177 = load i32, i32* %36, align 4
  %178 = call i32 @DPADD_SB4_SH(i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %45, align 4
  %180 = load i32, i32* %46, align 4
  %181 = load i32, i32* %47, align 4
  %182 = load i32, i32* %48, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %41, align 4
  %188 = load i32, i32* %42, align 4
  %189 = load i32, i32* %43, align 4
  %190 = load i32, i32* %44, align 4
  %191 = call i32 @DPADD_SB4_SH(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %33, align 4
  %193 = load i32, i32* %41, align 4
  %194 = load i32, i32* %34, align 4
  %195 = load i32, i32* %42, align 4
  %196 = load i32, i32* %35, align 4
  %197 = load i32, i32* %43, align 4
  %198 = load i32, i32* %36, align 4
  %199 = load i32, i32* %44, align 4
  %200 = load i32, i32* %29, align 4
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* %31, align 4
  %203 = load i32, i32* %32, align 4
  %204 = call i32 @ADDS_SH4_SH(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i64, i64* %26, align 8
  %208 = load i64, i64* %27, align 8
  %209 = call i32 @LD_UB2(i32* %205, i32 %206, i64 %207, i64 %208)
  %210 = load i32, i32* %29, align 4
  %211 = load i32, i32* %30, align 4
  %212 = load i32, i32* %31, align 4
  %213 = load i32, i32* %32, align 4
  %214 = call i32 @SRARI_H4_SH(i32 %210, i32 %211, i32 %212, i32 %213, i32 7)
  %215 = load i32, i32* %29, align 4
  %216 = load i32, i32* %30, align 4
  %217 = load i32, i32* %31, align 4
  %218 = load i32, i32* %32, align 4
  %219 = call i32 @SAT_SH4_SH(i32 %215, i32 %216, i32 %217, i32 %218, i32 7)
  %220 = load i32, i32* %30, align 4
  %221 = load i32, i32* %29, align 4
  %222 = load i64, i64* %26, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = call i32 @PCKEV_XORI128_AVG_ST_UB(i32 %220, i32 %221, i64 %222, i32* %223)
  %225 = load i32, i32* %10, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %9, align 8
  %229 = load i32, i32* %32, align 4
  %230 = load i32, i32* %31, align 4
  %231 = load i64, i64* %27, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = call i32 @PCKEV_XORI128_AVG_ST_UB(i32 %229, i32 %230, i64 %231, i32* %232)
  %234 = load i32, i32* %10, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %9, align 8
  br label %70

238:                                              ; preds = %70
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B4_SH(i32, i32, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADDS_SH4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_AVG_ST_UB(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
