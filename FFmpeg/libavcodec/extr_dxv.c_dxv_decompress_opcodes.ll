; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_opcodes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @dxv_decompress_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxv_decompress_opcodes(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @bytestream2_tell(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @bytestream2_peek_byte(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @bytestream2_skip(i32* %21, i32 1)
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @bytestream2_get_buffer(i32* %23, i8* %24, i64 %25)
  br label %60

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @bytestream2_skip(i32* %32, i32 1)
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @bytestream2_get_byte(i32* %35)
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memset(i8* %34, i32 %36, i64 %37)
  br label %59

39:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %42 = call i32 @fill_ltable(i32* %40, i32* %41, i32* %12)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %65

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @get_opcodes(i32* %48, i32* %49, i8* %50, i64 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @bytestream2_tell(i32* %61)
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %56, %45
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @fill_ltable(i32*, i32*, i32*) #1

declare dso_local i32 @get_opcodes(i32*, i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
