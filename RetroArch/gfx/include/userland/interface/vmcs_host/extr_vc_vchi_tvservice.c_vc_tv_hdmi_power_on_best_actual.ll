; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_tvservice.c_vc_tv_hdmi_power_on_best_actual.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_tvservice.c_vc_tv_hdmi_power_on_best_actual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@VC_TV_HDMI_ON_BEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @vc_tv_hdmi_power_on_best_actual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_tv_hdmi_power_on_best_actual(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @VCOS_FUNCTION, align 4
  %16 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @VC_HTOV32(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @VC_HTOV32(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @VC_HTOV32(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @VC_HTOV32(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i8* @VC_HTOV32(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i8* @VC_HTOV32(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @VC_TV_HDMI_ON_BEST, align 4
  %36 = call i32 @tvservice_send_command(i32 %35, %struct.TYPE_3__* %13, i32 48, i32 1)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  ret i32 %37
}

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i8* @VC_HTOV32(i32) #1

declare dso_local i32 @tvservice_send_command(i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
