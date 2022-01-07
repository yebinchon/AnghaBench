; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PicoFrameStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PicoFrameStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@rendstatus = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PDRAW_INTERLACE = common dso_local global i32 0, align 4
@PDRAW_32_COLS = common dso_local global i32 0, align 4
@rendstatus_old = common dso_local global i32 0, align 4
@rendlines = common dso_local global i32 0, align 4
@HighColBase = common dso_local global i64 0, align 8
@HighColIncrement = common dso_local global i32 0, align 4
@HighCol = common dso_local global i64 0, align 8
@DrawLineDestBase = common dso_local global i64 0, align 8
@DrawLineDestIncrement = common dso_local global i32 0, align 4
@DrawLineDest = common dso_local global i8* null, align 8
@DrawScanline = common dso_local global i64 0, align 8
@skip_next_line = common dso_local global i64 0, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoFrameStart() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 8, i32* %1, align 4
  store i32 224, i32* %2, align 4
  store i32 0, i32* @rendstatus, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 12
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 6
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @PDRAW_INTERLACE, align 4
  %10 = load i32, i32* @rendstatus, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @rendstatus, align 4
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 12
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @PDRAW_32_COLS, align 4
  %20 = load i32, i32* @rendstatus, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @rendstatus, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  store i32 240, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* @rendstatus, align 4
  %31 = load i32, i32* @rendstatus_old, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @rendlines, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* @rendlines, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 240
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 8
  %43 = load i32, i32* %2, align 4
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 12
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  %51 = call i32 @emu_video_mode_change(i32 %42, i32 %43, i32 %50)
  %52 = load i32, i32* @rendstatus, align 4
  store i32 %52, i32* @rendstatus_old, align 4
  br label %53

53:                                               ; preds = %37, %33
  %54 = load i64, i64* @HighColBase, align 8
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @HighColIncrement, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  store i64 %59, i64* @HighCol, align 8
  %60 = load i64, i64* @DrawLineDestBase, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @DrawLineDestIncrement, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  store i8* %66, i8** @DrawLineDest, align 8
  store i64 0, i64* @DrawScanline, align 8
  store i64 0, i64* @skip_next_line, align 8
  %67 = load i32, i32* @PicoOpt, align 4
  %68 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %78

72:                                               ; preds = %53
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = call i32 @PrepareSprites(i32 1)
  br label %78

78:                                               ; preds = %76, %71
  ret void
}

declare dso_local i32 @emu_video_mode_change(i32, i32, i32) #1

declare dso_local i32 @PrepareSprites(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
