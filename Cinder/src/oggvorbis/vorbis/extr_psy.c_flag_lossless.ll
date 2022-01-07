; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_flag_lossless.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_flag_lossless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float, float, float*, float*, i32*, i32, i32)* @flag_lossless to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flag_lossless(i32 %0, float %1, float %2, float* %3, float* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32 %0, i32* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %62, %8
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %15, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load float, float* %11, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load float, float* %10, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi float [ %31, %30 ], [ %33, %32 ]
  store float %35, float* %18, align 4
  %36 = load float*, float** %12, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = call float @fabs(float %40)
  %42 = load float*, float** %13, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fdiv float %41, %46
  store float %47, float* %19, align 4
  %48 = load float, float* %19, align 4
  %49 = load float, float* %18, align 4
  %50 = fcmp olt float %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  br label %61

56:                                               ; preds = %34
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %20

65:                                               ; preds = %20
  ret void
}

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
