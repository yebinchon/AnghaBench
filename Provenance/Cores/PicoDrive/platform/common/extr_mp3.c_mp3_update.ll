; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_mp3.c_mp3_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_mp3.c_mp3_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp3_current_file = common dso_local global i32* null, align 8
@mp3_file_pos = common dso_local global i64 0, align 8
@mp3_file_len = common dso_local global i64 0, align 8
@decoder_active = common dso_local global i32 0, align 4
@PsndRate = common dso_local global i32 0, align 4
@cdda_out_pos = common dso_local global i32 0, align 4
@cdda_out_buffer = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp3_update(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (i32*, i16*, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store void (i32*, i16*, i32)* @mix_16h_to_32, void (i32*, i16*, i32)** %9, align 8
  %12 = load i32*, i32** @mp3_current_file, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @mp3_file_pos, align 8
  %16 = load i64, i64* @mp3_file_len, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  br label %97

19:                                               ; preds = %14
  %20 = load i32, i32* @decoder_active, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %97

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @PsndRate, align 4
  %26 = icmp sle i32 %25, 11125
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  store void (i32*, i16*, i32)* @mix_16h_to_32_s2, void (i32*, i16*, i32)** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 2
  store i32 %29, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @PsndRate, align 4
  %32 = icmp sle i32 %31, 22150
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  store void (i32*, i16*, i32)* @mix_16h_to_32_s1, void (i32*, i16*, i32)** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* @cdda_out_pos, align 4
  %39 = sub nsw i32 1152, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i16*, i16** @cdda_out_buffer, align 8
  %46 = load i32, i32* @cdda_out_pos, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %45, i64 %48
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 2
  call void %43(i32* %44, i16* %49, i32 %51)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @cdda_out_pos, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* @cdda_out_pos, align 4
  br label %97

55:                                               ; preds = %37
  %56 = load i32, i32* @cdda_out_pos, align 4
  %57 = sub nsw i32 1152, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i16*, i16** @cdda_out_buffer, align 8
  %64 = load i32, i32* @cdda_out_pos, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %68, %69
  %71 = mul nsw i32 %70, 2
  call void %61(i32* %62, i16* %67, i32 %71)
  br label %72

72:                                               ; preds = %60, %55
  %73 = load i32*, i32** @mp3_current_file, align 8
  %74 = load i64, i64* @mp3_file_len, align 8
  %75 = call i32 @mp3dec_decode(i32* %73, i64* @mp3_file_pos, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* @cdda_out_pos, align 4
  %82 = load void (i32*, i16*, i32)*, void (i32*, i16*, i32)** %9, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %84, %85
  %87 = mul nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  %90 = load i16*, i16** @cdda_out_buffer, align 8
  %91 = load i32, i32* @cdda_out_pos, align 4
  %92 = load i32, i32* %8, align 4
  %93 = ashr i32 %91, %92
  %94 = mul nsw i32 %93, 2
  call void %82(i32* %89, i16* %90, i32 %94)
  br label %96

95:                                               ; preds = %72
  store i32 0, i32* @cdda_out_pos, align 4
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %18, %22, %96, %42
  ret void
}

declare dso_local void @mix_16h_to_32(i32*, i16*, i32) #1

declare dso_local void @mix_16h_to_32_s2(i32*, i16*, i32) #1

declare dso_local void @mix_16h_to_32_s1(i32*, i16*, i32) #1

declare dso_local i32 @mp3dec_decode(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
