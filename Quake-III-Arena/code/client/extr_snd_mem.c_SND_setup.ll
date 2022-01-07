; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_SND_setup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_SND_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"com_soundMegs\00", align 1
@DEF_COMSOUNDMEGS = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4
@sfxScratchBuffer = common dso_local global i8* null, align 8
@sfxScratchPointer = common dso_local global i32* null, align 8
@inUse = common dso_local global i32 0, align 4
@freelist = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Sound memory manager started\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SND_setup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DEF_COMSOUNDMEGS, align 4
  %6 = load i32, i32* @CVAR_LATCH, align 4
  %7 = load i32, i32* @CVAR_ARCHIVE, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 1536
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i8* @malloc(i32 %17)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** @buffer, align 8
  %20 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 2
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** @sfxScratchBuffer, align 8
  store i32* null, i32** @sfxScratchPointer, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @inUse, align 4
  %30 = load i32*, i32** @buffer, align 8
  store i32* %30, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %40, %0
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %37, i32** %2, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = icmp ugt i32* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -1
  %43 = load i32*, i32** %2, align 8
  %44 = bitcast i32* %43 to i32**
  store i32* %42, i32** %44, align 8
  br label %35

45:                                               ; preds = %35
  %46 = load i32*, i32** %2, align 8
  %47 = bitcast i32* %46 to i32**
  store i32* null, i32** %47, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 -1
  store i32* %52, i32** @freelist, align 8
  %53 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
