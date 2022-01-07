; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp950ext.h_cp950ext_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp950ext.h_cp950ext_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp950ext_2uni_pagef9 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp950ext_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp950ext_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %19 = icmp eq i32 %18, 249
  br i1 %19, label %20, label %81

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %79

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 64
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 127
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %23
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sge i32 %36, 161
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %40, 255
  br i1 %41, label %42, label %77

42:                                               ; preds = %38, %30
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %44, 161
  %46 = mul nsw i32 157, %45
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %50, 161
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 98, i32 64
  %54 = sub nsw i32 %48, %53
  %55 = add nsw i32 %46, %54
  store i32 %55, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %56 = load i32, i32* %12, align 4
  %57 = icmp uge i32 %56, 13932
  br i1 %57, label %58, label %68

58:                                               ; preds = %42
  %59 = load i32, i32* %12, align 4
  %60 = icmp ult i32 %59, 13973
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i16*, i16** @cp950ext_2uni_pagef9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sub i32 %63, 13932
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %62, i64 %65
  %67 = load i16, i16* %66, align 2
  store i16 %67, i16* %13, align 2
  br label %68

68:                                               ; preds = %61, %58, %42
  %69 = load i16, i16* %13, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %70, 65533
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i16, i16* %13, align 2
  %74 = zext i16 %73 to i64
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  store i32 2, i32* %5, align 4
  br label %83

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %38, %34
  %78 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %78, i32* %5, align 4
  br label %83

79:                                               ; preds = %20
  %80 = call i32 @RET_TOOFEW(i32 0)
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %4
  %82 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %79, %77, %72
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
