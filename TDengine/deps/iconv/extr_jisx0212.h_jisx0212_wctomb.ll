; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_jisx0212.h_jisx0212_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_jisx0212.h_jisx0212_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16, i16 }

@jisx0212_uni2indx_page00 = common dso_local global %struct.TYPE_6__* null, align 8
@jisx0212_uni2indx_page21 = common dso_local global %struct.TYPE_6__* null, align 8
@jisx0212_uni2indx_page4e = common dso_local global %struct.TYPE_6__* null, align 8
@jisx0212_uni2indx_pageff = common dso_local global %struct.TYPE_6__* null, align 8
@jisx0212_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @jisx0212_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jisx0212_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %154

16:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1120
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @jisx0212_uni2indx_page00, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %26
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  br label %70

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 8448
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 8496
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @jisx0212_uni2indx_page21, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 528
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %39
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %10, align 8
  br label %69

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 19968
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 40880
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @jisx0212_uni2indx_page4e, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = sub nsw i32 %50, 1248
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %52
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %10, align 8
  br label %68

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 65280
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 65376
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @jisx0212_uni2indx_pageff, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = sub nsw i32 %63, 4080
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %65
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %10, align 8
  br label %67

67:                                               ; preds = %60, %57, %54
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %34
  br label %70

70:                                               ; preds = %69, %22
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %152

73:                                               ; preds = %70
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 2
  store i16 %76, i16* %11, align 2
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 15
  store i32 %78, i32* %12, align 4
  %79 = load i16, i16* %11, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %151

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i16, i16* %11, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, %88
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %11, align 2
  %93 = load i16, i16* %11, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 21845
  %96 = load i16, i16* %11, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %97, 43690
  %99 = ashr i32 %98, 1
  %100 = add nsw i32 %95, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %11, align 2
  %102 = load i16, i16* %11, align 2
  %103 = zext i16 %102 to i32
  %104 = and i32 %103, 13107
  %105 = load i16, i16* %11, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 52428
  %108 = ashr i32 %107, 2
  %109 = add nsw i32 %104, %108
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %11, align 2
  %111 = load i16, i16* %11, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %112, 3855
  %114 = load i16, i16* %11, align 2
  %115 = zext i16 %114 to i32
  %116 = and i32 %115, 61680
  %117 = ashr i32 %116, 4
  %118 = add nsw i32 %113, %117
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %11, align 2
  %120 = load i16, i16* %11, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %121, 255
  %123 = load i16, i16* %11, align 2
  %124 = zext i16 %123 to i32
  %125 = ashr i32 %124, 8
  %126 = add nsw i32 %122, %125
  %127 = trunc i32 %126 to i16
  store i16 %127, i16* %11, align 2
  %128 = load i16*, i16** @jisx0212_2charset, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i16, i16* %130, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* %11, align 2
  %134 = zext i16 %133 to i32
  %135 = add nsw i32 %132, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %128, i64 %136
  %138 = load i16, i16* %137, align 2
  store i16 %138, i16* %13, align 2
  %139 = load i16, i16* %13, align 2
  %140 = zext i16 %139 to i32
  %141 = ashr i32 %140, 8
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 %142, i8* %144, align 1
  %145 = load i16, i16* %13, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 255
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8 %148, i8* %150, align 1
  store i32 2, i32* %5, align 4
  br label %156

151:                                              ; preds = %73
  br label %152

152:                                              ; preds = %151, %70
  %153 = load i32, i32* @RET_ILUNI, align 4
  store i32 %153, i32* %5, align 4
  br label %156

154:                                              ; preds = %4
  %155 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %152, %85
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
