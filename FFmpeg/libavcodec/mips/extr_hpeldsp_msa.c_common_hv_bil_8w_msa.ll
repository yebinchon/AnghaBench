; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @common_hv_bil_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_bil_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_36__, align 4
  %13 = alloca %struct.TYPE_36__, align 4
  %14 = alloca %struct.TYPE_36__, align 4
  %15 = alloca %struct.TYPE_36__, align 4
  %16 = alloca %struct.TYPE_36__, align 4
  %17 = alloca %struct.TYPE_36__, align 4
  %18 = alloca %struct.TYPE_36__, align 4
  %19 = alloca %struct.TYPE_36__, align 4
  %20 = alloca %struct.TYPE_36__, align 4
  %21 = alloca %struct.TYPE_36__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_36__, align 4
  %37 = alloca %struct.TYPE_36__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %38 = bitcast %struct.TYPE_36__* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 4, i1 false)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @LD_SB(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.TYPE_36__* %12 to i8*
  %43 = bitcast %struct.TYPE_36__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 2
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %54, %5
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %183

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LD_SB4(i32* %55, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 4, %66
  %68 = load i32*, i32** %6, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SLDI_B3_SB(i32 %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 1, i32 %84, i32 %86, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %15, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %20, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SLDI_B2_SB(i32 %91, i32 %93, i32 %95, i32 %97, i32 1, i32 %99, i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %24, align 4
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ILVR_B3_UB(i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %103, i32 %104, i32 %105)
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %26, align 4
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %20, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %15, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ILVR_B2_UB(i32 %122, i32 %124, i32 %126, i32 %128, i32 %119, i32 %120)
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %28, align 4
  %135 = load i32, i32* %29, align 4
  %136 = call i32 @HADD_UB3_UH(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %25, align 4
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %31, align 4
  %141 = call i32 @HADD_UB2_UH(i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %29, align 4
  %146 = load i32, i32* %29, align 4
  %147 = load i32, i32* %30, align 4
  %148 = load i32, i32* %30, align 4
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %34, align 4
  %153 = load i32, i32* %35, align 4
  %154 = call i32 @ADD4(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %32, align 4
  %156 = load i32, i32* %33, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %35, align 4
  %159 = call i32 @SRARI_H4_UH(i32 %155, i32 %156, i32 %157, i32 %158, i32 2)
  %160 = load i32, i32* %33, align 4
  %161 = load i32, i32* %32, align 4
  %162 = load i32, i32* %35, align 4
  %163 = load i32, i32* %34, align 4
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @PCKEV_B2_SB(i32 %160, i32 %161, i32 %162, i32 %163, i32 %165, i32 %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ST_D4(i32 %172, i32 %174, i32 0, i32 1, i32 0, i32 1, i32* %169, i32 %170)
  %176 = load i32, i32* %9, align 4
  %177 = mul nsw i32 4, %176
  %178 = load i32*, i32** %8, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %8, align 8
  %181 = bitcast %struct.TYPE_36__* %12 to i8*
  %182 = bitcast %struct.TYPE_36__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 4 %182, i64 4, i1 false)
  br label %50

183:                                              ; preds = %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLDI_B3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLDI_B2_SB(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HADD_UB3_UH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HADD_UB2_UH(i32, i32, i32, i32) #2

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
