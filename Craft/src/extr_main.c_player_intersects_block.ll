; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_player_intersects_block.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_player_intersects_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @player_intersects_block(i32 %0, float %1, float %2, float %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load float, float* %10, align 4
  %21 = call i32 @roundf(float %20)
  store i32 %21, i32* %16, align 4
  %22 = load float, float* %11, align 4
  %23 = call i32 @roundf(float %22)
  store i32 %23, i32* %17, align 4
  %24 = load float, float* %12, align 4
  %25 = call i32 @roundf(float %24)
  store i32 %25, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %26

26:                                               ; preds = %46, %7
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %19, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %50

45:                                               ; preds = %40, %34, %30
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %19, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %19, align 4
  br label %26

49:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @roundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
