; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32)* @hevc_bi_copy_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_bi_copy_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__, align 4
  %21 = alloca %struct.TYPE_24__, align 4
  %22 = alloca %struct.TYPE_24__, align 4
  %23 = alloca %struct.TYPE_24__, align 4
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %38 = bitcast %struct.TYPE_24__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 4, i1 false)
  store i32 4, i32* %15, align 4
  br label %39

39:                                               ; preds = %43, %7
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %15, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %185

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LD_SB4(i32* %44, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 4, %55
  %57 = load i32*, i32** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %25, align 4
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %27, align 4
  %66 = call i32 @LD_SH4(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %28, align 4
  %71 = load i32, i32* %29, align 4
  %72 = load i32, i32* %30, align 4
  %73 = load i32, i32* %31, align 4
  %74 = call i32 @LD_SH4(i32* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 4, %75
  %77 = load i32*, i32** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %10, align 8
  %80 = load i32, i32* %29, align 4
  %81 = load i32, i32* %28, align 4
  %82 = load i32, i32* %31, align 4
  %83 = load i32, i32* %30, align 4
  %84 = load i32, i32* %28, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i32 @ILVR_D2_SH(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %32, align 4
  %88 = load i32, i32* %33, align 4
  %89 = load i32, i32* %34, align 4
  %90 = load i32, i32* %35, align 4
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ILVR_B4_SH(i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106, i32 %87, i32 %88, i32 %89, i32 %90)
  %108 = load i32, i32* %32, align 4
  %109 = load i32, i32* %33, align 4
  %110 = load i32, i32* %34, align 4
  %111 = load i32, i32* %35, align 4
  %112 = call i32 @SLLI_4V(i32 %108, i32 %109, i32 %110, i32 %111, i32 6)
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ILVL_W2_SB(i32 %114, i32 %116, i32 %118, i32 %120, i32 %122, i32 %124)
  %126 = load i32, i32* %36, align 4
  %127 = load i32, i32* %37, align 4
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ILVR_B2_SH(i32 %129, i32 %131, i32 %133, i32 %135, i32 %126, i32 %127)
  %137 = load i32, i32* %36, align 4
  %138 = load i32, i32* %37, align 4
  %139 = call i32 @SLLI_2V(i32 %137, i32 %138, i32 6)
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* %32, align 4
  %145 = load i32, i32* %33, align 4
  %146 = load i32, i32* %34, align 4
  %147 = load i32, i32* %35, align 4
  %148 = load i32, i32* %32, align 4
  %149 = load i32, i32* %33, align 4
  %150 = load i32, i32* %34, align 4
  %151 = load i32, i32* %35, align 4
  %152 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 7, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %29, align 4
  %155 = load i32, i32* %36, align 4
  %156 = load i32, i32* %37, align 4
  %157 = load i32, i32* %36, align 4
  %158 = load i32, i32* %37, align 4
  %159 = call i32 @HEVC_BI_RND_CLIP2_MAX_SATU(i32 %153, i32 %154, i32 %155, i32 %156, i32 7, i32 %157, i32 %158)
  %160 = load i32, i32* %33, align 4
  %161 = load i32, i32* %32, align 4
  %162 = load i32, i32* %35, align 4
  %163 = load i32, i32* %34, align 4
  %164 = load i32, i32* %37, align 4
  %165 = load i32, i32* %36, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @PCKEV_B3_UB(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @ST_D4(i32 %170, i32 %171, i32 0, i32 1, i32 0, i32 1, i32* %172, i32 %173)
  %175 = load i32, i32* %19, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @ST_W4(i32 %175, i32 0, i32 1, i32 2, i32 3, i32* %177, i32 %178)
  %180 = load i32, i32* %13, align 4
  %181 = mul nsw i32 4, %180
  %182 = load i32*, i32** %12, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %12, align 8
  br label %39

185:                                              ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVL_W2_SB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_2V(i32, i32, i32) #2

declare dso_local i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BI_RND_CLIP2_MAX_SATU(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
