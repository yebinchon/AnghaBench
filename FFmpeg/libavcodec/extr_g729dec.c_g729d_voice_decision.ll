; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729dec.c_g729d_voice_decision.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729dec.c_g729d_voice_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECISION_VOICE = common dso_local global i32 0, align 4
@DECISION_NOISE = common dso_local global i32 0, align 4
@DECISION_INTERMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @g729d_voice_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g729d_voice_decision(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 14745
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @DECISION_VOICE, align 4
  store i32 %15, i32* %9, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 9830
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @DECISION_NOISE, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @DECISION_INTERMEDIATE, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 9830
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 2
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @DECISION_NOISE, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %47, %44
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %55, %52
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @DECISION_VOICE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %66, %63
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
