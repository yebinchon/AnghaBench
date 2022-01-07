; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_savestate_bg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_savestate_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @draw_savestate_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_savestate_bg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @emu_GetSaveFName(i32 1, i32 0, i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %73

11:                                               ; preds = %1
  %12 = call i8* (...) @get_oldstate_for_preview()
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %73

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -3
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @gzopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %3, align 8
  %28 = call i32 @emu_setSaveStateCbs(i32 1)
  br label %33

29:                                               ; preds = %16
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  %32 = call i32 @emu_setSaveStateCbs(i32 0)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %3, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i32, i32* @PicoAHW, align 4
  %38 = load i32, i32* @PAHW_MCD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @PicoCdLoadStateGfx(i8* %42)
  br label %65

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i32 @areaSeek(i8* %45, i32 65568, i32 %46)
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 3), align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @areaRead(i32* %48, i32 1, i32 8, i8* %49)
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* @SEEK_CUR, align 4
  %53 = call i32 @areaSeek(i8* %51, i32 8192, i32 %52)
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 2), align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @areaRead(i32* %54, i32 1, i32 8, i8* %55)
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @areaRead(i32* %57, i32 1, i32 8, i8* %58)
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i32 @areaSeek(i8* %60, i32 139680, i32 %61)
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @areaRead(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), i32 1, i32 4, i8* %63)
  br label %65

65:                                               ; preds = %44, %41
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @areaClose(i8* %66)
  br label %68

68:                                               ; preds = %65, %33
  %69 = call i32 @emu_forcedFrame(i32 0)
  %70 = call i32 @menu_prepare_bg(i32 1, i32 0)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @restore_oldstate(i8* %71)
  br label %73

73:                                               ; preds = %68, %15, %10
  ret void
}

declare dso_local i8* @emu_GetSaveFName(i32, i32, i32) #1

declare dso_local i8* @get_oldstate_for_preview(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @gzopen(i8*, i8*) #1

declare dso_local i32 @emu_setSaveStateCbs(i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @PicoCdLoadStateGfx(i8*) #1

declare dso_local i32 @areaSeek(i8*, i32, i32) #1

declare dso_local i32 @areaRead(i32*, i32, i32, i8*) #1

declare dso_local i32 @areaClose(i8*) #1

declare dso_local i32 @emu_forcedFrame(i32) #1

declare dso_local i32 @menu_prepare_bg(i32, i32) #1

declare dso_local i32 @restore_oldstate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
