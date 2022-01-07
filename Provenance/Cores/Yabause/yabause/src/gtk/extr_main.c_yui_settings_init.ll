; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_settings_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_settings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@M68KCORE_C68K = common dso_local global i32 0, align 4
@yinit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PERCORE_GTK = common dso_local global i32 0, align 4
@SH2CORE_DEFAULT = common dso_local global i32 0, align 4
@VIDCORE_SOFT = common dso_local global i32 0, align 4
@SNDCORE_DUMMY = common dso_local global i32 0, align 4
@CDCORE_DEFAULT = common dso_local global i32 0, align 4
@CART_NONE = common dso_local global i32 0, align 4
@biospath = common dso_local global i32 0, align 4
@cdpath = common dso_local global i32 0, align 4
@buppath = common dso_local global i32 0, align 4
@mpegpath = common dso_local global i32 0, align 4
@cartpath = common dso_local global i32 0, align 4
@VIDEOFORMATTYPE_NTSC = common dso_local global i32 0, align 4
@OSDCORE_DEFAULT = common dso_local global i32 0, align 4
@VIDCORE_OGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @yui_settings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_settings_init() #0 {
  %1 = load i32, i32* @M68KCORE_C68K, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 15), align 8
  %2 = load i32, i32* @PERCORE_GTK, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 14), align 4
  %3 = load i32, i32* @SH2CORE_DEFAULT, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 13), align 8
  %4 = load i32, i32* @VIDCORE_SOFT, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 12), align 4
  %5 = load i32, i32* @SNDCORE_DUMMY, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 11), align 8
  %6 = load i32, i32* @CDCORE_DEFAULT, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 10), align 4
  %7 = load i32, i32* @CART_NONE, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 8), align 8
  %8 = load i32, i32* @biospath, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 7), align 8
  %9 = load i32, i32* @cdpath, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 6), align 4
  %10 = load i32, i32* @buppath, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 5), align 8
  %11 = load i32, i32* @mpegpath, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 4), align 4
  %12 = load i32, i32* @cartpath, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 3), align 8
  %13 = load i32, i32* @VIDEOFORMATTYPE_NTSC, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 2), align 4
  %14 = load i32, i32* @OSDCORE_DEFAULT, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
