; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso646_jp.h_iso646_jp_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso646_jp.h_iso646_jp_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @iso646_jp_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso646_jp_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 92
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64*, i64** %7, align 8
  store i64 165, i64* %21, align 8
  br label %33

22:                                               ; preds = %16
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 126
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64*, i64** %7, align 8
  store i64 8254, i64* %27, align 8
  br label %32

28:                                               ; preds = %22
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i64
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %26
  br label %33

33:                                               ; preds = %32, %20
  store i32 1, i32* %5, align 4
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
