; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_BrotliEncoderMaxCompressedSize.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_BrotliEncoderMaxCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BrotliEncoderMaxCompressedSize(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = lshr i64 %7, 14
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = mul i64 4, %9
  %11 = add i64 2, %10
  %12 = add i64 %11, 3
  %13 = add i64 %12, 1
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 2, i64* %2, align 8
  br label %29

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i64 [ 0, %24 ], [ %26, %25 ]
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
