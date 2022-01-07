; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdec.c_sbc_synthesize_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdec.c_sbc_synthesize_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_decoder_state = type { i32 }
%struct.sbc_frame = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbc_decoder_state*, %struct.sbc_frame*, i32*)* @sbc_synthesize_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbc_synthesize_audio(%struct.sbc_decoder_state* %0, %struct.sbc_frame* %1, i32* %2) #0 {
  %4 = alloca %struct.sbc_decoder_state*, align 8
  %5 = alloca %struct.sbc_frame*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbc_decoder_state* %0, %struct.sbc_decoder_state** %4, align 8
  store %struct.sbc_frame* %1, %struct.sbc_frame** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %10 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %70 [
    i32 4, label %12
    i32 8, label %41
  ]

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %16 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %23 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.sbc_decoder_state*, %struct.sbc_decoder_state** %4, align 8
  %28 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @sbc_synthesize_four(%struct.sbc_decoder_state* %27, %struct.sbc_frame* %28, i32 %29, i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %20

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %13

40:                                               ; preds = %13
  br label %70

41:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %45 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %52 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.sbc_decoder_state*, %struct.sbc_decoder_state** %4, align 8
  %57 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @sbc_synthesize_eight(%struct.sbc_decoder_state* %56, %struct.sbc_frame* %57, i32 %58, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %49

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %42

69:                                               ; preds = %42
  br label %70

70:                                               ; preds = %3, %69, %40
  ret void
}

declare dso_local i32 @sbc_synthesize_four(%struct.sbc_decoder_state*, %struct.sbc_frame*, i32, i32, i32*) #1

declare dso_local i32 @sbc_synthesize_eight(%struct.sbc_decoder_state*, %struct.sbc_frame*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
