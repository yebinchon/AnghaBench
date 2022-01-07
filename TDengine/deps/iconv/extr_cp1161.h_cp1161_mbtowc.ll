; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1161.h_cp1161_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1161.h_cp1161_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1161_2uni = common dso_local global i64* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp1161_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1161_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %10, align 1
  %13 = load i8, i8* %10, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i64
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  store i32 1, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 160
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %34

25:                                               ; preds = %20
  %26 = load i64*, i64** @cp1161_2uni, align 8
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 160
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 1, i32* %5, align 4
  br label %37

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %25, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
