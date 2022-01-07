; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso8859_3.h_iso8859_3_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso8859_3.h_iso8859_3_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iso8859_3_2uni = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @iso8859_3_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso8859_3_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %16 = icmp slt i32 %15, 160
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i64
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  store i32 1, i32* %5, align 4
  br label %39

21:                                               ; preds = %4
  %22 = load i16*, i16** @iso8859_3_2uni, align 8
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, 160
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %22, i64 %26
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %11, align 2
  %29 = load i16, i16* %11, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %30, 65533
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i64
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  store i32 1, i32* %5, align 4
  br label %39

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %32, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
