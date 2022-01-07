; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_uniwgt_copy_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_uniwgt_copy_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %22 = alloca %struct.TYPE_8__, align 4
  %23 = alloca %struct.TYPE_8__, align 4
  %24 = alloca %struct.TYPE_8__, align 4
  %25 = alloca %struct.TYPE_8__, align 4
  %26 = alloca %struct.TYPE_8__, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %38 = bitcast %struct.TYPE_8__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 4, i1 false)
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @__msa_fill_w(i32 %41)
  store i32 %42, i32* %36, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @__msa_fill_h(i32 %43)
  store i32 %44, i32* %35, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @__msa_fill_w(i32 %45)
  store i32 %46, i32* %37, align 4
  %47 = load i32, i32* %13, align 4
  %48 = ashr i32 %47, 2
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %53, %8
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %17, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %158

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LD_SB4(i32* %54, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 4, %65
  %67 = load i32*, i32** %9, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %9, align 8
  %70 = load i32, i32* %27, align 4
  %71 = load i32, i32* %28, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ILVRL_B2_SH(i32 %73, i32 %75, i32 %70, i32 %71)
  %77 = load i32, i32* %29, align 4
  %78 = load i32, i32* %30, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ILVRL_B2_SH(i32 %80, i32 %82, i32 %77, i32 %78)
  %84 = load i32, i32* %31, align 4
  %85 = load i32, i32* %32, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ILVRL_B2_SH(i32 %87, i32 %89, i32 %84, i32 %85)
  %91 = load i32, i32* %33, align 4
  %92 = load i32, i32* %34, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ILVRL_B2_SH(i32 %94, i32 %96, i32 %91, i32 %92)
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* %30, align 4
  %102 = call i32 @SLLI_4V(i32 %98, i32 %99, i32 %100, i32 %101, i32 6)
  %103 = load i32, i32* %31, align 4
  %104 = load i32, i32* %32, align 4
  %105 = load i32, i32* %33, align 4
  %106 = load i32, i32* %34, align 4
  %107 = call i32 @SLLI_4V(i32 %103, i32 %104, i32 %105, i32 %106, i32 6)
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* %29, align 4
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* %36, align 4
  %113 = load i32, i32* %35, align 4
  %114 = load i32, i32* %37, align 4
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* %28, align 4
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* %30, align 4
  %119 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %31, align 4
  %121 = load i32, i32* %32, align 4
  %122 = load i32, i32* %33, align 4
  %123 = load i32, i32* %34, align 4
  %124 = load i32, i32* %36, align 4
  %125 = load i32, i32* %35, align 4
  %126 = load i32, i32* %37, align 4
  %127 = load i32, i32* %31, align 4
  %128 = load i32, i32* %32, align 4
  %129 = load i32, i32* %33, align 4
  %130 = load i32, i32* %34, align 4
  %131 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %28, align 4
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %30, align 4
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @PCKEV_B2_UB(i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %32, align 4
  %140 = load i32, i32* %31, align 4
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %33, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %21, align 4
  %145 = call i32 @PCKEV_B2_UB(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @ST_UB4(i32 %146, i32 %147, i32 %148, i32 %149, i32* %150, i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 4, %153
  %155 = load i32*, i32** %11, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %11, align 8
  br label %49

158:                                              ; preds = %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
