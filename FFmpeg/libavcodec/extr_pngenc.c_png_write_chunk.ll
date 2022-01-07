; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_write_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CRC_32_IEEE_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32*, i32)* @png_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_write_chunk(i32** %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @AV_CRC_32_IEEE_LE, align 4
  %13 = call i32* @av_crc_get_table(i32 %12)
  store i32* %13, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @bytestream_put_be32(i32** %14, i32 %15)
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @AV_WL32(i32* %17, i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %23 = call i32 @av_crc(i32* %20, i32 %21, i32* %22, i32 4)
  store i32 %23, i32* %10, align 4
  %24 = load i32**, i32*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @av_bswap32(i32 %25)
  %27 = call i32 @bytestream_put_be32(i32** %24, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @av_crc(i32* %31, i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32**, i32*** %5, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %42, align 8
  br label %46

46:                                               ; preds = %30, %4
  %47 = load i32**, i32*** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @bytestream_put_be32(i32** %47, i32 %49)
  ret void
}

declare dso_local i32* @av_crc_get_table(i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @av_crc(i32*, i32, i32*, i32) #1

declare dso_local i32 @av_bswap32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
