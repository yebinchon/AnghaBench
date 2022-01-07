; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BrotliEncodeMlen.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BrotliEncodeMlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*, i64*)* @BrotliEncodeMlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BrotliEncodeMlen(i64 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %20

14:                                               ; preds = %4
  %15 = load i64, i64* %5, align 8
  %16 = sub i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = call i32 @Log2FloorNonZero(i32 %17)
  %19 = add nsw i32 %18, 1
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i32 [ 1, %13 ], [ %19, %14 ]
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 3
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i64 [ 16, %25 ], [ %28, %26 ]
  %31 = udiv i64 %30, 4
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ugt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BROTLI_DCHECK(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = icmp ule i64 %36, 16777216
  %38 = zext i1 %37 to i32
  %39 = call i32 @BROTLI_DCHECK(i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ule i64 %40, 24
  %42 = zext i1 %41 to i32
  %43 = call i32 @BROTLI_DCHECK(i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = sub i64 %44, 4
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = mul i64 %47, 4
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, 1
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  ret void
}

declare dso_local i32 @Log2FloorNonZero(i32) #1

declare dso_local i32 @BROTLI_DCHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
