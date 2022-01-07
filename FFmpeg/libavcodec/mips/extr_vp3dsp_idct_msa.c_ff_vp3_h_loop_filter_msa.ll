; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp3dsp_idct_msa.c_ff_vp3_h_loop_filter_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp3dsp_idct_msa.c_ff_vp3_h_loop_filter_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.ff_vp3_h_loop_filter_msa.mask = private unnamed_addr constant %struct.TYPE_27__ { i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp3_h_loop_filter_msa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca %struct.TYPE_27__, align 8
  %13 = alloca %struct.TYPE_27__, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_27__, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_27__, align 8
  %34 = alloca [8 x i64], align 16
  %35 = alloca [8 x i32], align 16
  %36 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %37 = bitcast %struct.TYPE_27__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 64, i1 false)
  store i32 3, i32* %31, align 4
  store i32 4, i32* %32, align 4
  %38 = bitcast %struct.TYPE_27__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.TYPE_27__* @__const.ff_vp3_h_loop_filter_msa.mask to i8*), i64 64, i1 false)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -2
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @LD_SB8(i32* %40, i32 %41, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %7, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %9, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %10, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %11, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %12, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %13, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %14)
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @ILVR_B4_SH(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %7, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %9, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %10, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %22, align 4
  %52 = call i32 @ILVR_B4_SH(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %11, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %12, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %13, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %14, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %22, align 4
  %69 = call i32 @TRANSPOSE8x8_SH_SH(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %31, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %23, align 4
  %79 = load i32, i32* %32, align 4
  %80 = load i32, i32* %23, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %23, align 4
  %83 = ashr i32 %82, 3
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %34, i64 0, i64 0
  %86 = call i32 @ST_SH(i32 %84, i64* %85)
  store i32 0, i32* %36, align 4
  br label %87

87:                                               ; preds = %101, %3
  %88 = load i32, i32* %36, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %36, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i64], [8 x i64]* %34, i64 0, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %36, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %36, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %36, align 4
  br label %87

104:                                              ; preds = %87
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 0
  %106 = load i64, i64* %24, align 8
  %107 = load i64, i64* %25, align 8
  %108 = call i32 @LD_SW2(i32* %105, i32 4, i64 %106, i64 %107)
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i64, i64* %26, align 8
  %112 = load i64, i64* %28, align 8
  %113 = call i32 @ILVR_H2_SW(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, i32 %109, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, i32 %110, i64 %111, i64 %112)
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i64, i64* %27, align 8
  %117 = load i64, i64* %29, align 8
  %118 = call i32 @ILVL_H2_SW(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, i32 %114, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %30, i32 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %26, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %26, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i64, i64* %27, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %27, align 8
  %125 = load i64, i64* %24, align 8
  %126 = load i64, i64* %28, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %28, align 8
  %128 = load i64, i64* %25, align 8
  %129 = load i64, i64* %29, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %29, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %29, align 8
  %135 = call i32 @CLIP_SW4_0_255(i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %28, align 8
  %138 = load i64, i64* %27, align 8
  %139 = load i64, i64* %29, align 8
  %140 = call i32 @VSHF_B2_SB(i64 %136, i64 %137, i64 %138, i64 %139, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %33, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %33, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %9)
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 -1
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @ST_H4(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %8, i32 0, i32 1, i32 2, i32 3, i32* %142, i32 %143)
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 -1
  %147 = load i32, i32* %5, align 4
  %148 = mul nsw i32 4, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @ST_H4(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %9, i32 0, i32 1, i32 2, i32 3, i32* %150, i32 %151)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LD_SB8(i32*, i32, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8) #2

declare dso_local i32 @ILVR_B4_SH(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, i32, i32, i32) #2

declare dso_local i32 @TRANSPOSE8x8_SH_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_SH(i32, i64*) #2

declare dso_local i32 @LD_SW2(i32*, i32, i64, i64) #2

declare dso_local i32 @ILVR_H2_SW(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, i64, i64) #2

declare dso_local i32 @ILVL_H2_SW(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, i64, i64) #2

declare dso_local i32 @CLIP_SW4_0_255(i64, i64, i64, i64) #2

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8) #2

declare dso_local i32 @ST_H4(%struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
