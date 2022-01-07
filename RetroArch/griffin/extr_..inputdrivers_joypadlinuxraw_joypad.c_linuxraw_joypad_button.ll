; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdrivers_joypadlinuxraw_joypad.c_linuxraw_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdrivers_joypadlinuxraw_joypad.c_linuxraw_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linuxraw_joypad = type { i32 }

@linuxraw_pads = common dso_local global i32* null, align 8
@NUM_BUTTONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @linuxraw_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linuxraw_joypad_button(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.linuxraw_joypad*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** @linuxraw_pads, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = bitcast i32* %9 to %struct.linuxraw_joypad*
  store %struct.linuxraw_joypad* %10, %struct.linuxraw_joypad** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NUM_BUTTONS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %16 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @BIT32_GET(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i1 [ false, %2 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @BIT32_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
