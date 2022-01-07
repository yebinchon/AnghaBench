; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ces_gbk.h_ces_gbk_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ces_gbk.h_ces_gbk_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @ces_gbk_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ces_gbk_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %10, align 1
  %13 = load i8, i8* %10, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ascii_mbtowc(i32 %17, i32* %18, i8* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sge i32 %24, 129
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 255
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @RET_TOOFEW(i32 0)
  store i32 %34, i32* %5, align 4
  br label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @gbk_mbtowc(i32 %36, i32* %37, i8* %38, i32 2)
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %26, %22
  %41 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %35, %33, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @gbk_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
