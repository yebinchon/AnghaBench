; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snappy.c_snappy_literal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snappy.c_snappy_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @snappy_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snappy_literal(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  switch i32 %11, label %32 [
    i32 63, label %12
    i32 62, label %17
    i32 61, label %22
    i32 60, label %27
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @bytestream2_get_le32(i32* %13)
  %15 = load i32, i32* %10, align 4
  %16 = add i32 %15, %14
  store i32 %16, i32* %10, align 4
  br label %36

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @bytestream2_get_le24(i32* %18)
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %10, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @bytestream2_get_le16(i32* %23)
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %36

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @bytestream2_get_byte(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %27, %22, %17, %12
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @bytestream2_get_buffer(i32* %43, i32* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %40
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_le24(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
