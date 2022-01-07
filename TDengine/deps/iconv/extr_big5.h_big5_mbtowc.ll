; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5.h_big5_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5.h_big5_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@big5_2uni_pagea1 = common dso_local global i16* null, align 8
@big5_2uni_pagec9 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @big5_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 161
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 199
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %4
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %26, 201
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 249
  br i1 %31, label %32, label %104

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %102

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %11, align 1
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 64
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 127
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %35
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sge i32 %48, 161
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %52, 255
  br i1 %53, label %54, label %100

54:                                               ; preds = %50, %42
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %56, 161
  %58 = mul nsw i32 157, %57
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %11, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 161
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 98, i32 64
  %66 = sub nsw i32 %60, %65
  %67 = add nsw i32 %58, %66
  store i32 %67, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %68, 6280
  br i1 %69, label %70, label %80

70:                                               ; preds = %54
  %71 = load i32, i32* %12, align 4
  %72 = icmp ult i32 %71, 6121
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i16*, i16** @big5_2uni_pagea1, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  store i16 %78, i16* %13, align 2
  br label %79

79:                                               ; preds = %73, %70
  br label %91

80:                                               ; preds = %54
  %81 = load i32, i32* %12, align 4
  %82 = icmp ult i32 %81, 13932
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i16*, i16** @big5_2uni_pagec9, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sub i32 %85, 6280
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %84, i64 %87
  %89 = load i16, i16* %88, align 2
  store i16 %89, i16* %13, align 2
  br label %90

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i16, i16* %13, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %93, 65533
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i16, i16* %13, align 2
  %97 = zext i16 %96 to i64
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  store i32 2, i32* %5, align 4
  br label %106

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %50, %46
  %101 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %101, i32* %5, align 4
  br label %106

102:                                              ; preds = %32
  %103 = call i32 @RET_TOOFEW(i32 0)
  store i32 %103, i32* %5, align 4
  br label %106

104:                                              ; preds = %28, %24
  %105 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %95
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
