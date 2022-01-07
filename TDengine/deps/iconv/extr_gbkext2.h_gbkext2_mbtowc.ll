; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbkext2.h_gbkext2_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbkext2.h_gbkext2_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gbkext2_2uni_pagea8 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @gbkext2_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbkext2_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %19 = icmp sge i32 %18, 168
  br i1 %19, label %20, label %82

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 254
  br i1 %23, label %24, label %82

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %80

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
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 161
  br i1 %45, label %46, label %78

46:                                               ; preds = %42, %34
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %48, 129
  %50 = mul nsw i32 96, %49
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
  %61 = icmp ult i32 %60, 12016
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = load i16*, i16** @gbkext2_2uni_pagea8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %64, 3744
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  %68 = load i16, i16* %67, align 2
  store i16 %68, i16* %13, align 2
  br label %69

69:                                               ; preds = %62, %46
  %70 = load i16, i16* %13, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp ne i32 %71, 65533
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i16, i16* %13, align 2
  %75 = zext i16 %74 to i64
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  store i32 2, i32* %5, align 4
  br label %84

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %42, %38
  %79 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %79, i32* %5, align 4
  br label %84

80:                                               ; preds = %24
  %81 = call i32 @RET_TOOFEW(i32 0)
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %20, %4
  %83 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %80, %78, %73
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
