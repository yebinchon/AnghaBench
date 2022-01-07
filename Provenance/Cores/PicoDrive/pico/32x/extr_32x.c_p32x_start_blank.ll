; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_start_blank.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_start_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32 }

@Pico32xDrawMode = common dso_local global i64 0, align 8
@PDM32X_OFF = common dso_local global i64 0, align 8
@PicoSkipFrame = common dso_local global i32 0, align 4
@draw = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@P32XV_Mx = common dso_local global i32 0, align 4
@PicoDrawMask = common dso_local global i32 0, align 4
@PDRAW_32X_ON = common dso_local global i32 0, align 4
@PDM32X_32X_ONLY = common dso_local global i64 0, align 8
@P32XV_VBLK = common dso_local global i32 0, align 4
@P32XV_PEN = common dso_local global i32 0, align 4
@P32XV_FS = common dso_local global i32 0, align 4
@P32XI_VINT = common dso_local global i32 0, align 4
@msh2 = common dso_local global i32 0, align 4
@SH2_STATE_VPOLL = common dso_local global i32 0, align 4
@ssh2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @p32x_start_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p32x_start_blank() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @Pico32xDrawMode, align 8
  %5 = load i64, i64* @PDM32X_OFF, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %63

7:                                                ; preds = %0
  %8 = load i32, i32* @PicoSkipFrame, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @draw, align 4
  %12 = call i32 @pprof_start(i32 %11)
  store i32 8, i32* %1, align 4
  store i32 224, i32* %2, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32, i32* @PicoOpt, align 4
  %20 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  store i32 240, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %18, %10
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @P32XV_Mx, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 12
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32, i32* @PicoDrawMask, align 4
  %39 = load i32, i32* @PDRAW_32X_ON, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 63
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @PicoDraw32xLayer(i32 %47, i32 %48, i32 %49)
  br label %60

51:                                               ; preds = %37, %31, %24
  %52 = load i64, i64* @Pico32xDrawMode, align 8
  %53 = load i64, i64* @PDM32X_32X_ONLY, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @PicoDraw32xLayerMdOnly(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* @draw, align 4
  %62 = call i32 @pprof_end(i32 %61)
  br label %63

63:                                               ; preds = %60, %7, %0
  %64 = load i32, i32* @P32XV_VBLK, align 4
  %65 = load i32, i32* @P32XV_PEN, align 4
  %66 = or i32 %64, %65
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 1), align 8
  %75 = xor i32 %73, %74
  %76 = load i32, i32* @P32XV_FS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %63
  %80 = load i32, i32* @P32XV_FS, align 4
  %81 = xor i32 %80, -1
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 1), align 8
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Pico32x, i32 0, i32 1), align 8
  %92 = xor i32 %91, 1
  %93 = call i32 @Pico32xSwapDRAM(i32 %92)
  br label %94

94:                                               ; preds = %79, %63
  %95 = call i32 (...) @SekCyclesDone()
  %96 = load i32, i32* @P32XI_VINT, align 4
  %97 = call i32 @p32x_trigger_irq(i32* null, i32 %95, i32 %96)
  %98 = load i32, i32* @SH2_STATE_VPOLL, align 4
  %99 = call i32 @p32x_sh2_poll_event(i32* @msh2, i32 %98, i32 0)
  %100 = load i32, i32* @SH2_STATE_VPOLL, align 4
  %101 = call i32 @p32x_sh2_poll_event(i32* @ssh2, i32 %100, i32 0)
  ret void
}

declare dso_local i32 @pprof_start(i32) #1

declare dso_local i32 @PicoDraw32xLayer(i32, i32, i32) #1

declare dso_local i32 @PicoDraw32xLayerMdOnly(i32, i32) #1

declare dso_local i32 @pprof_end(i32) #1

declare dso_local i32 @Pico32xSwapDRAM(i32) #1

declare dso_local i32 @p32x_trigger_irq(i32*, i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @p32x_sh2_poll_event(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
