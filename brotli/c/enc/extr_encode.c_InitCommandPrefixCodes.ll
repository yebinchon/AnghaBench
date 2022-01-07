; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_InitCommandPrefixCodes.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_InitCommandPrefixCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InitCommandPrefixCodes.kDefaultCommandDepths = internal constant [128 x i32] [i32 0, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 0, i32 4, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 7, i32 8, i32 10, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0], align 16
@InitCommandPrefixCodes.kDefaultCommandBits = internal constant [128 x i32] [i32 0, i32 0, i32 8, i32 9, i32 3, i32 35, i32 7, i32 71, i32 39, i32 103, i32 23, i32 47, i32 175, i32 111, i32 239, i32 31, i32 0, i32 0, i32 0, i32 4, i32 12, i32 2, i32 10, i32 6, i32 13, i32 29, i32 11, i32 43, i32 27, i32 59, i32 87, i32 55, i32 15, i32 79, i32 319, i32 831, i32 191, i32 703, i32 447, i32 959, i32 0, i32 14, i32 1, i32 25, i32 5, i32 21, i32 19, i32 51, i32 119, i32 159, i32 95, i32 223, i32 479, i32 991, i32 63, i32 575, i32 127, i32 639, i32 383, i32 895, i32 255, i32 767, i32 511, i32 1023, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 59, i32 7, i32 39, i32 23, i32 55, i32 30, i32 1, i32 17, i32 9, i32 25, i32 5, i32 0, i32 8, i32 4, i32 12, i32 2, i32 10, i32 6, i32 21, i32 13, i32 29, i32 3, i32 19, i32 11, i32 15, i32 47, i32 31, i32 95, i32 63, i32 127, i32 255, i32 767, i32 2815, i32 1791, i32 3839, i32 511, i32 2559, i32 1535, i32 3583, i32 1023, i32 3071, i32 2047, i32 4095, i32 0, i32 0, i32 0, i32 0], align 16
@InitCommandPrefixCodes.kDefaultCommandCode = internal constant [57 x i32] [i32 255, i32 119, i32 213, i32 191, i32 231, i32 222, i32 234, i32 158, i32 81, i32 93, i32 222, i32 198, i32 112, i32 87, i32 188, i32 88, i32 88, i32 88, i32 216, i32 216, i32 88, i32 213, i32 203, i32 140, i32 234, i32 224, i32 195, i32 135, i32 31, i32 131, i32 193, i32 96, i32 28, i32 103, i32 178, i32 170, i32 6, i32 131, i32 193, i32 96, i32 48, i32 24, i32 204, i32 161, i32 206, i32 136, i32 84, i32 148, i32 70, i32 225, i32 176, i32 208, i32 78, i32 178, i32 247, i32 4, i32 0], align 16
@InitCommandPrefixCodes.kDefaultCommandCodeNumBits = internal constant i64 448, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64*)* @InitCommandPrefixCodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitCommandPrefixCodes(i32* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @COPY_ARRAY(i32* %9, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @InitCommandPrefixCodes.kDefaultCommandDepths, i64 0, i64 0))
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @COPY_ARRAY(i32* %11, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @InitCommandPrefixCodes.kDefaultCommandBits, i64 0, i64 0))
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @COPY_ARRAY(i32* %13, i32* getelementptr inbounds ([57 x i32], [57 x i32]* @InitCommandPrefixCodes.kDefaultCommandCode, i64 0, i64 0))
  %15 = load i64*, i64** %8, align 8
  store i64 448, i64* %15, align 8
  ret void
}

declare dso_local i32 @COPY_ARRAY(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
