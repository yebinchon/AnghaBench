; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_ff_avg_h264_chroma_mc8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_ff_avg_h264_chroma_mc8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_chroma_mc8_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18, %15, %6
  %25 = phi i1 [ false, %18 ], [ false, %15 ], [ false, %6 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert2(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 8, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 8, %41
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @avc_chroma_hv_and_aver_dst_8w_msa(i32* %34, i32* %35, i32 %36, i32 %37, i32 %39, i32 %40, i32 %42, i32 %43)
  br label %77

45:                                               ; preds = %30, %24
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 8, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @avc_chroma_hz_and_aver_dst_8w_msa(i32* %49, i32* %50, i32 %51, i32 %52, i32 %54, i32 %55)
  br label %76

57:                                               ; preds = %45
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 8, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @avc_chroma_vt_and_aver_dst_8w_msa(i32* %61, i32* %62, i32 %63, i32 %64, i32 %66, i32 %67)
  br label %75

69:                                               ; preds = %57
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @avg_width8_msa(i32* %70, i32* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %60
  br label %76

76:                                               ; preds = %75, %48
  br label %77

77:                                               ; preds = %76, %33
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @avc_chroma_hv_and_aver_dst_8w_msa(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @avc_chroma_hz_and_aver_dst_8w_msa(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @avc_chroma_vt_and_aver_dst_8w_msa(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @avg_width8_msa(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
