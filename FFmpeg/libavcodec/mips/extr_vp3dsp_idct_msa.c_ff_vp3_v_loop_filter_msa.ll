; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp3dsp_idct_msa.c_ff_vp3_v_loop_filter_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp3dsp_idct_msa.c_ff_vp3_v_loop_filter_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.ff_vp3_v_loop_filter_msa.mask = private unnamed_addr constant %struct.TYPE_23__ { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp3_v_loop_filter_msa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__, align 8
  %27 = alloca [8 x i64], align 16
  %28 = alloca [8 x i32], align 16
  %29 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = bitcast %struct.TYPE_23__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 64, i1 false)
  store i32 3, i32* %24, align 4
  store i32 4, i32* %25, align 4
  %33 = bitcast %struct.TYPE_23__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.TYPE_23__* @__const.ff_vp3_v_loop_filter_msa.mask to i8*), i64 64, i1 false)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @LD_SB4(i32* %38, i32 %39, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %15, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %16, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %17, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %18)
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = call i32 @ILVR_B4_SH(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %15, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %16, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %17, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %18, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %22, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %20, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %24, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %48, %53
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %25, align 4
  %56 = load i32, i32* %23, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = ashr i32 %58, 3
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %23, align 4
  %61 = getelementptr inbounds [8 x i64], [8 x i64]* %27, i64 0, i64 0
  %62 = call i32 @ST_SH(i32 %60, i64* %61)
  store i32 0, i32* %29, align 4
  br label %63

63:                                               ; preds = %77, %3
  %64 = load i32, i32* %29, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %29, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %27, i64 0, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %29, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 %75
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %29, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %29, align 4
  br label %63

80:                                               ; preds = %63
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @LD_SW2(i32* %81, i32 4, i64 %82, i64 %83)
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @ILVR_H2_SW(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, i32 %85, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, i32 %86, i64 %87, i64 %88)
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @ILVL_H2_SW(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, i32 %90, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, i32 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %12, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %13, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @CLIP_SW4_0_255(i64 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @VSHF_B2_SB(i64 %112, i64 %113, i64 %114, i64 %115, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %26, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %26, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %16, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %17)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @ST_D1(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %16, i32 0, i32* %120)
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @ST_D1(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %17, i32 0, i32* %122)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LD_SB4(i32*, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #2

declare dso_local i32 @ILVR_B4_SH(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH(i32, i64*) #2

declare dso_local i32 @LD_SW2(i32*, i32, i64, i64) #2

declare dso_local i32 @ILVR_H2_SW(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, i64, i64) #2

declare dso_local i32 @ILVL_H2_SW(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, i64, i64) #2

declare dso_local i32 @CLIP_SW4_0_255(i64, i64, i64, i64) #2

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #2

declare dso_local i32 @ST_D1(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
