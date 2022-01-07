; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_snd.c_SNDDMA_BeginPainting.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_snd.c_SNDDMA_BeginPainting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_10__*, i32*)*, i64 (%struct.TYPE_10__*, i32, i32, i32**, i32*, i32**, i32*, i32)*, i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, i32, i32, i32)* }
%struct.TYPE_11__ = type { i8* }

@pDSBuf = common dso_local global %struct.TYPE_10__* null, align 8
@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Couldn't get sound buffer status\0A\00", align 1
@DSBSTATUS_BUFFERLOST = common dso_local global i32 0, align 4
@DSBSTATUS_PLAYING = common dso_local global i32 0, align 4
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@dma = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@gSndBufSize = common dso_local global i32 0, align 4
@locksize = common dso_local global i32 0, align 4
@DSERR_BUFFERLOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"SNDDMA_BeginPainting: Lock failed with error '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SNDDMA_BeginPainting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %87

10:                                               ; preds = %0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64 (%struct.TYPE_10__*, i32*)*, i64 (%struct.TYPE_10__*, i32*)** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %17 = call i64 %15(%struct.TYPE_10__* %16, i32* %6)
  %18 = load i64, i64* @DS_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %10
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DSBSTATUS_BUFFERLOST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %34 = call i32 %32(%struct.TYPE_10__* %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DSBSTATUS_PLAYING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32 (%struct.TYPE_10__*, i32, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %47 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %48 = call i32 %45(%struct.TYPE_10__* %46, i32 0, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %40, %35
  store i32 0, i32* %1, align 4
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dma, i32 0, i32 0), align 8
  br label %50

50:                                               ; preds = %83, %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64 (%struct.TYPE_10__*, i32, i32, i32**, i32*, i32**, i32*, i32)*, i64 (%struct.TYPE_10__*, i32, i32, i32**, i32*, i32**, i32*, i32)** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %57 = load i32, i32* @gSndBufSize, align 4
  %58 = call i64 %55(%struct.TYPE_10__* %56, i32 0, i32 %57, i32** %3, i32* @locksize, i32** %4, i32* %2, i32 0)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* @DS_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %50
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @DSERR_BUFFERLOST, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @DSoundError(i64 %66)
  %68 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = call i32 (...) @S_Shutdown()
  br label %87

70:                                               ; preds = %61
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pDSBuf, align 8
  %77 = call i32 %75(%struct.TYPE_10__* %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %87

83:                                               ; preds = %78
  br label %50

84:                                               ; preds = %50
  %85 = load i32*, i32** %3, align 8
  %86 = bitcast i32* %85 to i8*
  store i8* %86, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dma, i32 0, i32 0), align 8
  br label %87

87:                                               ; preds = %84, %82, %65, %9
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @DSoundError(i64) #1

declare dso_local i32 @S_Shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
