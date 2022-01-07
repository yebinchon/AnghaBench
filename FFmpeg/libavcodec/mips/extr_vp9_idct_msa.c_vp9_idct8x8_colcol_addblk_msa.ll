; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct8x8_colcol_addblk_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct8x8_colcol_addblk_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_58__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @vp9_idct8x8_colcol_addblk_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_idct8x8_colcol_addblk_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_58__, align 4
  %8 = alloca %struct.TYPE_58__, align 4
  %9 = alloca %struct.TYPE_58__, align 4
  %10 = alloca %struct.TYPE_58__, align 4
  %11 = alloca %struct.TYPE_58__, align 4
  %12 = alloca %struct.TYPE_58__, align 4
  %13 = alloca %struct.TYPE_58__, align 4
  %14 = alloca %struct.TYPE_58__, align 4
  %15 = alloca %struct.TYPE_58__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = bitcast %struct.TYPE_58__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LD_SH8(i32* %17, i32 8, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ST_SH8(i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32* %35, i32 8)
  %53 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @VP9_IDCT8x8_1D(i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @TRANSPOSE8x8_SH_SH(i32 %87, i32 %89, i32 %91, i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @VP9_IDCT8x8_1D(i32 %120, i32 %122, i32 %124, i32 %126, i32 %128, i32 %130, i32 %132, i32 %134, i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, i32 %146, i32 %148, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @SRARI_H4_SH(i32 %153, i32 %155, i32 %157, i32 %159, i32 5)
  %161 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @SRARI_H4_SH(i32 %162, i32 %164, i32 %166, i32 %168, i32 5)
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %7, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %9, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %10, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %170, i32 %171, i32 %173, i32 %175, i32 %177, i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = mul nsw i32 4, %181
  %183 = load i32*, i32** %5, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %5, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %11, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %12, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %13, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %14, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @VP9_ADDBLK_ST8x4_UB(i32* %186, i32 %187, i32 %189, i32 %191, i32 %193, i32 %195)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @VP9_IDCT8x8_1D(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @TRANSPOSE8x8_SH_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @VP9_ADDBLK_ST8x4_UB(i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
