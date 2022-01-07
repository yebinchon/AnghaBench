; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_WriteLinearBlastStereo16.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_WriteLinearBlastStereo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snd_linear_count = common dso_local global i32 0, align 4
@snd_p = common dso_local global i32* null, align 8
@snd_out = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_WriteLinearBlastStereo16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %70, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @snd_linear_count, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %73

7:                                                ; preds = %3
  %8 = load i32*, i32** @snd_p, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 32767
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load i32*, i32** @snd_out, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 32767, i32* %20, align 4
  br label %36

21:                                               ; preds = %7
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, -32768
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** @snd_out, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 -32768, i32* %28, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** @snd_out, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i32*, i32** @snd_p, align 8
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp sgt i32 %44, 32767
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32*, i32** @snd_out, align 8
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 32767, i32* %51, align 4
  br label %69

52:                                               ; preds = %36
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, -32768
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** @snd_out, align 8
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 -32768, i32* %60, align 4
  br label %68

61:                                               ; preds = %52
  %62 = load i32, i32* %2, align 4
  %63 = load i32*, i32** @snd_out, align 8
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %55
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %1, align 4
  br label %3

73:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
