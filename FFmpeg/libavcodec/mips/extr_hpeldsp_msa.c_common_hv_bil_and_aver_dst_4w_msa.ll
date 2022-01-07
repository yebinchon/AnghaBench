; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_and_aver_dst_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hv_bil_and_aver_dst_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @common_hv_bil_and_aver_dst_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_bil_and_aver_dst_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__, align 4
  %15 = alloca %struct.TYPE_20__, align 4
  %16 = alloca %struct.TYPE_20__, align 4
  %17 = alloca %struct.TYPE_20__, align 4
  %18 = alloca %struct.TYPE_20__, align 4
  %19 = alloca %struct.TYPE_20__, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_20__, align 4
  %33 = alloca %struct.TYPE_20__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %34 = bitcast %struct.TYPE_20__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @LD_SB(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.TYPE_20__* %14 to i8*
  %39 = bitcast %struct.TYPE_20__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %50, %5
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %156

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LD_SB2(i32* %51, i32 %52, i32 %54, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 2, %58
  %60 = load i32*, i32** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i64, i64* %28, align 8
  %66 = load i64, i64* %29, align 8
  %67 = call i32 @LD_UB2(i32* %63, i32 %64, i64 %65, i64 %66)
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SLDI_B3_SB(i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 1, i32 %81, i32 %83, i32 %85)
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ILVR_B3_UB(i32 %91, i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i64 %87, i64 %88, i64 %89)
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %22, align 8
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %25, align 4
  %109 = call i32 @HADD_UB3_UH(i64 %103, i64 %104, i64 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %27, align 4
  %116 = call i32 @ADD2(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* %27, align 4
  %119 = call i32 @SRARI_H2_UH(i32 %117, i32 %118, i32 2)
  %120 = load i32, i32* %26, align 4
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %27, align 4
  %124 = load i64, i64* %30, align 8
  %125 = load i64, i64* %31, align 8
  %126 = call i32 @PCKEV_B2_UB(i32 %120, i32 %121, i32 %122, i32 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %28, align 8
  %128 = load i64, i64* %30, align 8
  %129 = load i64, i64* %29, align 8
  %130 = load i64, i64* %31, align 8
  %131 = load i64, i64* %30, align 8
  %132 = load i64, i64* %31, align 8
  %133 = call i32 @AVER_UB2_UB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %30, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @__msa_copy_u_w(i32 %135, i32 0)
  store i32 %136, i32* %12, align 4
  %137 = load i64, i64* %31, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @__msa_copy_u_w(i32 %138, i32 0)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @SW(i32 %140, i32* %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %8, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @SW(i32 %147, i32* %148)
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %8, align 8
  %154 = bitcast %struct.TYPE_20__* %14 to i8*
  %155 = bitcast %struct.TYPE_20__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 4 %155, i64 4, i1 false)
  br label %46

156:                                              ; preds = %46
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #2

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #2

declare dso_local i32 @SLDI_B3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B3_UB(i32, i32, i32, i32, i32, i32, i64, i64, i64) #2

declare dso_local i32 @HADD_UB3_UH(i64, i64, i64, i32, i32, i32) #2

declare dso_local i32 @ADD2(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SRARI_H2_UH(i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i64, i64) #2

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @__msa_copy_u_w(i32, i32) #2

declare dso_local i32 @SW(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
