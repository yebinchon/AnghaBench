; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_viscii.h_viscii_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_viscii.h_viscii_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viscii_2uni_1 = common dso_local global i64* null, align 8
@viscii_2uni_2 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @viscii_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viscii_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %9, align 1
  %12 = load i8, i8* %9, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i64*, i64** @viscii_2uni_1, align 8
  %17 = load i8, i8* %9, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %40

22:                                               ; preds = %4
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i64
  %29 = load i64*, i64** %6, align 8
  store i64 %28, i64* %29, align 8
  br label %39

30:                                               ; preds = %22
  %31 = load i64*, i64** @viscii_2uni_2, align 8
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %33, 128
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %30, %26
  br label %40

40:                                               ; preds = %39, %15
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
