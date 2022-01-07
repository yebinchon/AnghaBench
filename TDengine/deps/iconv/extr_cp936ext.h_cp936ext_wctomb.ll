; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936ext.h_cp936ext_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936ext.h_cp936ext_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp936ext_page01 = common dso_local global i16* null, align 8
@cp936ext_page02 = common dso_local global i16* null, align 8
@cp936ext_pagefe = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp936ext_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp936ext_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %73

13:                                               ; preds = %4
  store i16 0, i16* %10, align 2
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 320
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 336
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i16*, i16** @cp936ext_page01, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 320
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %10, align 2
  br label %54

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 592
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 616
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i16*, i16** @cp936ext_page02, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 592
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %33, i64 %36
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %10, align 2
  br label %53

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 65072
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 65096
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i16*, i16** @cp936ext_pagefe, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 65072
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %46, i64 %49
  %51 = load i16, i16* %50, align 2
  store i16 %51, i16* %10, align 2
  br label %52

52:                                               ; preds = %45, %42, %39
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %19
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i16, i16* %10, align 2
  %60 = zext i16 %59 to i32
  %61 = ashr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %64, align 1
  %65 = load i16, i16* %10, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %68, i8* %70, align 1
  store i32 2, i32* %5, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load i32, i32* @RET_ILUNI, align 4
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %4
  %74 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %71, %58
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
