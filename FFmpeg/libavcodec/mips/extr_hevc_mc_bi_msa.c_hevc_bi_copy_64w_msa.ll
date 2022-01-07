; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32)* @hevc_bi_copy_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_bi_copy_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca %struct.TYPE_8__, align 4
  %23 = alloca %struct.TYPE_8__, align 4
  %24 = alloca %struct.TYPE_8__, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %41 = bitcast %struct.TYPE_8__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 4, i1 false)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %47, %7
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %15, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %164

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LD_SB4(i32* %48, i32 16, i32 %50, i32 %52, i32 %54, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %33, align 4
  %64 = load i32, i32* %34, align 4
  %65 = load i32, i32* %35, align 4
  %66 = load i32, i32* %36, align 4
  %67 = load i32, i32* %37, align 4
  %68 = load i32, i32* %38, align 4
  %69 = load i32, i32* %39, align 4
  %70 = load i32, i32* %40, align 4
  %71 = call i32 @LD_SH8(i32* %62, i32 8, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ILVRL_B2_SH(i32 %79, i32 %81, i32 %76, i32 %77)
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %28, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ILVRL_B2_SH(i32 %86, i32 %88, i32 %83, i32 %84)
  %90 = load i32, i32* %29, align 4
  %91 = load i32, i32* %30, align 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ILVRL_B2_SH(i32 %93, i32 %95, i32 %90, i32 %91)
  %97 = load i32, i32* %31, align 4
  %98 = load i32, i32* %32, align 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ILVRL_B2_SH(i32 %100, i32 %102, i32 %97, i32 %98)
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %28, align 4
  %108 = call i32 @SLLI_4V(i32 %104, i32 %105, i32 %106, i32 %107, i32 6)
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %30, align 4
  %111 = load i32, i32* %31, align 4
  %112 = load i32, i32* %32, align 4
  %113 = call i32 @SLLI_4V(i32 %109, i32 %110, i32 %111, i32 %112, i32 6)
  %114 = load i32, i32* %33, align 4
  %115 = load i32, i32* %34, align 4
  %116 = load i32, i32* %35, align 4
  %117 = load i32, i32* %36, align 4
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %28, align 4
  %126 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 7, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %37, align 4
  %128 = load i32, i32* %38, align 4
  %129 = load i32, i32* %39, align 4
  %130 = load i32, i32* %40, align 4
  %131 = load i32, i32* %29, align 4
  %132 = load i32, i32* %30, align 4
  %133 = load i32, i32* %31, align 4
  %134 = load i32, i32* %32, align 4
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %30, align 4
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %32, align 4
  %139 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 7, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @PCKEV_B2_UB(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %30, align 4
  %148 = load i32, i32* %29, align 4
  %149 = load i32, i32* %32, align 4
  %150 = load i32, i32* %31, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %19, align 4
  %153 = call i32 @PCKEV_B2_UB(i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = call i32 @ST_UB4(i32 %154, i32 %155, i32 %156, i32 %157, i32* %158, i32 16)
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %12, align 8
  br label %43

164:                                              ; preds = %43
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
