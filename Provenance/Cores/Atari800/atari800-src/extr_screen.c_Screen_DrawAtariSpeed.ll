; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_DrawAtariSpeed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_DrawAtariSpeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Screen_show_atari_speed = common dso_local global i64 0, align 8
@Screen_DrawAtariSpeed.percent_display = internal global i32 100, align 4
@Screen_DrawAtariSpeed.last_updated = internal global i32 0, align 4
@Screen_DrawAtariSpeed.last_time = internal global double 0.000000e+00, align 8
@Atari800_nframes = common dso_local global i32 0, align 4
@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@Screen_atari = common dso_local global i64 0, align 8
@Screen_visible_x1 = common dso_local global i32 0, align 4
@SMALLFONT_WIDTH = common dso_local global i32 0, align 4
@Screen_visible_y2 = common dso_local global i32 0, align 4
@SMALLFONT_HEIGHT = common dso_local global i32 0, align 4
@Screen_WIDTH = common dso_local global i32 0, align 4
@SMALLFONT_PERCENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Screen_DrawAtariSpeed(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  store double %0, double* %2, align 8
  %4 = load i64, i64* @Screen_show_atari_speed, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  %7 = load double, double* %2, align 8
  %8 = load double, double* @Screen_DrawAtariSpeed.last_time, align 8
  %9 = fsub double %7, %8
  %10 = fcmp oge double %9, 5.000000e-01
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load i32, i32* @Atari800_nframes, align 4
  %13 = load i32, i32* @Screen_DrawAtariSpeed.last_updated, align 4
  %14 = sub nsw i32 %12, %13
  %15 = mul nsw i32 100, %14
  %16 = sitofp i32 %15 to double
  %17 = load double, double* %2, align 8
  %18 = load double, double* @Screen_DrawAtariSpeed.last_time, align 8
  %19 = fsub double %17, %18
  %20 = fdiv double %16, %19
  %21 = load i64, i64* @Atari800_tv_mode, align 8
  %22 = load i64, i64* @Atari800_TV_PAL, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 50, i32 60
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %20, %26
  %28 = fptosi double %27 to i32
  store i32 %28, i32* @Screen_DrawAtariSpeed.percent_display, align 4
  %29 = load i32, i32* @Atari800_nframes, align 4
  store i32 %29, i32* @Screen_DrawAtariSpeed.last_updated, align 4
  %30 = load double, double* %2, align 8
  store double %30, double* @Screen_DrawAtariSpeed.last_time, align 8
  br label %31

31:                                               ; preds = %11, %6
  %32 = load i64, i64* @Screen_atari, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* @Screen_visible_x1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* @SMALLFONT_WIDTH, align 4
  %38 = mul nsw i32 5, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* @Screen_visible_y2, align 4
  %42 = load i32, i32* @SMALLFONT_HEIGHT, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* @Screen_WIDTH, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  store i32* %47, i32** %3, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @SMALLFONT_PERCENT, align 4
  %50 = call i32 @SmallFont_DrawChar(i32* %48, i32 %49, i32 12, i32 0)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @SMALLFONT_WIDTH, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* @Screen_DrawAtariSpeed.percent_display, align 4
  %57 = call i32 @SmallFont_DrawInt(i32* %55, i32 %56, i32 12, i32 0)
  br label %58

58:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @SmallFont_DrawChar(i32*, i32, i32, i32) #1

declare dso_local i32 @SmallFont_DrawInt(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
