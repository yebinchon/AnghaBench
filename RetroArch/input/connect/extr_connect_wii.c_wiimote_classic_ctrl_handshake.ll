; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_classic_ctrl_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_classic_ctrl_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.connect_wii_classic_ctrl_t = type { i32 }

@EXP_CLASSIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connect_wii_wiimote_t*, %struct.connect_wii_classic_ctrl_t*, i32*, i32)* @wiimote_classic_ctrl_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_classic_ctrl_handshake(%struct.connect_wii_wiimote_t* %0, %struct.connect_wii_classic_ctrl_t* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.connect_wii_wiimote_t*, align 8
  %6 = alloca %struct.connect_wii_classic_ctrl_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.connect_wii_wiimote_t* %0, %struct.connect_wii_wiimote_t** %5, align 8
  store %struct.connect_wii_classic_ctrl_t* %1, %struct.connect_wii_classic_ctrl_t** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.connect_wii_classic_ctrl_t*, %struct.connect_wii_classic_ctrl_t** %6, align 8
  %10 = call i32 @memset(%struct.connect_wii_classic_ctrl_t* %9, i32 0, i32 4)
  %11 = load i32, i32* @EXP_CLASSIC, align 4
  %12 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %5, align 8
  %13 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  ret i32 1
}

declare dso_local i32 @memset(%struct.connect_wii_classic_ctrl_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
