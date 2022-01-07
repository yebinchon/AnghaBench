; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_PicoFrameStartMode4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_PicoFrameStartMode4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@skip_next_line = common dso_local global i64 0, align 8
@screen_offset = common dso_local global i32 0, align 4
@PDRAW_32_COLS = common dso_local global i64 0, align 8
@rendstatus = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rendstatus_old = common dso_local global i64 0, align 8
@rendlines = common dso_local global i32 0, align 4
@DrawLineDestBase = common dso_local global i64 0, align 8
@DrawLineDestIncrement = common dso_local global i32 0, align 4
@DrawLineDest = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoFrameStartMode4() #0 {
  %1 = alloca i32, align 4
  store i32 192, i32* %1, align 4
  store i64 0, i64* @skip_next_line, align 8
  store i32 24, i32* @screen_offset, align 4
  %2 = load i64, i64* @PDRAW_32_COLS, align 8
  store i64 %2, i64* @rendstatus, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 6
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %23

8:                                                ; preds = %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 24
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* @screen_offset, align 4
  store i32 240, i32* %1, align 4
  br label %22

21:                                               ; preds = %14
  store i32 8, i32* @screen_offset, align 4
  store i32 224, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %8, %0
  %24 = load i64, i64* @rendstatus, align 8
  %25 = load i64, i64* @rendstatus_old, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @rendlines, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @screen_offset, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @emu_video_mode_change(i32 %32, i32 %33, i32 1)
  %35 = load i64, i64* @rendstatus, align 8
  store i64 %35, i64* @rendstatus_old, align 8
  %36 = load i32, i32* %1, align 4
  store i32 %36, i32* @rendlines, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i64, i64* @DrawLineDestBase, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @screen_offset, align 4
  %41 = load i32, i32* @DrawLineDestIncrement, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** @DrawLineDest, align 8
  ret void
}

declare dso_local i32 @emu_video_mode_change(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
