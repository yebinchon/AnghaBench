; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1163.h_cp1163_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1163.h_cp1163_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1129_2uni = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cp1163_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1163_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %9, align 1
  %12 = load i8, i8* %9, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 160
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 164
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  store i32 8364, i32* %24, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load i64*, i64** @cp1129_2uni, align 8
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 160
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %23
  br label %36

36:                                               ; preds = %35, %15
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
