; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_uniwgt_copy_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, i32)* @hevc_uniwgt_copy_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_uniwgt_copy_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %22 = alloca %struct.TYPE_6__, align 4
  %23 = alloca %struct.TYPE_6__, align 4
  %24 = alloca %struct.TYPE_6__, align 4
  %25 = alloca %struct.TYPE_6__, align 4
  %26 = alloca %struct.TYPE_6__, align 4
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
  %38 = bitcast %struct.TYPE_6__* %26 to i8*
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
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %53, %8
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %17, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %166

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LD_SB2(i32* %54, i32 %55, i32 %57, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 16
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @LD_SB2(i32* %62, i32 %63, i32 %65, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 2, %69
  %71 = load i32*, i32** %9, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %9, align 8
  %74 = load i32, i32* %27, align 4
  %75 = load i32, i32* %28, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ILVRL_B2_SH(i32 %77, i32 %79, i32 %74, i32 %75)
  %81 = load i32, i32* %29, align 4
  %82 = load i32, i32* %30, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ILVRL_B2_SH(i32 %84, i32 %86, i32 %81, i32 %82)
  %88 = load i32, i32* %31, align 4
  %89 = load i32, i32* %32, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ILVRL_B2_SH(i32 %91, i32 %93, i32 %88, i32 %89)
  %95 = load i32, i32* %33, align 4
  %96 = load i32, i32* %34, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ILVRL_B2_SH(i32 %98, i32 %100, i32 %95, i32 %96)
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %28, align 4
  %104 = load i32, i32* %29, align 4
  %105 = load i32, i32* %30, align 4
  %106 = call i32 @SLLI_4V(i32 %102, i32 %103, i32 %104, i32 %105, i32 6)
  %107 = load i32, i32* %31, align 4
  %108 = load i32, i32* %32, align 4
  %109 = load i32, i32* %33, align 4
  %110 = load i32, i32* %34, align 4
  %111 = call i32 @SLLI_4V(i32 %107, i32 %108, i32 %109, i32 %110, i32 6)
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %28, align 4
  %114 = load i32, i32* %29, align 4
  %115 = load i32, i32* %30, align 4
  %116 = load i32, i32* %36, align 4
  %117 = load i32, i32* %35, align 4
  %118 = load i32, i32* %37, align 4
  %119 = load i32, i32* %27, align 4
  %120 = load i32, i32* %28, align 4
  %121 = load i32, i32* %29, align 4
  %122 = load i32, i32* %30, align 4
  %123 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %31, align 4
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = load i32, i32* %34, align 4
  %128 = load i32, i32* %36, align 4
  %129 = load i32, i32* %35, align 4
  %130 = load i32, i32* %37, align 4
  %131 = load i32, i32* %31, align 4
  %132 = load i32, i32* %32, align 4
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %34, align 4
  %135 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %30, align 4
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @PCKEV_B2_UB(i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %32, align 4
  %144 = load i32, i32* %31, align 4
  %145 = load i32, i32* %34, align 4
  %146 = load i32, i32* %33, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %21, align 4
  %149 = call i32 @PCKEV_B2_UB(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @ST_UB2(i32 %150, i32 %151, i32* %152, i32 %153)
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %21, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 16
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @ST_UB2(i32 %155, i32 %156, i32* %158, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 2, %161
  %163 = load i32*, i32** %11, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %11, align 8
  br label %49

166:                                              ; preds = %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
