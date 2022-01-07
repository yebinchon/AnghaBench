; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936ext.h_cp936ext_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936ext.h_cp936ext_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp936ext_2uni_pagea6 = common dso_local global i16* null, align 8
@cp936ext_2uni_pagea8 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp936ext_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp936ext_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %19 = icmp eq i32 %18, 166
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 168
  br i1 %23, label %24, label %103

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %101

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %11, align 1
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sge i32 %32, 64
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 127
  br i1 %37, label %46, label %38

38:                                               ; preds = %34, %27
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 128
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 255
  br i1 %45, label %46, label %99

46:                                               ; preds = %42, %34
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %48, 129
  %50 = mul nsw i32 190, %49
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sge i32 %54, 128
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 65, i32 64
  %58 = sub nsw i32 %52, %57
  %59 = add nsw i32 %50, %58
  store i32 %59, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %60 = load i32, i32* %12, align 4
  %61 = icmp ult i32 %60, 7410
  br i1 %61, label %62, label %76

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = icmp uge i32 %63, 7189
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp ult i32 %66, 7211
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i16*, i16** @cp936ext_2uni_pagea6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sub i32 %70, 7189
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %69, i64 %72
  %74 = load i16, i16* %73, align 2
  store i16 %74, i16* %13, align 2
  br label %75

75:                                               ; preds = %68, %65, %62
  br label %90

76:                                               ; preds = %46
  %77 = load i32, i32* %12, align 4
  %78 = icmp uge i32 %77, 7532
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %80, 7538
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i16*, i16** @cp936ext_2uni_pagea8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sub i32 %84, 7532
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %83, i64 %86
  %88 = load i16, i16* %87, align 2
  store i16 %88, i16* %13, align 2
  br label %89

89:                                               ; preds = %82, %79, %76
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i16, i16* %13, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp ne i32 %92, 65533
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i16, i16* %13, align 2
  %96 = zext i16 %95 to i64
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  store i32 2, i32* %5, align 4
  br label %105

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %42, %38
  %100 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %100, i32* %5, align 4
  br label %105

101:                                              ; preds = %24
  %102 = call i32 @RET_TOOFEW(i32 0)
  store i32 %102, i32* %5, align 4
  br label %105

103:                                              ; preds = %20
  %104 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %101, %99, %94
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
