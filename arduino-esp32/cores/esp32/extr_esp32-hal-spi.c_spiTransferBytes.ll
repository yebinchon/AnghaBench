; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-spi.c_spiTransferBytes.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-spi.c_spiTransferBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spiTransferBytes(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %48

12:                                               ; preds = %4
  %13 = call i32 (...) @SPI_MUTEX_LOCK()
  br label %14

14:                                               ; preds = %45, %12
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 64
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @__spiTransferBytes(i32* %21, i32* %22, i32* %23, i32 64)
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 64
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 64
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 64
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %45

39:                                               ; preds = %17
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @__spiTransferBytes(i32* %40, i32* %41, i32* %42, i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %38
  br label %14

46:                                               ; preds = %14
  %47 = call i32 (...) @SPI_MUTEX_UNLOCK()
  br label %48

48:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @SPI_MUTEX_LOCK(...) #1

declare dso_local i32 @__spiTransferBytes(i32*, i32*, i32*, i32) #1

declare dso_local i32 @SPI_MUTEX_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
