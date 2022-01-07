; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sndsave.c_SndSave_CloseSoundFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sndsave.c_SndSave_CloseSoundFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@sndoutput = common dso_local global i32* null, align 8
@byteswritten = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndSave_CloseSoundFile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* @TRUE, align 4
  store i32 %3, i32* %1, align 4
  store i8 0, i8* %2, align 1
  %4 = load i32*, i32** @sndoutput, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %50

6:                                                ; preds = %0
  %7 = load i32, i32* @byteswritten, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32*, i32** @sndoutput, align 8
  %12 = call i64 @putc(i32 0, i32* %11)
  %13 = load i64, i64* @EOF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %18

17:                                               ; preds = %10
  store i8 1, i8* %2, align 1
  br label %18

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i32*, i32** @sndoutput, align 8
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @fseek(i32* %23, i32 4, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %1, align 4
  br label %46

29:                                               ; preds = %22
  %30 = load i32, i32* @byteswritten, align 4
  %31 = add nsw i32 %30, 36
  %32 = load i8, i8* %2, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = call i32 @write32(i32 %34)
  %36 = load i32*, i32** @sndoutput, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i64 @fseek(i32* %36, i32 40, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %1, align 4
  br label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @byteswritten, align 4
  %44 = call i32 @write32(i32 %43)
  br label %45

45:                                               ; preds = %42, %40
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32*, i32** @sndoutput, align 8
  %49 = call i32 @fclose(i32* %48)
  store i32* null, i32** @sndoutput, align 8
  br label %50

50:                                               ; preds = %47, %0
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @putc(i32, i32*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @write32(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
