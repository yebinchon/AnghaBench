; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_addblk_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_addblk_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @hevc_addblk_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_addblk_8x8_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %26 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %7, align 8
  %28 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  %29 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = bitcast %struct.TYPE_8__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %22, align 4
  %37 = load i32, i32* %23, align 4
  %38 = load i32, i32* %24, align 4
  %39 = load i32, i32* %25, align 4
  %40 = call i32 @LD_SH8(i32* %31, i32 8, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @LD4(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 4, %48
  %50 = load i32*, i32** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @INSERT_D2_SD(i32 %53, i32 %54, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @INSERT_D2_SD(i32 %58, i32 %59, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ILVRL_B2_SH(i32 %66, i32 %68, i32 %63, i32 %64)
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %17, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ILVRL_B2_SH(i32 %73, i32 %75, i32 %70, i32 %71)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @ADD4(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @CLIP_SH4_0_255(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @PCKEV_B2_SH(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ST_D4(i32 %102, i32 %103, i32 0, i32 1, i32 0, i32 1, i32* %104, i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @LD4(i32* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @INSERT_D2_SD(i32 %114, i32 %115, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @INSERT_D2_SD(i32 %119, i32 %120, i32 %122)
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @UNPCK_UB_SH(i32 %127, i32 %124, i32 %125)
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @UNPCK_UB_SH(i32 %132, i32 %129, i32 %130)
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @ADD4(i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @CLIP_SH4_0_255(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @PCKEV_B2_SH(i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = mul nsw i32 4, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @ST_D4(i32 %159, i32 %160, i32 0, i32 1, i32 0, i32 1, i32* %165, i32 %166)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_D2_SD(i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @UNPCK_UB_SH(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
