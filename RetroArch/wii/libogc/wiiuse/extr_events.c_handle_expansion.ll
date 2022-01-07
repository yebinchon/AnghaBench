; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_handle_expansion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_handle_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*, i32*)* @handle_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_expansion(%struct.wiimote_t* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %6 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 128, label %9
    i32 130, label %15
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %11 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @nunchuk_event(i32* %12, i32* %13)
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %17 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @classic_ctrl_event(i32* %18, i32* %19)
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %23 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @motion_plus_event(i32* %24, i32* %25)
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %21, %15, %9
  ret void
}

declare dso_local i32 @nunchuk_event(i32*, i32*) #1

declare dso_local i32 @classic_ctrl_event(i32*, i32*) #1

declare dso_local i32 @motion_plus_event(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
