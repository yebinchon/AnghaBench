; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_wiiuse_pressed_buttons.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_wiiuse_pressed_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i16, i16, i16, i16 }

@WIIMOTE_BUTTON_ALL = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_pressed_buttons(%struct.wiimote_t* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = call signext i16 @BIG_ENDIAN_SHORT(i16 signext %8)
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @WIIMOTE_BUTTON_ALL, align 2
  %12 = sext i16 %11 to i32
  %13 = and i32 %10, %12
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %16 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 2
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %19 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %18, i32 0, i32 0
  store i16 %17, i16* %19, align 2
  %20 = load i16, i16* %5, align 2
  %21 = sext i16 %20 to i32
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %23 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = and i32 %21, %25
  %27 = trunc i32 %26 to i16
  %28 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %29 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %28, i32 0, i32 2
  store i16 %27, i16* %29, align 2
  %30 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %31 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %30, i32 0, i32 1
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %35 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %34, i32 0, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = or i32 %33, %37
  %39 = load i16, i16* %5, align 2
  %40 = sext i16 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = trunc i32 %42 to i16
  %44 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %45 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %44, i32 0, i32 3
  store i16 %43, i16* %45, align 2
  %46 = load i16, i16* %5, align 2
  %47 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %48 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %47, i32 0, i32 1
  store i16 %46, i16* %48, align 2
  ret void
}

declare dso_local signext i16 @BIG_ENDIAN_SHORT(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
