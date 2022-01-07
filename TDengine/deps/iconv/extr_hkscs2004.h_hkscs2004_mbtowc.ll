; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs2004.h_hkscs2004_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs2004.h_hkscs2004_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkscs2004_2uni_page87 = common dso_local global i16* null, align 8
@hkscs2004_2uni_upages = common dso_local global i16* null, align 8
@hkscs2004_2uni_page8c = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @hkscs2004_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkscs2004_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 135
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sge i32 %23, 140
  br i1 %24, label %25, label %124

25:                                               ; preds = %21
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sle i32 %27, 141
  br i1 %28, label %29, label %124

29:                                               ; preds = %25, %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %122

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 64
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %41, 127
  br i1 %42, label %51, label %43

43:                                               ; preds = %39, %32
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 161
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 255
  br i1 %50, label %51, label %120

51:                                               ; preds = %47, %39
  %52 = load i8, i8* %10, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 128
  %55 = mul nsw i32 157, %54
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 161
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 98, i32 64
  %63 = sub nsw i32 %57, %62
  %64 = add nsw i32 %55, %63
  store i32 %64, i32* %12, align 4
  store i32 65533, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ult i32 %65, 1884
  br i1 %66, label %67, label %90

67:                                               ; preds = %51
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %68, 1157
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i16*, i16** @hkscs2004_2uni_page87, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sub i32 %72, 1099
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %71, i64 %74
  %76 = load i16, i16* %75, align 2
  store i16 %76, i16* %14, align 2
  %77 = load i16*, i16** @hkscs2004_2uni_upages, align 8
  %78 = load i16, i16* %14, align 2
  %79 = zext i16 %78 to i32
  %80 = ashr i32 %79, 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, i16* %77, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* %14, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 255
  %88 = or i32 %84, %87
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %70, %67
  br label %113

90:                                               ; preds = %51
  %91 = load i32, i32* %12, align 4
  %92 = icmp ult i32 %91, 2073
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i16*, i16** @hkscs2004_2uni_page8c, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %95, 1884
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i16, i16* %94, i64 %97
  %99 = load i16, i16* %98, align 2
  store i16 %99, i16* %14, align 2
  %100 = load i16*, i16** @hkscs2004_2uni_upages, align 8
  %101 = load i16, i16* %14, align 2
  %102 = zext i16 %101 to i32
  %103 = ashr i32 %102, 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %100, i64 %104
  %106 = load i16, i16* %105, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* %14, align 2
  %109 = zext i16 %108 to i32
  %110 = and i32 %109, 255
  %111 = or i32 %107, %110
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %93, %90
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 65533
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  store i32 2, i32* %5, align 4
  br label %126

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %47, %43
  %121 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %121, i32* %5, align 4
  br label %126

122:                                              ; preds = %29
  %123 = call i32 @RET_TOOFEW(i32 0)
  store i32 %123, i32* %5, align 4
  br label %126

124:                                              ; preds = %25, %21
  %125 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %122, %120, %116
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
