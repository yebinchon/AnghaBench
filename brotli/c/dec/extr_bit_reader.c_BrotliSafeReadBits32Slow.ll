; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_bit_reader.c_BrotliSafeReadBits32Slow.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_bit_reader.c_BrotliSafeReadBits32Slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliSafeReadBits32Slow(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 32
  %13 = zext i1 %12 to i32
  %14 = call i32 @BROTLI_DCHECK(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 24
  %17 = zext i1 %16 to i32
  %18 = call i32 @BROTLI_DCHECK(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @BrotliBitReaderSaveState(i32* %19, i32* %10)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @BrotliSafeReadBits(i32* %21, i32 16, i32* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 16
  %28 = call i32 @BrotliSafeReadBits(i32* %25, i32 %27, i32* %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %3
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @BrotliBitReaderRestoreState(i32* %31, i32* %10)
  %33 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @BROTLI_DCHECK(i32) #1

declare dso_local i32 @BrotliBitReaderSaveState(i32*, i32*) #1

declare dso_local i32 @BrotliSafeReadBits(i32*, i32, i32*) #1

declare dso_local i32 @BrotliBitReaderRestoreState(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
