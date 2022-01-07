; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_spreset.c_Reset_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_spreset.c_Reset_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ART_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RESET GAME?\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_INVERSE = common dso_local global i32 0, align 4
@color_red = common dso_local global i32 0, align 4
@s_reset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@UI_LEFT = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@PROP_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"WARNING: This resets all of the\00", align 1
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_yellow = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"single player game variables.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Do this only if you want to\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"start over from the beginning.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Reset_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Reset_MenuDraw() #0 {
  %1 = load i32, i32* @ART_FRAME, align 4
  %2 = call i32 @UI_DrawNamedPic(i32 142, i32 118, i32 359, i32 256, i32 %1)
  %3 = load i32, i32* @UI_CENTER, align 4
  %4 = load i32, i32* @UI_INVERSE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @color_red, align 4
  %7 = call i32 @UI_DrawProportionalString(i32 320, i32 204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_reset, i32 0, i32 0), align 4
  %9 = load i32, i32* @UI_LEFT, align 4
  %10 = load i32, i32* @UI_INVERSE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @color_red, align 4
  %13 = call i32 @UI_DrawProportionalString(i32 %8, i32 265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  %14 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_reset, i32 0, i32 1))
  %15 = load i32, i32* @SCREEN_WIDTH, align 4
  %16 = sdiv i32 %15, 2
  %17 = load i32, i32* @PROP_HEIGHT, align 4
  %18 = mul nsw i32 %17, 0
  %19 = add nsw i32 356, %18
  %20 = load i32, i32* @UI_CENTER, align 4
  %21 = load i32, i32* @UI_SMALLFONT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @color_yellow, align 4
  %24 = call i32 @UI_DrawProportionalString(i32 %16, i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @SCREEN_WIDTH, align 4
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* @PROP_HEIGHT, align 4
  %28 = mul nsw i32 %27, 1
  %29 = add nsw i32 356, %28
  %30 = load i32, i32* @UI_CENTER, align 4
  %31 = load i32, i32* @UI_SMALLFONT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @color_yellow, align 4
  %34 = call i32 @UI_DrawProportionalString(i32 %26, i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @SCREEN_WIDTH, align 4
  %36 = sdiv i32 %35, 2
  %37 = load i32, i32* @PROP_HEIGHT, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 356, %38
  %40 = load i32, i32* @UI_CENTER, align 4
  %41 = load i32, i32* @UI_SMALLFONT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @color_yellow, align 4
  %44 = call i32 @UI_DrawProportionalString(i32 %36, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @SCREEN_WIDTH, align 4
  %46 = sdiv i32 %45, 2
  %47 = load i32, i32* @PROP_HEIGHT, align 4
  %48 = mul nsw i32 %47, 3
  %49 = add nsw i32 356, %48
  %50 = load i32, i32* @UI_CENTER, align 4
  %51 = load i32, i32* @UI_SMALLFONT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @color_yellow, align 4
  %54 = call i32 @UI_DrawProportionalString(i32 %46, i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @UI_DrawNamedPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @Menu_Draw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
