; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_48w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_48w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32)* @hevc_biwgt_copy_48w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_biwgt_copy_48w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_7__, align 4
  %32 = alloca %struct.TYPE_7__, align 4
  %33 = alloca %struct.TYPE_7__, align 4
  %34 = alloca %struct.TYPE_7__, align 4
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
  %49 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %50 = bitcast %struct.TYPE_7__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 4, i1 false)
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %23, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %24, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %26, align 4
  %56 = load i32, i32* %20, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %21, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  store i32 %61, i32* %27, align 4
  %62 = load i32, i32* %26, align 4
  %63 = call i32 @__msa_fill_w(i32 %62)
  store i32 %63, i32* %47, align 4
  %64 = load i32, i32* %27, align 4
  %65 = call i32 @__msa_fill_w(i32 %64)
  store i32 %65, i32* %48, align 4
  %66 = load i32, i32* %24, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @__msa_fill_w(i32 %67)
  store i32 %68, i32* %49, align 4
  store i32 64, i32* %25, align 4
  br label %69

69:                                               ; preds = %73, %12
  %70 = load i32, i32* %25, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %25, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %175

73:                                               ; preds = %69
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LD_SB3(i32* %74, i32 16, i32 %76, i32 %78, i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %41, align 4
  %88 = load i32, i32* %42, align 4
  %89 = load i32, i32* %43, align 4
  %90 = load i32, i32* %44, align 4
  %91 = load i32, i32* %45, align 4
  %92 = load i32, i32* %46, align 4
  %93 = call i32 @LD_SH6(i32* %86, i32 8, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %16, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %15, align 8
  %98 = load i32, i32* %35, align 4
  %99 = load i32, i32* %36, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ILVRL_B2_SH(i32 %101, i32 %103, i32 %98, i32 %99)
  %105 = load i32, i32* %37, align 4
  %106 = load i32, i32* %38, align 4
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ILVRL_B2_SH(i32 %108, i32 %110, i32 %105, i32 %106)
  %112 = load i32, i32* %39, align 4
  %113 = load i32, i32* %40, align 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ILVRL_B2_SH(i32 %115, i32 %117, i32 %112, i32 %113)
  %119 = load i32, i32* %35, align 4
  %120 = load i32, i32* %36, align 4
  %121 = load i32, i32* %37, align 4
  %122 = load i32, i32* %38, align 4
  %123 = call i32 @SLLI_4V(i32 %119, i32 %120, i32 %121, i32 %122, i32 6)
  %124 = load i32, i32* %39, align 4
  %125 = load i32, i32* %40, align 4
  %126 = call i32 @SLLI_2V(i32 %124, i32 %125, i32 6)
  %127 = load i32, i32* %35, align 4
  %128 = load i32, i32* %36, align 4
  %129 = load i32, i32* %37, align 4
  %130 = load i32, i32* %38, align 4
  %131 = load i32, i32* %41, align 4
  %132 = load i32, i32* %42, align 4
  %133 = load i32, i32* %43, align 4
  %134 = load i32, i32* %44, align 4
  %135 = load i32, i32* %48, align 4
  %136 = load i32, i32* %49, align 4
  %137 = load i32, i32* %47, align 4
  %138 = load i32, i32* %35, align 4
  %139 = load i32, i32* %36, align 4
  %140 = load i32, i32* %37, align 4
  %141 = load i32, i32* %38, align 4
  %142 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %39, align 4
  %144 = load i32, i32* %40, align 4
  %145 = load i32, i32* %45, align 4
  %146 = load i32, i32* %46, align 4
  %147 = load i32, i32* %48, align 4
  %148 = load i32, i32* %49, align 4
  %149 = load i32, i32* %47, align 4
  %150 = load i32, i32* %39, align 4
  %151 = load i32, i32* %40, align 4
  %152 = call i32 @HEVC_BIW_RND_CLIP2_MAX_SATU(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %35, align 4
  %155 = load i32, i32* %38, align 4
  %156 = load i32, i32* %37, align 4
  %157 = load i32, i32* %40, align 4
  %158 = load i32, i32* %39, align 4
  %159 = load i32, i32* %28, align 4
  %160 = load i32, i32* %29, align 4
  %161 = load i32, i32* %30, align 4
  %162 = call i32 @PCKEV_B3_UB(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %29, align 4
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @ST_UB2(i32 %163, i32 %164, i32* %165, i32 16)
  %167 = load i32, i32* %30, align 4
  %168 = load i32*, i32** %17, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 32
  %170 = call i32 @ST_UB(i32 %167, i32* %169)
  %171 = load i32, i32* %18, align 4
  %172 = load i32*, i32** %17, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %17, align 8
  br label %69

175:                                              ; preds = %69
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH6(i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_2V(i32, i32, i32) #2

declare dso_local i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BIW_RND_CLIP2_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #2

declare dso_local i32 @ST_UB(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
