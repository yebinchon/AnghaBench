; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_updateKeys.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_updateKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@updateKeys.prevEvents = internal global i32 0, align 4
@PSP_CTRL_HOME = common dso_local global i32 0, align 4
@PBTN_SELECT = common dso_local global i32 0, align 4
@PGS_Menu = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@CONFIGURABLE_KEYS = common dso_local global i32 0, align 4
@PicoPad = common dso_local global i32* null, align 8
@reset_timing = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i64 0, align 8
@PAHW_PICO = common dso_local global i64 0, align 8
@movie_data = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @updateKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateKeys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = call i32 @psp_pad_read(i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @PSP_CTRL_HOME, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @sceDisplayWaitVblankStart()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @PBTN_SELECT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @PGS_Menu, align 4
  store i32 %19, i32* @engineState, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* @CONFIGURABLE_KEYS, align 4
  %22 = load i32, i32* %1, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %1, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4095
  %27 = load i32*, i32** @PicoPad, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 4095
  %32 = load i32*, i32** @PicoPad, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 28672
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %20
  %39 = load i32*, i32** @PicoPad, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @emu_DoTurbo(i32* %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %20
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 28672
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** @PicoPad, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @emu_DoTurbo(i32* %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %57, %59
  %61 = lshr i32 %60, 16
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @updateKeys.prevEvents, align 4
  %64 = xor i32 %62, %63
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 64
  %70 = call i32 @emu_set_fastforward(i32 %69)
  store i32 1, i32* @reset_timing, align 4
  br label %71

71:                                               ; preds = %67, %55
  %72 = load i32, i32* @updateKeys.prevEvents, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i64, i64* @PicoAHW, align 8
  %77 = load i64, i64* @PAHW_PICO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @RunEventsPico(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %71
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @RunEvents(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i64, i64* @movie_data, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 (...) @emu_updateMovie()
  br label %94

94:                                               ; preds = %92, %89
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %96, %98
  %100 = lshr i32 %99, 16
  store i32 %100, i32* @updateKeys.prevEvents, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @psp_pad_read(i32) #2

declare dso_local i32 @sceDisplayWaitVblankStart(...) #2

declare dso_local i32 @emu_DoTurbo(i32*, i32) #2

declare dso_local i32 @emu_set_fastforward(i32) #2

declare dso_local i32 @RunEventsPico(i32, i32) #2

declare dso_local i32 @RunEvents(i32) #2

declare dso_local i32 @emu_updateMovie(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
