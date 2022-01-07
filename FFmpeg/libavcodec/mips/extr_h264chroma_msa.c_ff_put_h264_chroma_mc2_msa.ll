; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_ff_put_h264_chroma_mc2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_ff_put_h264_chroma_mc2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_chroma_mc2_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = icmp sge i32 %23, 0
  br label %25

25:                                               ; preds = %22, %19, %16, %6
  %26 = phi i1 [ false, %19 ], [ false, %16 ], [ false, %6 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @av_assert2(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 8, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 8, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @avc_chroma_hv_2w_msa(i32* %35, i32* %36, i32 %37, i32 %38, i32 %40, i32 %41, i32 %43, i32 %44)
  br label %91

46:                                               ; preds = %31, %25
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 8, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @avc_chroma_hz_2w_msa(i32* %50, i32* %51, i32 %52, i32 %53, i32 %55, i32 %56)
  br label %90

58:                                               ; preds = %46
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 8, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @avc_chroma_vt_2w_msa(i32* %62, i32* %63, i32 %64, i32 %65, i32 %67, i32 %68)
  br label %89

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %76, %70
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %13, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %7, align 8
  br label %72

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %49
  br label %91

91:                                               ; preds = %90, %34
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @avc_chroma_hv_2w_msa(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @avc_chroma_hz_2w_msa(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @avc_chroma_vt_2w_msa(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
