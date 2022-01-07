; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_savestate_menu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_savestate_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state_slot_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Load state\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Save state\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SLOT %i (%s)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @draw_savestate_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_savestate_menu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 25, i32* %5, align 4
  store i32 60, i32* %6, align 4
  %9 = load i32, i32* @state_slot_flags, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @draw_savestate_bg(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = call i32 @menu_draw_begin(i32 1)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %24 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %19, i32 30, i8* %23)
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %28, 10
  %30 = add nsw i32 %27, %29
  %31 = call i32 @menu_draw_selection(i32 %26, i32 %30, i32 108)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %48, %17
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @state_slot_flags, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %47 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %37, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 10
  store i32 %52, i32* %7, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @draw_savestate_bg(i32) #1

declare dso_local i32 @menu_draw_begin(i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*, ...) #1

declare dso_local i32 @menu_draw_selection(i32, i32, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
