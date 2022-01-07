; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF32toUTF8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF32toUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversionOK = common dso_local global i32 0, align 4
@strictConversion = common dso_local global i64 0, align 8
@UNI_SUR_HIGH_START = common dso_local global i64 0, align 8
@UNI_SUR_LOW_END = common dso_local global i64 0, align 8
@sourceIllegal = common dso_local global i32 0, align 4
@UNI_MAX_LEGAL_UTF32 = common dso_local global i64 0, align 8
@UNI_REPLACEMENT_CHAR = common dso_local global i64 0, align 8
@targetExhausted = common dso_local global i32 0, align 4
@firstByteMark = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertUTF32toUTF8(i64** %0, i64* %1, i32** %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* @conversionOK, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i64**, i64*** %6, align 8
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %12, align 8
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  br label %23

23:                                               ; preds = %130, %5
  %24 = load i64*, i64** %12, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = icmp ult i64* %24, %25
  br i1 %26, label %27, label %136

27:                                               ; preds = %23
  store i16 0, i16* %15, align 2
  store i64 191, i64* %16, align 8
  store i64 128, i64* %17, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %12, align 8
  %30 = load i64, i64* %28, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @strictConversion, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @UNI_SUR_HIGH_START, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @UNI_SUR_LOW_END, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64*, i64** %12, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 -1
  store i64* %44, i64** %12, align 8
  %45 = load i32, i32* @sourceIllegal, align 4
  store i32 %45, i32* %11, align 4
  br label %136

46:                                               ; preds = %38, %34
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i64, i64* %14, align 8
  %49 = icmp slt i64 %48, 128
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i16 1, i16* %15, align 2
  br label %70

51:                                               ; preds = %47
  %52 = load i64, i64* %14, align 8
  %53 = icmp slt i64 %52, 2048
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i16 2, i16* %15, align 2
  br label %69

55:                                               ; preds = %51
  %56 = load i64, i64* %14, align 8
  %57 = icmp slt i64 %56, 65536
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i16 3, i16* %15, align 2
  br label %68

59:                                               ; preds = %55
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @UNI_MAX_LEGAL_UTF32, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i16 4, i16* %15, align 2
  br label %67

64:                                               ; preds = %59
  store i16 3, i16* %15, align 2
  %65 = load i64, i64* @UNI_REPLACEMENT_CHAR, align 8
  store i64 %65, i64* %14, align 8
  %66 = load i32, i32* @sourceIllegal, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i16, i16* %15, align 2
  %72 = zext i16 %71 to i32
  %73 = load i32*, i32** %13, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ugt i32* %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load i64*, i64** %12, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 -1
  store i64* %81, i64** %12, align 8
  %82 = load i16, i16* %15, align 2
  %83 = zext i16 %82 to i32
  %84 = load i32*, i32** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32* %87, i32** %13, align 8
  %88 = load i32, i32* @targetExhausted, align 4
  store i32 %88, i32* %11, align 4
  br label %136

89:                                               ; preds = %70
  %90 = load i16, i16* %15, align 2
  %91 = zext i16 %90 to i32
  switch i32 %91, label %130 [
    i32 4, label %92
    i32 3, label %101
    i32 2, label %110
    i32 1, label %119
  ]

92:                                               ; preds = %89
  %93 = load i64, i64* %14, align 8
  %94 = or i64 %93, 128
  %95 = and i64 %94, 191
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %98, i32** %13, align 8
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %14, align 8
  %100 = ashr i64 %99, 6
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %89, %92
  %102 = load i64, i64* %14, align 8
  %103 = or i64 %102, 128
  %104 = and i64 %103, 191
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 -1
  store i32* %107, i32** %13, align 8
  store i32 %105, i32* %107, align 4
  %108 = load i64, i64* %14, align 8
  %109 = ashr i64 %108, 6
  store i64 %109, i64* %14, align 8
  br label %110

110:                                              ; preds = %89, %101
  %111 = load i64, i64* %14, align 8
  %112 = or i64 %111, 128
  %113 = and i64 %112, 191
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %13, align 8
  store i32 %114, i32* %116, align 4
  %117 = load i64, i64* %14, align 8
  %118 = ashr i64 %117, 6
  store i64 %118, i64* %14, align 8
  br label %119

119:                                              ; preds = %89, %110
  %120 = load i64, i64* %14, align 8
  %121 = load i64*, i64** @firstByteMark, align 8
  %122 = load i16, i16* %15, align 2
  %123 = zext i16 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = or i64 %120, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 -1
  store i32* %129, i32** %13, align 8
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %119, %89
  %131 = load i16, i16* %15, align 2
  %132 = zext i16 %131 to i32
  %133 = load i32*, i32** %13, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %13, align 8
  br label %23

136:                                              ; preds = %79, %42, %23
  %137 = load i64*, i64** %12, align 8
  %138 = load i64**, i64*** %6, align 8
  store i64* %137, i64** %138, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i32**, i32*** %8, align 8
  store i32* %139, i32** %140, align 8
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
