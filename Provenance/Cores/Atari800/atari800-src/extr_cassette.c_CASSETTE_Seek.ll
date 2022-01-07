; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_Seek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cassette_file = common dso_local global i32* null, align 8
@event_time_left = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@pending_serin = common dso_local global i8* null, align 8
@passing_gap = common dso_local global i8* null, align 8
@eof_of_tape = common dso_local global i64 0, align 8
@CASSETTE_record = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CASSETTE_Seek(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @cassette_file, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ugt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32*, i32** @cassette_file, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @IMG_TAPE_Seek(i32* %12, i32 %13)
  store i64 0, i64* @event_time_left, align 8
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** @pending_serin, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** @passing_gap, align 8
  store i64 0, i64* @eof_of_tape, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** @CASSETTE_record, align 8
  %18 = call i32 (...) @UpdateFlags()
  br label %19

19:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @IMG_TAPE_Seek(i32*, i32) #1

declare dso_local i32 @UpdateFlags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
