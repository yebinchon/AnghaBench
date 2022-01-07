; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_BrotliDecoderSetParameter.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_BrotliDecoderSetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@BROTLI_STATE_UNINITED = common dso_local global i64 0, align 8
@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliDecoderSetParameter(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BROTLI_STATE_UNINITED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %39

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %37 [
    i32 129, label %17
    i32 128, label %27
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @TO_BROTLI_BOOL(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %15
  %38 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %27, %17, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @TO_BROTLI_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
