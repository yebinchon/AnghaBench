; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_gx.c_frontend_gx_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_gx.c_frontend_gx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32*, i8* }

@dotab_stdout = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global i32** null, align 8
@STD_OUT = common dso_local global i64 0, align 8
@STD_ERR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GDBSTUB_DEVICE_USB = common dso_local global i32 0, align 4
@GX_DEVICE_SD = common dso_local global i64 0, align 8
@GX_DEVICE_USB = common dso_local global i64 0, align 8
@VI_DISPLAY_PIX_SZ = common dso_local global i32 0, align 4
@__io_usbstorage = common dso_local global i32 0, align 4
@__io_wiisd = common dso_local global i32 0, align 4
@gx_device_cond = common dso_local global i32 0, align 4
@gx_device_cond_mutex = common dso_local global i8* null, align 8
@gx_device_mutex = common dso_local global i8* null, align 8
@gx_device_thread = common dso_local global i32 0, align 4
@gx_devices = common dso_local global %struct.TYPE_7__* null, align 8
@gx_devthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @frontend_gx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_gx_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @__exception_setreload(i32 8)
  %5 = call i32 (...) @fatInitDefault()
  %6 = load i32**, i32*** @devoptab_list, align 8
  %7 = load i64, i64* @STD_OUT, align 8
  %8 = getelementptr inbounds i32*, i32** %6, i64 %7
  store i32* @dotab_stdout, i32** %8, align 8
  %9 = load i32**, i32*** @devoptab_list, align 8
  %10 = load i64, i64* @STD_ERR, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  store i32* @dotab_stdout, i32** %11, align 8
  ret void
}

declare dso_local i32 @__exception_setreload(i32) #1

declare dso_local i32 @fatInitDefault(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
