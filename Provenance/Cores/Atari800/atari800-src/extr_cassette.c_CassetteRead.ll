; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CassetteRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CassetteRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cassette_readable = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@event_time_left = common dso_local global i64 0, align 8
@passing_gap = common dso_local global i32 0, align 4
@pending_serin = common dso_local global i32 0, align 4
@pending_serin_byte = common dso_local global i32 0, align 4
@serin_byte = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@cassette_file = common dso_local global i32 0, align 4
@eof_of_tape = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @CassetteRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CassetteRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @cassette_readable, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @event_time_left, align 8
  %13 = sub nsw i64 %12, %11
  store i64 %13, i64* @event_time_left, align 8
  br label %14

14:                                               ; preds = %37, %8
  %15 = load i64, i64* @event_time_left, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* @passing_gap, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @pending_serin, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @pending_serin_byte, align 4
  store i32 %24, i32* @serin_byte, align 4
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %20, %17
  %27 = load i32, i32* @POKEY_SKCTL, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @pending_serin, align 4
  %31 = load i32, i32* @cassette_file, align 4
  %32 = call i32 @IMG_TAPE_Read(i32 %31, i32* %5, i32* @passing_gap, i32* @pending_serin_byte)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  store i32 1, i32* @eof_of_tape, align 4
  %35 = call i32 (...) @UpdateFlags()
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @event_time_left, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* @event_time_left, align 8
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %34
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @IMG_TAPE_Read(i32, i32*, i32*, i32*) #1

declare dso_local i32 @UpdateFlags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
