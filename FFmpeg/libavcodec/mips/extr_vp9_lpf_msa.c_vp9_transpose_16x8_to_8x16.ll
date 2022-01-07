; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_vp9_transpose_16x8_to_8x16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_vp9_transpose_16x8_to_8x16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vp9_transpose_16x8_to_8x16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_transpose_16x8_to_8x16(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_30__, align 4
  %18 = alloca %struct.TYPE_30__, align 4
  %19 = alloca %struct.TYPE_30__, align 4
  %20 = alloca %struct.TYPE_30__, align 4
  %21 = alloca %struct.TYPE_30__, align 4
  %22 = alloca %struct.TYPE_30__, align 4
  %23 = alloca %struct.TYPE_30__, align 4
  %24 = alloca %struct.TYPE_30__, align 4
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.TYPE_30__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %42 = bitcast %struct.TYPE_30__* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 4, i1 false)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @LD_UB8(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %28, align 4
  %66 = load i32, i32* %29, align 4
  %67 = load i32, i32* %30, align 4
  %68 = load i32, i32* %31, align 4
  %69 = load i32, i32* %32, align 4
  %70 = call i32 @TRANSPOSE8x8_UB_UB(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %14, align 4
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ILVL_B4_SB(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ILVR_B2_SB(i32 %89, i32 %91, i32 %93, i32 %95, i32 %97, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ILVL_B2_SB(i32 %102, i32 %104, i32 %106, i32 %108, i32 %110, i32 %112)
  %114 = load i32, i32* %33, align 4
  %115 = load i32, i32* %37, align 4
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ILVR_W2_UB(i32 %117, i32 %119, i32 %121, i32 %123, i32 %114, i32 %115)
  %125 = load i32, i32* %35, align 4
  %126 = load i32, i32* %39, align 4
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ILVL_W2_UB(i32 %128, i32 %130, i32 %132, i32 %134, i32 %125, i32 %126)
  %136 = load i32, i32* %33, align 4
  %137 = load i32, i32* %35, align 4
  %138 = load i32, i32* %37, align 4
  %139 = load i32, i32* %39, align 4
  %140 = load i32, i32* %34, align 4
  %141 = load i32, i32* %36, align 4
  %142 = load i32, i32* %38, align 4
  %143 = load i32, i32* %40, align 4
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @SLDI_B4_UB(i32 %145, i32 %136, i32 %147, i32 %137, i32 %149, i32 %138, i32 %151, i32 %139, i32 8, i32 %140, i32 %141, i32 %142, i32 %143)
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %29, align 4
  %158 = load i32, i32* %30, align 4
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %32, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @ST_UB8(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32* %161, i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 8, %164
  %166 = load i32*, i32** %7, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %7, align 8
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = load i32, i32* %35, align 4
  %172 = load i32, i32* %36, align 4
  %173 = load i32, i32* %37, align 4
  %174 = load i32, i32* %38, align 4
  %175 = load i32, i32* %39, align 4
  %176 = load i32, i32* %40, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @ST_UB8(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32* %177, i32 %178)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @TRANSPOSE8x8_UB_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_W2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_W2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLDI_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
