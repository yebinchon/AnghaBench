; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sndsave.c_SndSave_WriteToSoundFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sndsave.c_SndSave_WriteToSoundFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sndoutput = common dso_local global i64 0, align 8
@POKEYSND_snd_flags = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@byteswritten = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndSave_WriteToSoundFile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @sndoutput, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* @POKEYSND_snd_flags, align 4
  %17 = load i32, i32* @POKEYSND_BIT16, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* @sndoutput, align 8
  %27 = call i32 @fwrite(i8* %24, i32 1, i32 %25, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @byteswritten, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @byteswritten, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (...) @SndSave_CloseSoundFile()
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %12, %9, %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @fwrite(i8*, i32, i32, i64) #1

declare dso_local i32 @SndSave_CloseSoundFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
