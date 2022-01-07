; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_bi_copy_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32)* @hevc_bi_copy_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_bi_copy_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
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
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %41 = bitcast %struct.TYPE_8__* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 4, i1 false)
  %42 = load i32, i32* %14, align 4
  %43 = ashr i32 %42, 2
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %48, %7
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %15, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %175

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LD_SB4(i32* %49, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 4, %60
  %62 = load i32*, i32** %8, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %27, align 4
  %71 = call i32 @LD_SH4(i32* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %28, align 4
  %76 = load i32, i32* %29, align 4
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* %31, align 4
  %79 = call i32 @LD_SH4(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 4, %80
  %82 = load i32*, i32** %10, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %10, align 8
  %85 = load i32, i32* %32, align 4
  %86 = load i32, i32* %36, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ILVRL_B2_SH(i32 %88, i32 %90, i32 %85, i32 %86)
  %92 = load i32, i32* %33, align 4
  %93 = load i32, i32* %37, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ILVRL_B2_SH(i32 %95, i32 %97, i32 %92, i32 %93)
  %99 = load i32, i32* %34, align 4
  %100 = load i32, i32* %38, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ILVRL_B2_SH(i32 %102, i32 %104, i32 %99, i32 %100)
  %106 = load i32, i32* %35, align 4
  %107 = load i32, i32* %39, align 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ILVRL_B2_SH(i32 %109, i32 %111, i32 %106, i32 %107)
  %113 = load i32, i32* %32, align 4
  %114 = load i32, i32* %33, align 4
  %115 = load i32, i32* %34, align 4
  %116 = load i32, i32* %35, align 4
  %117 = call i32 @SLLI_4V(i32 %113, i32 %114, i32 %115, i32 %116, i32 6)
  %118 = load i32, i32* %36, align 4
  %119 = load i32, i32* %37, align 4
  %120 = load i32, i32* %38, align 4
  %121 = load i32, i32* %39, align 4
  %122 = call i32 @SLLI_4V(i32 %118, i32 %119, i32 %120, i32 %121, i32 6)
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %28, align 4
  %126 = load i32, i32* %29, align 4
  %127 = load i32, i32* %32, align 4
  %128 = load i32, i32* %33, align 4
  %129 = load i32, i32* %36, align 4
  %130 = load i32, i32* %37, align 4
  %131 = load i32, i32* %32, align 4
  %132 = load i32, i32* %33, align 4
  %133 = load i32, i32* %36, align 4
  %134 = load i32, i32* %37, align 4
  %135 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 7, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %30, align 4
  %139 = load i32, i32* %31, align 4
  %140 = load i32, i32* %34, align 4
  %141 = load i32, i32* %35, align 4
  %142 = load i32, i32* %38, align 4
  %143 = load i32, i32* %39, align 4
  %144 = load i32, i32* %34, align 4
  %145 = load i32, i32* %35, align 4
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %39, align 4
  %148 = call i32 @HEVC_BI_RND_CLIP4_MAX_SATU(i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 7, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %36, align 4
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %37, align 4
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @PCKEV_B2_UB(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %38, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %39, align 4
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = call i32 @PCKEV_B2_UB(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %19, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @ST_UB4(i32 %163, i32 %164, i32 %165, i32 %166, i32* %167, i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = mul nsw i32 4, %170
  %172 = load i32*, i32** %12, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %12, align 8
  br label %44

175:                                              ; preds = %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #2

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
