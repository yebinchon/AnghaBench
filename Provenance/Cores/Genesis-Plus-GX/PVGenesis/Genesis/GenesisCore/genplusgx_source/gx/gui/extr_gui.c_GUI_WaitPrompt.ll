; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_WaitPrompt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_WaitPrompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SILENT = common dso_local global i64 0, align 8
@message_box = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@Key_A_png = common dso_local global i32 0, align 4
@m_input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PAD_BUTTON_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GUI_WaitPrompt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @SILENT, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %33

8:                                                ; preds = %2
  %9 = call i32 @gxTextureClose(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @message_box, i32 0, i32 1))
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @GUI_MsgBoxOpen(i8* %10, i8* %11, i32 0)
  %13 = load i32, i32* @Key_A_png, align 4
  %14 = call i32 @gxTextureOpenPNG(i32 %13, i32 0)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @message_box, i32 0, i32 0), align 4
  br label %15

15:                                               ; preds = %20, %8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m_input, i32 0, i32 0), align 4
  %17 = load i32, i32* @PAD_BUTTON_A, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (...) @VIDEO_WaitVSync()
  br label %15

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m_input, i32 0, i32 0), align 4
  %25 = load i32, i32* @PAD_BUTTON_A, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @VIDEO_WaitVSync()
  br label %23

31:                                               ; preds = %23
  %32 = call i32 (...) @GUI_MsgBoxClose()
  br label %33

33:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @gxTextureClose(i32*) #1

declare dso_local i32 @GUI_MsgBoxOpen(i8*, i8*, i32) #1

declare dso_local i32 @gxTextureOpenPNG(i32, i32) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @GUI_MsgBoxClose(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
