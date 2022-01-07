; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_emu_HandleResume.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_emu_HandleResume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_14__* null, align 8
@rom_fname_reload = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".cue\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"emu_HandleResume: reopen %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"reopen %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_HandleResume() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = load i32, i32* @PicoAHW, align 4
  %5 = load i32, i32* @PAHW_MCD, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %99

9:                                                ; preds = %0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Pico_mcd, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %81

18:                                               ; preds = %9
  %19 = load i8*, i8** @rom_fname_reload, align 8
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** @rom_fname_reload, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %2, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load i8*, i8** %1, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 -4
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i8*, i8** @rom_fname_reload, align 8
  %34 = call %struct.TYPE_13__* @cue_parse(i8* %33)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %3, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = icmp ne %struct.TYPE_13__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %1, align 8
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44, %24, %18
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @lprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Pico_mcd, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @pm_close(i32* %54)
  %56 = load i8*, i8** %1, align 8
  %57 = call i32* @pm_open(i8* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Pico_mcd, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32* %57, i32** %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Pico_mcd, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %74 = call i32 @lprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %45
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = call i32 @cue_destroy(%struct.TYPE_13__* %78)
  br label %80

80:                                               ; preds = %77, %45
  br label %81

81:                                               ; preds = %80, %9
  %82 = call i32 (...) @mp3_reopen_file()
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Pico_mcd, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 54
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Pico_mcd, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (...) @cdda_start_play()
  br label %99

99:                                               ; preds = %8, %97, %90, %81
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @cue_parse(i8*) #1

declare dso_local i32 @lprintf(i8*, i8*) #1

declare dso_local i32 @pm_close(i32*) #1

declare dso_local i32* @pm_open(i8*) #1

declare dso_local i32 @cue_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @mp3_reopen_file(...) #1

declare dso_local i32 @cdda_start_play(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
