; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_crc.c_FLAC__crc8.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_crc.c_FLAC__crc8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAC__crc8_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLAC__crc8(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64*, i64** @FLAC__crc8_table, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %3, align 8
  %15 = load i32, i32* %13, align 4
  %16 = sext i32 %15 to i64
  %17 = xor i64 %12, %16
  %18 = getelementptr inbounds i64, i64* %11, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  br label %6

20:                                               ; preds = %6
  %21 = load i64, i64* %5, align 8
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
