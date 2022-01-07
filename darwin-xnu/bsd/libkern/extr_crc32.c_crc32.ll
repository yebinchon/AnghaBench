; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/libkern/extr_crc32.c_crc32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/libkern/extr_crc32.c_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %10, -1
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %6, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32*, i32** @crc32_tab, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %7, align 8
  %21 = load i32, i32* %19, align 4
  %22 = xor i32 %18, %21
  %23 = and i32 %22, 255
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 8
  %29 = xor i32 %26, %28
  store i32 %29, i32* %4, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = xor i32 %31, -1
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
