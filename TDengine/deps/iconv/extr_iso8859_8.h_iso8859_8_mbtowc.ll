; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso8859_8.h_iso8859_8_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso8859_8.h_iso8859_8_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iso8859_8_2uni = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @iso8859_8_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso8859_8_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %16 = icmp sge i32 %15, 160
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load i16*, i16** @iso8859_8_2uni, align 8
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 %20, 160
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %18, i64 %22
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %11, align 2
  %25 = load i16, i16* %11, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %26, 65533
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i16, i16* %11, align 2
  %30 = zext i16 %29 to i64
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  store i32 1, i32* %5, align 4
  br label %39

32:                                               ; preds = %17
  br label %37

33:                                               ; preds = %4
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i64
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  store i32 1, i32* %5, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %33, %28
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
