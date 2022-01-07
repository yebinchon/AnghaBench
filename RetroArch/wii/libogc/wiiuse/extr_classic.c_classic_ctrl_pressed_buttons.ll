; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_classic.c_classic_ctrl_pressed_buttons.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_classic.c_classic_ctrl_pressed_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.classic_ctrl_t = type { i16, i16, i16, i16 }

@CLASSIC_CTRL_BUTTON_ALL = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.classic_ctrl_t*, i16)* @classic_ctrl_pressed_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @classic_ctrl_pressed_buttons(%struct.classic_ctrl_t* %0, i16 signext %1) #0 {
  %3 = alloca %struct.classic_ctrl_t*, align 8
  %4 = alloca i16, align 2
  store %struct.classic_ctrl_t* %0, %struct.classic_ctrl_t** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = xor i32 %6, -1
  %8 = load i16, i16* @CLASSIC_CTRL_BUTTON_ALL, align 2
  %9 = sext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %4, align 2
  %12 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %13 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 2
  %15 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %16 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %15, i32 0, i32 0
  store i16 %14, i16* %16, align 2
  %17 = load i16, i16* %4, align 2
  %18 = sext i16 %17 to i32
  %19 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %20 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = and i32 %18, %22
  %24 = trunc i32 %23 to i16
  %25 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %26 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %25, i32 0, i32 2
  store i16 %24, i16* %26, align 2
  %27 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %28 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %32 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %31, i32 0, i32 2
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  %35 = or i32 %30, %34
  %36 = load i16, i16* %4, align 2
  %37 = sext i16 %36 to i32
  %38 = xor i32 %37, -1
  %39 = and i32 %35, %38
  %40 = trunc i32 %39 to i16
  %41 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %42 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %41, i32 0, i32 3
  store i16 %40, i16* %42, align 2
  %43 = load i16, i16* %4, align 2
  %44 = load %struct.classic_ctrl_t*, %struct.classic_ctrl_t** %3, align 8
  %45 = getelementptr inbounds %struct.classic_ctrl_t, %struct.classic_ctrl_t* %44, i32 0, i32 1
  store i16 %43, i16* %45, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
