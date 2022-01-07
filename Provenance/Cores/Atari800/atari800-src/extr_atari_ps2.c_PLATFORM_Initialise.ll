; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_PLATFORM_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_PLATFORM_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@Colours_table = common dso_local global i32* null, align 8
@clut = common dso_local global i32* null, align 8
@GS_MODE_NTSC = common dso_local global i32 0, align 4
@gsGlobal = common dso_local global %struct.TYPE_6__* null, align 8
@D_CTRL_RELE_ON = common dso_local global i32 0, align 4
@D_CTRL_MFD_OFF = common dso_local global i32 0, align 4
@D_CTRL_STS_UNSPEC = common dso_local global i32 0, align 4
@D_CTRL_STD_OFF = common dso_local global i32 0, align 4
@D_CTRL_RCYC_8 = common dso_local global i32 0, align 4
@DMA_CHANNEL_GIF = common dso_local global i32 0, align 4
@GS_PSM_CT32 = common dso_local global i32 0, align 4
@PAD_PORT = common dso_local global i32 0, align 4
@PAD_SLOT = common dso_local global i32 0, align 4
@padBuf = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load i32*, i32** @Colours_table, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 65280
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = shl i32 %22, 16
  %24 = add nsw i32 %20, %23
  %25 = load i32*, i32** @clut, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 2
  %29 = xor i32 %26, %28
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %33, 24
  br label %37

35:                                               ; preds = %10
  %36 = load i32, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %25, i64 %39
  store i32 %24, i32* %40, align 4
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7

44:                                               ; preds = %7
  %45 = call i32 (...) @init_scr()
  %46 = load i32, i32* @GS_MODE_NTSC, align 4
  %47 = call %struct.TYPE_6__* @gsKit_init_global(i32 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** @gsGlobal, align 8
  %48 = load i32, i32* @D_CTRL_RELE_ON, align 4
  %49 = load i32, i32* @D_CTRL_MFD_OFF, align 4
  %50 = load i32, i32* @D_CTRL_STS_UNSPEC, align 4
  %51 = load i32, i32* @D_CTRL_STD_OFF, align 4
  %52 = load i32, i32* @D_CTRL_RCYC_8, align 4
  %53 = call i32 @dmaKit_init(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @DMA_CHANNEL_GIF, align 4
  %55 = call i32 @dmaKit_chan_init(i32 %54)
  %56 = load i32, i32* @GS_PSM_CT32, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gsGlobal, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gsGlobal, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gsGlobal, align 8
  %64 = call i32 @gsKit_init_screen(%struct.TYPE_6__* %63)
  %65 = call i32 @padInit(i32 0)
  %66 = load i32, i32* @PAD_PORT, align 4
  %67 = load i32, i32* @PAD_SLOT, align 4
  %68 = load i32, i32* @padBuf, align 4
  %69 = call i32 @padPortOpen(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @TRUE, align 4
  ret i32 %70
}

declare dso_local i32 @init_scr(...) #1

declare dso_local %struct.TYPE_6__* @gsKit_init_global(i32) #1

declare dso_local i32 @dmaKit_init(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaKit_chan_init(i32) #1

declare dso_local i32 @gsKit_init_screen(%struct.TYPE_6__*) #1

declare dso_local i32 @padInit(i32) #1

declare dso_local i32 @padPortOpen(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
