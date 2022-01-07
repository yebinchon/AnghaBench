; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_reset_vt100.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_reset_vt100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gc_scrreg_top = common dso_local global i64 0, align 8
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gc_scrreg_bottom = common dso_local global i32 0, align 4
@ATTR_NONE = common dso_local global i32 0, align 4
@gc_attr = common dso_local global i32 0, align 4
@gc_charset = common dso_local global i64* null, align 8
@gc_charset_select = common dso_local global i64 0, align 8
@gc_wrap_mode = common dso_local global i32 0, align 4
@gc_relative_origin = common dso_local global i64 0, align 8
@COLOR_BACKGROUND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@COLOR_FOREGROUND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gc_reset_vt100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_reset_vt100() #0 {
  %1 = call i32 (...) @gc_reset_tabs()
  store i64 0, i64* @gc_scrreg_top, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  store i32 %2, i32* @gc_scrreg_bottom, align 4
  %3 = load i32, i32* @ATTR_NONE, align 4
  store i32 %3, i32* @gc_attr, align 4
  %4 = load i64*, i64** @gc_charset, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 1
  store i64 0, i64* %5, align 8
  %6 = load i64*, i64** @gc_charset, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %7, align 8
  store i64 0, i64* @gc_charset_select, align 8
  store i32 1, i32* @gc_wrap_mode, align 4
  store i64 0, i64* @gc_relative_origin, align 8
  %8 = load i32, i32* @COLOR_BACKGROUND, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @gc_update_color(i32 %8, i32 %9)
  %11 = load i32, i32* @COLOR_FOREGROUND, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @gc_update_color(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @gc_reset_tabs(...) #1

declare dso_local i32 @gc_update_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
