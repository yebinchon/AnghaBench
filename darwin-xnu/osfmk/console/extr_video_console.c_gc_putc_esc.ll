; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_esc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ESnormal = common dso_local global i32 0, align 4
@gc_vt100state = common dso_local global i32 0, align 4
@ESsquare = common dso_local global i32 0, align 4
@gc_x = common dso_local global i32 0, align 4
@gc_y = common dso_local global i32 0, align 4
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gc_scrreg_bottom = common dso_local global i32 0, align 4
@gc_scrreg_top = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gc_savex = common dso_local global i32 0, align 4
@gc_savey = common dso_local global i32 0, align 4
@gc_attr = common dso_local global i32 0, align 4
@gc_saveattr = common dso_local global i32 0, align 4
@gc_charset_select = common dso_local global i32 0, align 4
@gc_save_charset_s = common dso_local global i32 0, align 4
@gc_charset = common dso_local global i32* null, align 8
@gc_charset_save = common dso_local global i32* null, align 8
@EScharsize = common dso_local global i32 0, align 4
@ESsetG0 = common dso_local global i32 0, align 4
@ESsetG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @gc_putc_esc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_putc_esc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i32, i32* @ESnormal, align 4
  store i32 %3, i32* @gc_vt100state, align 4
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %91 [
    i32 91, label %6
    i32 99, label %8
    i32 68, label %14
    i32 69, label %14
    i32 72, label %34
    i32 77, label %38
    i32 62, label %51
    i32 55, label %53
    i32 56, label %68
    i32 90, label %83
    i32 35, label %84
    i32 40, label %86
    i32 41, label %88
    i32 61, label %90
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @ESsquare, align 4
  store i32 %7, i32* @gc_vt100state, align 4
  br label %92

8:                                                ; preds = %1
  %9 = call i32 (...) @gc_reset_vt100()
  %10 = load i32, i32* @gc_x, align 4
  %11 = load i32, i32* @gc_y, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %13 = call i32 @gc_clear_screen(i32 %10, i32 %11, i32 0, i32 %12, i32 2)
  store i32 0, i32* @gc_y, align 4
  store i32 0, i32* @gc_x, align 4
  br label %92

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @gc_y, align 4
  %16 = load i32, i32* @gc_scrreg_bottom, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @gc_scrreg_top, align 4
  %21 = load i32, i32* @gc_scrreg_bottom, align 4
  %22 = call i32 @gc_scroll_up(i32 1, i32 %20, i32 %21)
  %23 = load i32, i32* @gc_scrreg_bottom, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* @gc_y, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @gc_y, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @gc_y, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 69
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* @gc_x, align 4
  br label %33

33:                                               ; preds = %32, %28
  br label %92

34:                                               ; preds = %1
  %35 = load i32, i32* @gc_x, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @gc_set_tab_stop(i32 %35, i32 %36)
  br label %92

38:                                               ; preds = %1
  %39 = load i32, i32* @gc_y, align 4
  %40 = load i32, i32* @gc_scrreg_top, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @gc_scrreg_top, align 4
  %44 = load i32, i32* @gc_scrreg_bottom, align 4
  %45 = call i32 @gc_scroll_down(i32 1, i32 %43, i32 %44)
  %46 = load i32, i32* @gc_scrreg_top, align 4
  store i32 %46, i32* @gc_y, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @gc_y, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @gc_y, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %92

51:                                               ; preds = %1
  %52 = call i32 (...) @gc_reset_vt100()
  br label %92

53:                                               ; preds = %1
  %54 = load i32, i32* @gc_x, align 4
  store i32 %54, i32* @gc_savex, align 4
  %55 = load i32, i32* @gc_y, align 4
  store i32 %55, i32* @gc_savey, align 4
  %56 = load i32, i32* @gc_attr, align 4
  store i32 %56, i32* @gc_saveattr, align 4
  %57 = load i32, i32* @gc_charset_select, align 4
  store i32 %57, i32* @gc_save_charset_s, align 4
  %58 = load i32*, i32** @gc_charset, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** @gc_charset_save, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** @gc_charset, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** @gc_charset_save, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  br label %92

68:                                               ; preds = %1
  %69 = load i32, i32* @gc_savex, align 4
  store i32 %69, i32* @gc_x, align 4
  %70 = load i32, i32* @gc_savey, align 4
  store i32 %70, i32* @gc_y, align 4
  %71 = load i32, i32* @gc_saveattr, align 4
  store i32 %71, i32* @gc_attr, align 4
  %72 = load i32, i32* @gc_save_charset_s, align 4
  store i32 %72, i32* @gc_charset_select, align 4
  %73 = load i32*, i32** @gc_charset_save, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @gc_charset, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** @gc_charset_save, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** @gc_charset, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  br label %92

83:                                               ; preds = %1
  br label %92

84:                                               ; preds = %1
  %85 = load i32, i32* @EScharsize, align 4
  store i32 %85, i32* @gc_vt100state, align 4
  br label %92

86:                                               ; preds = %1
  %87 = load i32, i32* @ESsetG0, align 4
  store i32 %87, i32* @gc_vt100state, align 4
  br label %92

88:                                               ; preds = %1
  %89 = load i32, i32* @ESsetG1, align 4
  store i32 %89, i32* @gc_vt100state, align 4
  br label %92

90:                                               ; preds = %1
  br label %92

91:                                               ; preds = %1
  br label %92

92:                                               ; preds = %91, %90, %88, %86, %84, %83, %68, %53, %51, %50, %34, %33, %8, %6
  ret void
}

declare dso_local i32 @gc_reset_vt100(...) #1

declare dso_local i32 @gc_clear_screen(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gc_scroll_up(i32, i32, i32) #1

declare dso_local i32 @gc_set_tab_stop(i32, i32) #1

declare dso_local i32 @gc_scroll_down(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
