; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_ToggleRecord.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_ToggleRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CASSETTE_status = common dso_local global i64 0, align 8
@CASSETTE_STATUS_NONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CASSETTE_record = common dso_local global i32 0, align 4
@eof_of_tape = common dso_local global i32 0, align 4
@cassette_writable = common dso_local global i64 0, align 8
@cassette_file = common dso_local global i32 0, align 4
@event_time_left = common dso_local global i64 0, align 8
@pending_serin = common dso_local global i32 0, align 4
@passing_gap = common dso_local global i32 0, align 4
@CASSETTE_STATUS_READ_WRITE = common dso_local global i64 0, align 8
@CASSETTE_write_protect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CASSETTE_ToggleRecord() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @CASSETTE_status, align 8
  %3 = load i64, i64* @CASSETTE_STATUS_NONE, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %42

7:                                                ; preds = %0
  %8 = load i32, i32* @CASSETTE_record, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* @CASSETTE_record, align 4
  %12 = load i32, i32* @CASSETTE_record, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* @eof_of_tape, align 4
  br label %23

16:                                               ; preds = %7
  %17 = load i64, i64* @cassette_writable, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @cassette_file, align 4
  %21 = call i32 @IMG_TAPE_Flush(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %14
  store i64 0, i64* @event_time_left, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* @pending_serin, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* @passing_gap, align 4
  %26 = call i32 (...) @UpdateFlags()
  %27 = load i32, i32* @CASSETTE_record, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i64, i64* @CASSETTE_status, align 8
  %31 = load i64, i64* @CASSETTE_STATUS_READ_WRITE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @CASSETTE_write_protect, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i1 [ true, %23 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %39, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @IMG_TAPE_Flush(i32) #1

declare dso_local i32 @UpdateFlags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
