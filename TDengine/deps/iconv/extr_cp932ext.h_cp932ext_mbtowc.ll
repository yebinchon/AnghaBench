; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932ext.h_cp932ext_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932ext.h_cp932ext_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp932ext_2uni_page87 = common dso_local global i16* null, align 8
@cp932ext_2uni_pageed = common dso_local global i16* null, align 8
@cp932ext_2uni_pagefa = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp932ext_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp932ext_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %19 = icmp eq i32 %18, 135
  br i1 %19, label %36, label %20

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 237
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 238
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %20
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 250
  br i1 %31, label %32, label %129

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 252
  br i1 %35, label %36, label %129

36:                                               ; preds = %32, %24, %4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %127

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %11, align 1
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 64
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 127
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %39
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sge i32 %52, 128
  br i1 %53, label %54, label %125

54:                                               ; preds = %50
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 253
  br i1 %57, label %58, label %125

58:                                               ; preds = %54, %46
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 224
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 193, i32 129
  %66 = sub nsw i32 %60, %65
  %67 = mul nsw i32 188, %66
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sge i32 %71, 128
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 65, i32 64
  %75 = sub nsw i32 %69, %74
  %76 = add nsw i32 %67, %75
  store i32 %76, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %77 = load i32, i32* %12, align 4
  %78 = icmp ult i32 %77, 8272
  br i1 %78, label %79, label %90

79:                                               ; preds = %58
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %80, 1220
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i16*, i16** @cp932ext_2uni_page87, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sub i32 %84, 1128
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %83, i64 %86
  %88 = load i16, i16* %87, align 2
  store i16 %88, i16* %13, align 2
  br label %89

89:                                               ; preds = %82, %79
  br label %116

90:                                               ; preds = %58
  %91 = load i32, i32* %12, align 4
  %92 = icmp ult i32 %91, 10716
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = icmp ult i32 %94, 8648
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i16*, i16** @cp932ext_2uni_pageed, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sub i32 %98, 8272
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %97, i64 %100
  %102 = load i16, i16* %101, align 2
  store i16 %102, i16* %13, align 2
  br label %103

103:                                              ; preds = %96, %93
  br label %115

104:                                              ; preds = %90
  %105 = load i32, i32* %12, align 4
  %106 = icmp ult i32 %105, 11104
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i16*, i16** @cp932ext_2uni_pagefa, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sub i32 %109, 10716
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %108, i64 %111
  %113 = load i16, i16* %112, align 2
  store i16 %113, i16* %13, align 2
  br label %114

114:                                              ; preds = %107, %104
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %89
  %117 = load i16, i16* %13, align 2
  %118 = zext i16 %117 to i32
  %119 = icmp ne i32 %118, 65533
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i16, i16* %13, align 2
  %122 = zext i16 %121 to i64
  %123 = load i64*, i64** %7, align 8
  store i64 %122, i64* %123, align 8
  store i32 2, i32* %5, align 4
  br label %131

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %54, %50
  %126 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %126, i32* %5, align 4
  br label %131

127:                                              ; preds = %36
  %128 = call i32 @RET_TOOFEW(i32 0)
  store i32 %128, i32* %5, align 4
  br label %131

129:                                              ; preds = %32, %28
  %130 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %127, %125, %120
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
