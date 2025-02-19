; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_apngenc.c_apng_write_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_apngenc.c_apng_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CRC_32_IEEE_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64)* @apng_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apng_write_chunk(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @AV_CRC_32_IEEE_LE, align 4
  %13 = call i32* @av_crc_get_table(i32 %12)
  store i32* %13, i32** %9, align 8
  store i64 4294967295, i64* %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @av_assert0(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @avio_wb32(i32* %16, i64 %17)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @AV_WB32(i32* %19, i64 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %25 = call i64 @av_crc(i32* %22, i64 %23, i32* %24, i64 4)
  store i64 %25, i64* %10, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @avio_wb32(i32* %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @av_crc(i32* %32, i64 %33, i32* %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @avio_write(i32* %37, i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %31, %4
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = xor i64 %43, -1
  %45 = call i32 @avio_wb32(i32* %42, i64 %44)
  ret void
}

declare dso_local i32* @av_crc_get_table(i32) #1

declare dso_local i32 @av_assert0(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @AV_WB32(i32*, i64) #1

declare dso_local i64 @av_crc(i32*, i64, i32*, i64) #1

declare dso_local i32 @avio_write(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
