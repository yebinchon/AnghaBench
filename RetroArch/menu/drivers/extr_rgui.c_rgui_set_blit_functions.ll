; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_blit_functions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_blit_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blit_line_extended_shadow = common dso_local global i32 0, align 4
@blit_line = common dso_local global i32 0, align 4
@blit_line_regular_shadow = common dso_local global i32 0, align 4
@blit_symbol_shadow = common dso_local global i32 0, align 4
@blit_symbol = common dso_local global i32 0, align 4
@blit_line_extended = common dso_local global i32 0, align 4
@blit_line_regular = common dso_local global i32 0, align 4
@blit_symbol_regular = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rgui_set_blit_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_set_blit_functions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @blit_line_extended_shadow, align 4
  store i32 %11, i32* @blit_line, align 4
  br label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @blit_line_regular_shadow, align 4
  store i32 %13, i32* @blit_line, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* @blit_symbol_shadow, align 4
  store i32 %15, i32* @blit_symbol, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @blit_line_extended, align 4
  store i32 %20, i32* @blit_line, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @blit_line_regular, align 4
  store i32 %22, i32* @blit_line, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* @blit_symbol_regular, align 4
  store i32 %24, i32* @blit_symbol, align 4
  br label %25

25:                                               ; preds = %23, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
