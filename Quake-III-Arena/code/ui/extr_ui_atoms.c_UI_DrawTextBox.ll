; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_DrawTextBox.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_DrawTextBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@colorBlack = common dso_local global i32 0, align 4
@colorWhite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawTextBox(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %13, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @colorBlack, align 4
  %26 = call i32 @UI_FillRect(i32 %12, i32 %16, i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %33 = sdiv i32 %32, 2
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @colorWhite, align 4
  %44 = call i32 @UI_DrawRect(i32 %30, i32 %34, i32 %38, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @UI_FillRect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_DrawRect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
