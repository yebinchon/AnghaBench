; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF32toUTF16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF32toUTF16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversionOK = common dso_local global i32 0, align 4
@targetExhausted = common dso_local global i32 0, align 4
@UNI_MAX_BMP = common dso_local global i32 0, align 4
@UNI_SUR_HIGH_START = common dso_local global i32 0, align 4
@UNI_SUR_LOW_END = common dso_local global i32 0, align 4
@strictConversion = common dso_local global i64 0, align 8
@sourceIllegal = common dso_local global i32 0, align 4
@UNI_REPLACEMENT_CHAR = common dso_local global i8* null, align 8
@UNI_MAX_LEGAL_UTF32 = common dso_local global i32 0, align 4
@halfBase = common dso_local global i64 0, align 8
@halfShift = common dso_local global i32 0, align 4
@halfMask = common dso_local global i32 0, align 4
@UNI_SUR_LOW_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertUTF32toUTF16(i32** %0, i32* %1, i8*** %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @conversionOK, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i8***, i8**** %8, align 8
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %13, align 8
  br label %20

20:                                               ; preds = %114, %5
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ult i32* %21, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %20
  %25 = load i8**, i8*** %13, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp uge i8** %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @targetExhausted, align 4
  store i32 %29, i32* %11, align 4
  br label %115

30:                                               ; preds = %24
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %12, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @UNI_MAX_BMP, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @UNI_SUR_HIGH_START, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @UNI_SUR_LOW_END, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @strictConversion, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 -1
  store i32* %51, i32** %12, align 8
  %52 = load i32, i32* @sourceIllegal, align 4
  store i32 %52, i32* %11, align 4
  br label %115

53:                                               ; preds = %45
  %54 = load i8*, i8** @UNI_REPLACEMENT_CHAR, align 8
  %55 = load i8**, i8*** %13, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %13, align 8
  store i8* %54, i8** %55, align 8
  br label %57

57:                                               ; preds = %53
  br label %64

58:                                               ; preds = %41, %37
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8**, i8*** %13, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %13, align 8
  store i8* %61, i8** %62, align 8
  br label %64

64:                                               ; preds = %58, %57
  br label %114

65:                                               ; preds = %30
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @UNI_MAX_LEGAL_UTF32, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @strictConversion, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @sourceIllegal, align 4
  store i32 %74, i32* %11, align 4
  br label %79

75:                                               ; preds = %69
  %76 = load i8*, i8** @UNI_REPLACEMENT_CHAR, align 8
  %77 = load i8**, i8*** %13, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %13, align 8
  store i8* %76, i8** %77, align 8
  br label %79

79:                                               ; preds = %75, %73
  br label %113

80:                                               ; preds = %65
  %81 = load i8**, i8*** %13, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8**, i8*** %9, align 8
  %84 = icmp uge i8** %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 -1
  store i32* %87, i32** %12, align 8
  %88 = load i32, i32* @targetExhausted, align 4
  store i32 %88, i32* %11, align 4
  br label %115

89:                                               ; preds = %80
  %90 = load i64, i64* @halfBase, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @halfShift, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* @UNI_SUR_HIGH_START, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8**, i8*** %13, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %103, i8*** %13, align 8
  store i8* %101, i8** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @halfMask, align 4
  %106 = and i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %109 = add nsw i64 %107, %108
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8**, i8*** %13, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %13, align 8
  store i8* %110, i8** %111, align 8
  br label %113

113:                                              ; preds = %89, %79
  br label %114

114:                                              ; preds = %113, %64
  br label %20

115:                                              ; preds = %85, %49, %28, %20
  %116 = load i32*, i32** %12, align 8
  %117 = load i32**, i32*** %6, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i8**, i8*** %13, align 8
  %119 = load i8***, i8**** %8, align 8
  store i8** %118, i8*** %119, align 8
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
