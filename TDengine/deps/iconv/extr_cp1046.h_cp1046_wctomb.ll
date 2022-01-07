; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1046.h_cp1046_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1046.h_cp1046_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1046_page00 = common dso_local global i8* null, align 8
@cp1046_page06 = common dso_local global i8* null, align 8
@cp1046_page25 = common dso_local global i8* null, align 8
@cp1046_pagef8 = common dso_local global i8* null, align 8
@cp1046_pagefe = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1046_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1046_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %101

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 136
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 248
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp1046_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 136
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %91

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 1544
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1648
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** @cp1046_page06, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1544
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  br label %90

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 9472
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 9504
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i8*, i8** @cp1046_page25, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 9472
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %10, align 1
  br label %89

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 9632
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i8 -119, i8* %10, align 1
  br label %88

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 63728
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 63744
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** @cp1046_pagef8, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 63728
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %10, align 1
  br label %87

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 65136
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 65280
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i8*, i8** @cp1046_pagefe, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 65136
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %10, align 1
  br label %86

86:                                               ; preds = %79, %76, %73
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %49
  br label %90

90:                                               ; preds = %89, %36
  br label %91

91:                                               ; preds = %90, %23
  br label %92

92:                                               ; preds = %91
  %93 = load i8, i8* %10, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8, i8* %10, align 1
  %98 = load i8*, i8** %7, align 8
  store i8 %97, i8* %98, align 1
  store i32 1, i32* %5, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @RET_ILUNI, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %96, %13
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
