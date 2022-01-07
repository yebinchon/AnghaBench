; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_IOLineStatus.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_IOLineStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cassette_readable = common dso_local global i32 0, align 4
@CASSETTE_record = common dso_local global i64 0, align 8
@passing_gap = common dso_local global i64 0, align 8
@cassette_file = common dso_local global i32 0, align 4
@event_time_left = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CASSETTE_IOLineStatus() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cassette_readable, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @CASSETTE_record, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @passing_gap, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  store i32 1, i32* %1, align 4
  br label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @cassette_file, align 4
  %13 = load i32, i32* @event_time_left, align 4
  %14 = call i32 @IMG_TAPE_SerinStatus(i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @IMG_TAPE_SerinStatus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
