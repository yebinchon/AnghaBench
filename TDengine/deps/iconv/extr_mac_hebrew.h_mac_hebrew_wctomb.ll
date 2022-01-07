; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_mac_hebrew.h_mac_hebrew_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_mac_hebrew.h_mac_hebrew_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mac_hebrew_page00 = common dso_local global i8* null, align 8
@mac_hebrew_page05 = common dso_local global i8* null, align 8
@mac_hebrew_page20 = common dso_local global i8* null, align 8
@mac_hebrew_pagefb = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @mac_hebrew_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_hebrew_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %5, align 4
  br label %87

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @mac_hebrew_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %77

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 1456
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1520
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** @mac_hebrew_page05, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1456
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  br label %76

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 8208
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 8232
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i8*, i8** @mac_hebrew_page20, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 8208
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %10, align 1
  br label %75

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 8362
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i8 -90, i8* %10, align 1
  br label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 64280
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 64336
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** @mac_hebrew_pagefb, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 64280
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %10, align 1
  br label %73

73:                                               ; preds = %66, %63, %60
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %49
  br label %76

76:                                               ; preds = %75, %36
  br label %77

77:                                               ; preds = %76, %23
  br label %78

78:                                               ; preds = %77
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8, i8* %10, align 1
  %84 = load i8*, i8** %7, align 8
  store i8 %83, i8* %84, align 1
  store i32 1, i32* %5, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @RET_ILUNI, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %82, %13
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
