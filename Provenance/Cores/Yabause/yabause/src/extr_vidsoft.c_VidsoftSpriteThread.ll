; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VidsoftSpriteThread.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VidsoftSpriteThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i64* }

@vidsoft_thread_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TITAN_SPRITE = common dso_local global i64 0, align 8
@sprite_window_mask = common dso_local global i32 0, align 4
@vdp1frontframebuffer = common dso_local global i32 0, align 4
@Vdp1Regs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VidsoftSpriteThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 5), align 8
  %5 = load i64, i64* @TITAN_SPRITE, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 5), align 8
  %11 = load i64, i64* @TITAN_SPRITE, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @sprite_window_mask, align 4
  %14 = load i32, i32* @vdp1frontframebuffer, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 3), align 8
  %16 = load i32, i32* @Vdp1Regs, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 2), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 1), align 8
  %19 = call i32 @VidsoftDrawSprite(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 4), i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vidsoft_thread_context, i32 0, i32 0), align 8
  %21 = load i64, i64* @TITAN_SPRITE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %9, %3
  %24 = call i32 (...) @YabThreadSleep()
  br label %3
}

declare dso_local i32 @VidsoftDrawSprite(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @YabThreadSleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
