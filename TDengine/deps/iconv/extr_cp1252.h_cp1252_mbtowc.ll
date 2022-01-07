; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1252.h_cp1252_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1252.h_cp1252_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1252_2uni = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp1252_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1252_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %10, align 1
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 160
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i64
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  store i32 1, i32* %5, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load i16*, i16** @cp1252_2uni, align 8
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 128
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %26, i64 %30
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %11, align 2
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %34, 65533
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i16, i16* %11, align 2
  %38 = zext i16 %37 to i64
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %5, align 4
  br label %43

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %36, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
