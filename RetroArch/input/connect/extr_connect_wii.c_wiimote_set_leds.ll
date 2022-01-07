; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_set_leds.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { i32 }

@WM_CMD_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connect_wii_wiimote_t*, i32)* @wiimote_set_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_set_leds(%struct.connect_wii_wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.connect_wii_wiimote_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.connect_wii_wiimote_t* %0, %struct.connect_wii_wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %3, align 8
  %7 = icmp ne %struct.connect_wii_wiimote_t* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %3, align 8
  %10 = call i32 @wiimote_is_connected(%struct.connect_wii_wiimote_t* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %24

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 240
  %16 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %3, align 8
  %17 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %3, align 8
  %19 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %3, align 8
  %22 = load i32, i32* @WM_CMD_LED, align 4
  %23 = call i32 @wiimote_send(%struct.connect_wii_wiimote_t* %21, i32 %22, i32* %5, i32 1)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @wiimote_is_connected(%struct.connect_wii_wiimote_t*) #1

declare dso_local i32 @wiimote_send(%struct.connect_wii_wiimote_t*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
