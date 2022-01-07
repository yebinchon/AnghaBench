; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_ColorFromString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_ColorFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float*)* @CG_ColorFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ColorFromString(i8* %0, float* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load float*, float** %4, align 8
  %7 = call i32 @VectorClear(float* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @atoi(i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load float*, float** %4, align 8
  %17 = call i32 @VectorSet(float* %16, i32 1, i32 1, i32 1)
  br label %39

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  store float 1.000000e+00, float* %24, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load float*, float** %4, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  store float 1.000000e+00, float* %31, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  store float 1.000000e+00, float* %38, align 4
  br label %39

39:                                               ; preds = %15, %36, %32
  ret void
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @VectorSet(float*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
