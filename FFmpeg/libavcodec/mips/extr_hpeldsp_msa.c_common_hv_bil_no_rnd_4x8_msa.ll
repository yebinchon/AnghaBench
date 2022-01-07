; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_no_rnd_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_no_rnd_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @common_hv_bil_no_rnd_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_bil_no_rnd_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__, align 4
  %10 = alloca %struct.TYPE_36__, align 4
  %11 = alloca %struct.TYPE_36__, align 4
  %12 = alloca %struct.TYPE_36__, align 4
  %13 = alloca %struct.TYPE_36__, align 4
  %14 = alloca %struct.TYPE_36__, align 4
  %15 = alloca %struct.TYPE_36__, align 4
  %16 = alloca %struct.TYPE_36__, align 4
  %17 = alloca %struct.TYPE_36__, align 4
  %18 = alloca %struct.TYPE_36__, align 4
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
  %33 = alloca %struct.TYPE_36__, align 4
  %34 = alloca %struct.TYPE_36__, align 4
  %35 = alloca %struct.TYPE_36__, align 4
  %36 = alloca %struct.TYPE_36__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %37 = bitcast %struct.TYPE_36__* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 4, i1 false)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @LD_SB4(i32* %38, i32 %39, i32 %41, i32 %43, i32 %45, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 4, %49
  %51 = load i32*, i32** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @LD_SB(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.TYPE_36__* %13 to i8*
  %58 = bitcast %struct.TYPE_36__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %15, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SLDI_B3_SB(i32 %60, i32 %62, i32 %64, i32 %66, i32 %68, i32 %70, i32 1, i32 %72, i32 %74, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SLDI_B2_SB(i32 %79, i32 %81, i32 %83, i32 %85, i32 1, i32 %87, i32 %89)
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %15, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ILVR_B3_UH(i32 %95, i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i64 %91, i64 %92, i64 %93)
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ILVR_B2_UH(i32 %110, i32 %112, i32 %114, i32 %116, i64 %107, i64 %108)
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* %21, align 8
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i64, i64* %26, align 8
  %124 = call i32 @HADD_UB3_UH(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %27, align 8
  %128 = load i64, i64* %28, align 8
  %129 = call i32 @HADD_UB2_UH(i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %25, align 8
  %132 = add nsw i64 %130, %131
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %29, align 8
  %134 = load i64, i64* %25, align 8
  %135 = load i64, i64* %26, align 8
  %136 = add nsw i64 %134, %135
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %30, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %27, align 8
  %140 = add nsw i64 %138, %139
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %31, align 8
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %28, align 8
  %144 = add nsw i64 %142, %143
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %32, align 8
  %146 = load i64, i64* %29, align 8
  %147 = load i64, i64* %30, align 8
  %148 = load i64, i64* %31, align 8
  %149 = load i64, i64* %32, align 8
  %150 = call i32 @SRA_4V(i64 %146, i64 %147, i64 %148, i64 %149, i32 2)
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %29, align 8
  %153 = load i64, i64* %32, align 8
  %154 = load i64, i64* %31, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @PCKEV_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i32 %156, i32 %158)
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ST_D4(i32 %163, i32 %165, i32 0, i32 1, i32 0, i32 1, i32* %160, i32 %161)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SB(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SLDI_B3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLDI_B2_SB(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B3_UH(i32, i32, i32, i32, i32, i32, i64, i64, i64) #2

declare dso_local i32 @ILVR_B2_UH(i32, i32, i32, i32, i64, i64) #2

declare dso_local i32 @HADD_UB3_UH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @HADD_UB2_UH(i64, i64, i64, i64) #2

declare dso_local i32 @SRA_4V(i64, i64, i64, i64, i32) #2

declare dso_local i32 @PCKEV_B2_SB(i64, i64, i64, i64, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
