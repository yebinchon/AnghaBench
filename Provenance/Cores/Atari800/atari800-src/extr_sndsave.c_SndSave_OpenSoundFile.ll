; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sndsave.c_SndSave_OpenSoundFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sndsave.c_SndSave_OpenSoundFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@sndoutput = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RIFF\00\00\00\00WAVEfmt \10\00\00\00\01\00\00", align 1
@POKEYSND_num_pokeys = common dso_local global i32 0, align 4
@POKEYSND_playback_freq = common dso_local global i32 0, align 4
@POKEYSND_snd_flags = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\00data\00\00\00\00\00", align 1
@byteswritten = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndSave_OpenSoundFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i32 (...) @SndSave_CloseSoundFile()
  %5 = load i8*, i8** %3, align 8
  %6 = call i32* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** @sndoutput, align 8
  %7 = load i32*, i32** @sndoutput, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load i32*, i32** @sndoutput, align 8
  %13 = call i32 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 22, i32* %12)
  %14 = icmp ne i32 %13, 22
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** @sndoutput, align 8
  %17 = call i32 @fclose(i32* %16)
  store i32* null, i32** @sndoutput, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %11
  %20 = load i32, i32* @POKEYSND_num_pokeys, align 4
  %21 = load i32*, i32** @sndoutput, align 8
  %22 = call i32 @fputc(i32 %20, i32* %21)
  %23 = load i32*, i32** @sndoutput, align 8
  %24 = call i32 @fputc(i32 0, i32* %23)
  %25 = load i32, i32* @POKEYSND_playback_freq, align 4
  %26 = call i32 @write32(i32 %25)
  %27 = load i32, i32* @POKEYSND_playback_freq, align 4
  %28 = load i32, i32* @POKEYSND_snd_flags, align 4
  %29 = load i32, i32* @POKEYSND_BIT16, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @POKEYSND_num_pokeys, align 4
  %34 = shl i32 %33, 1
  br label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @POKEYSND_num_pokeys, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  %39 = mul nsw i32 %27, %38
  %40 = call i32 @write32(i32 %39)
  %41 = load i32, i32* @POKEYSND_snd_flags, align 4
  %42 = load i32, i32* @POKEYSND_BIT16, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @POKEYSND_num_pokeys, align 4
  %47 = shl i32 %46, 1
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @POKEYSND_num_pokeys, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ]
  %52 = load i32*, i32** @sndoutput, align 8
  %53 = call i32 @fputc(i32 %51, i32* %52)
  %54 = load i32*, i32** @sndoutput, align 8
  %55 = call i32 @fputc(i32 0, i32* %54)
  %56 = load i32, i32* @POKEYSND_snd_flags, align 4
  %57 = load i32, i32* @POKEYSND_BIT16, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 16, i32 8
  %62 = load i32*, i32** @sndoutput, align 8
  %63 = call i32 @fputc(i32 %61, i32* %62)
  %64 = load i32*, i32** @sndoutput, align 8
  %65 = call i32 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 9, i32* %64)
  %66 = icmp ne i32 %65, 9
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load i32*, i32** @sndoutput, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32* null, i32** @sndoutput, align 8
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %50
  store i64 0, i64* @byteswritten, align 8
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %67, %15, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @SndSave_CloseSoundFile(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @write32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
