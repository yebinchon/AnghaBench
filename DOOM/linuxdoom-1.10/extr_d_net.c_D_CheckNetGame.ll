; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_D_CheckNetGame.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_D_CheckNetGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@MAXNETNODES = common dso_local global i32 0, align 4
@nodeingame = common dso_local global i32* null, align 8
@nettics = common dso_local global i64* null, align 8
@remoteresend = common dso_local global i32* null, align 8
@resendto = common dso_local global i64* null, align 8
@doomcom = common dso_local global %struct.TYPE_2__* null, align 8
@DOOMCOM_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Doomcom buffer invalid!\00", align 1
@netbuffer = common dso_local global i32* null, align 8
@displayplayer = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i32 0, align 4
@netgame = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"startskill %i  deathmatch: %i  startmap: %i  startepisode: %i\0A\00", align 1
@startskill = common dso_local global i32 0, align 4
@deathmatch = common dso_local global i32 0, align 4
@startmap = common dso_local global i32 0, align 4
@startepisode = common dso_local global i32 0, align 4
@ticdup = common dso_local global i32 0, align 4
@BACKUPTICS = common dso_local global i32 0, align 4
@maxsend = common dso_local global i32 0, align 4
@playeringame = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"player %i of %i (%i nodes)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_CheckNetGame() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %23, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAXNETNODES, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load i32*, i32** @nodeingame, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 0, i32* %10, align 4
  %11 = load i64*, i64** @nettics, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** @remoteresend, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 0, i32* %18, align 4
  %19 = load i64*, i64** @resendto, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %2

26:                                               ; preds = %2
  %27 = call i32 (...) @I_InitNetwork()
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DOOMCOM_ID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @I_Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  store i32* %37, i32** @netbuffer, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* @displayplayer, align 4
  store i32 %40, i32* @consoleplayer, align 4
  %41 = load i64, i64* @netgame, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 (...) @D_ArbitrateNetStart()
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i32, i32* @startskill, align 4
  %47 = load i32, i32* @deathmatch, align 4
  %48 = load i32, i32* @startmap, align 4
  %49 = load i32, i32* @startepisode, align 4
  %50 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @ticdup, align 4
  %54 = load i32, i32* @BACKUPTICS, align 4
  %55 = load i32, i32* @ticdup, align 4
  %56 = mul nsw i32 2, %55
  %57 = sdiv i32 %54, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* @maxsend, align 4
  %59 = load i32, i32* @maxsend, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 1, i32* @maxsend, align 4
  br label %62

62:                                               ; preds = %61, %45
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i32, i32* %1, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32*, i32** @playeringame, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %1, align 4
  br label %63

77:                                               ; preds = %63
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i32, i32* %1, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i32*, i32** @nodeingame, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %1, align 4
  br label %78

92:                                               ; preds = %78
  %93 = load i32, i32* @consoleplayer, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @doomcom, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %97, i32 %100)
  ret void
}

declare dso_local i32 @I_InitNetwork(...) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @D_ArbitrateNetStart(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
