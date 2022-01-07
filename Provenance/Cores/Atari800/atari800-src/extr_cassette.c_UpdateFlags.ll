; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_UpdateFlags.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_UpdateFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cassette_motor = common dso_local global i64 0, align 8
@CASSETTE_status = common dso_local global i64 0, align 8
@CASSETTE_STATUS_READ_WRITE = common dso_local global i64 0, align 8
@CASSETTE_STATUS_READ_ONLY = common dso_local global i64 0, align 8
@eof_of_tape = common dso_local global i32 0, align 4
@cassette_readable = common dso_local global i32 0, align 4
@CASSETTE_write_protect = common dso_local global i32 0, align 4
@cassette_writable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateFlags() #0 {
  %1 = load i64, i64* @cassette_motor, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load i64, i64* @CASSETTE_status, align 8
  %5 = load i64, i64* @CASSETTE_STATUS_READ_WRITE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load i64, i64* @CASSETTE_status, align 8
  %9 = load i64, i64* @CASSETTE_STATUS_READ_ONLY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %3
  %12 = load i32, i32* @eof_of_tape, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %7, %0
  %16 = phi i1 [ false, %7 ], [ false, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @cassette_readable, align 4
  %18 = load i64, i64* @cassette_motor, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i64, i64* @CASSETTE_status, align 8
  %22 = load i64, i64* @CASSETTE_STATUS_READ_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @CASSETTE_write_protect, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %20, %15
  %29 = phi i1 [ false, %20 ], [ false, %15 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @cassette_writable, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
