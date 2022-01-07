; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_uhc_2.h_uhc_2_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_uhc_2.h_uhc_2_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i64 }

@uhc_2_uni2indx_pagec8 = common dso_local global %struct.TYPE_3__* null, align 8
@uhc_2_2charset_main = common dso_local global i16* null, align 8
@uhc_2_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @uhc_2_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhc_2_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %121

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 51200
  br i1 %18, label %19, label %119

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 55216
  br i1 %21, label %22, label %119

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uhc_2_uni2indx_pagec8, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sub nsw i32 %25, 3200
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %27
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %10, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 8
  store i16 %31, i16* %11, align 2
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 15
  store i32 %33, i32* %12, align 4
  %34 = load i16, i16* %11, align 2
  %35 = zext i16 %34 to i32
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %118

40:                                               ; preds = %22
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i16, i16* %11, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %11, align 2
  %48 = load i16, i16* %11, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 21845
  %51 = load i16, i16* %11, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 43690
  %54 = ashr i32 %53, 1
  %55 = add nsw i32 %50, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %11, align 2
  %57 = load i16, i16* %11, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 13107
  %60 = load i16, i16* %11, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 52428
  %63 = ashr i32 %62, 2
  %64 = add nsw i32 %59, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %11, align 2
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 3855
  %69 = load i16, i16* %11, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 61680
  %72 = ashr i32 %71, 4
  %73 = add nsw i32 %68, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %11, align 2
  %75 = load i16, i16* %11, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 255
  %78 = load i16, i16* %11, align 2
  %79 = zext i16 %78 to i32
  %80 = ashr i32 %79, 8
  %81 = add nsw i32 %77, %80
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %11, align 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i16, i16* %11, align 2
  %87 = zext i16 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i16
  store i16 %89, i16* %11, align 2
  %90 = load i16*, i16** @uhc_2_2charset_main, align 8
  %91 = load i16, i16* %11, align 2
  %92 = zext i16 %91 to i32
  %93 = ashr i32 %92, 6
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %90, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16*, i16** @uhc_2_2charset, align 8
  %99 = load i16, i16* %11, align 2
  %100 = zext i16 %99 to i64
  %101 = getelementptr inbounds i16, i16* %98, i64 %100
  %102 = load i16, i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = add nsw i32 %97, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %13, align 2
  %106 = load i16, i16* %13, align 2
  %107 = zext i16 %106 to i32
  %108 = ashr i32 %107, 8
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 %109, i8* %111, align 1
  %112 = load i16, i16* %13, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 255
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 %115, i8* %117, align 1
  store i32 2, i32* %5, align 4
  br label %123

118:                                              ; preds = %22
  br label %119

119:                                              ; preds = %118, %19, %16
  %120 = load i32, i32* @RET_ILUNI, align 4
  store i32 %120, i32* %5, align 4
  br label %123

121:                                              ; preds = %4
  %122 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %119, %40
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
