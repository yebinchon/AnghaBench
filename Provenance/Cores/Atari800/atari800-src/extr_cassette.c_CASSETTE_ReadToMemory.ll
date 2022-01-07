; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_ReadToMemory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_ReadToMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cassette_readable = common dso_local global i32 0, align 4
@event_time_left = common dso_local global i32 0, align 4
@cassette_gapdelay = common dso_local global i64 0, align 8
@cassette_file = common dso_local global i32 0, align 4
@eof_of_tape = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CASSETTE_ReadToMemory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = call i32 @CASSETTE_TapeMotor(i32 1)
  %7 = load i32, i32* @cassette_readable, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* @event_time_left, align 4
  %12 = sdiv i32 %11, 1789
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @cassette_gapdelay, align 8
  %15 = sub nsw i64 %14, %13
  store i64 %15, i64* @cassette_gapdelay, align 8
  %16 = load i32, i32* @cassette_file, align 4
  %17 = load i64, i64* @cassette_gapdelay, align 8
  %18 = call i32 @IMG_TAPE_SkipToData(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  store i64 0, i64* @cassette_gapdelay, align 8
  store i32 1, i32* @eof_of_tape, align 4
  %21 = call i32 (...) @UpdateFlags()
  store i32 0, i32* %3, align 4
  br label %32

22:                                               ; preds = %10
  store i64 0, i64* @cassette_gapdelay, align 8
  %23 = load i32, i32* @cassette_file, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @IMG_TAPE_ReadToMemory(i32 %23, i32 %24, i32 %25)
  switch i32 %26, label %30 [
    i32 128, label %27
    i32 -1, label %28
  ]

27:                                               ; preds = %22
  store i32 128, i32* %3, align 4
  br label %32

28:                                               ; preds = %22
  store i32 1, i32* @eof_of_tape, align 4
  %29 = call i32 (...) @UpdateFlags()
  br label %30

30:                                               ; preds = %22, %28
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %27, %20, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @CASSETTE_TapeMotor(i32) #1

declare dso_local i32 @IMG_TAPE_SkipToData(i32, i64) #1

declare dso_local i32 @UpdateFlags(...) #1

declare dso_local i32 @IMG_TAPE_ReadToMemory(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
