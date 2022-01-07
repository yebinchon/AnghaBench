; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF16toUTF32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF16toUTF32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversionOK = common dso_local global i64 0, align 8
@UNI_SUR_HIGH_START = common dso_local global i64 0, align 8
@UNI_SUR_HIGH_END = common dso_local global i64 0, align 8
@UNI_SUR_LOW_START = common dso_local global i64 0, align 8
@UNI_SUR_LOW_END = common dso_local global i64 0, align 8
@halfShift = common dso_local global i64 0, align 8
@halfBase = common dso_local global i64 0, align 8
@strictConversion = common dso_local global i64 0, align 8
@sourceIllegal = common dso_local global i64 0, align 8
@sourceExhausted = common dso_local global i64 0, align 8
@targetExhausted = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConvertUTF16toUTF32(i64** %0, i64* %1, i64** %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i64, i64* @conversionOK, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %12, align 8
  %20 = load i64**, i64*** %8, align 8
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %13, align 8
  br label %22

22:                                               ; preds = %106, %5
  %23 = load i64*, i64** %12, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ult i64* %23, %24
  br i1 %25, label %26, label %110

26:                                               ; preds = %22
  %27 = load i64*, i64** %12, align 8
  store i64* %27, i64** %16, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %12, align 8
  %30 = load i64, i64* %28, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @UNI_SUR_HIGH_START, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %26
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @UNI_SUR_HIGH_END, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load i64*, i64** %12, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = icmp ult i64* %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @UNI_SUR_LOW_END, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @UNI_SUR_HIGH_START, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* @halfShift, align 8
  %57 = shl i64 %55, %56
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %60 = sub nsw i64 %58, %59
  %61 = add nsw i64 %57, %60
  %62 = load i64, i64* @halfBase, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %14, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %12, align 8
  br label %75

66:                                               ; preds = %48, %42
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @strictConversion, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64*, i64** %12, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 -1
  store i64* %72, i64** %12, align 8
  %73 = load i64, i64* @sourceIllegal, align 8
  store i64 %73, i64* %11, align 8
  br label %110

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %52
  br label %80

76:                                               ; preds = %38
  %77 = load i64*, i64** %12, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 -1
  store i64* %78, i64** %12, align 8
  %79 = load i64, i64* @sourceExhausted, align 8
  store i64 %79, i64* %11, align 8
  br label %110

80:                                               ; preds = %75
  br label %99

81:                                               ; preds = %34, %26
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @strictConversion, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* @UNI_SUR_LOW_END, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64*, i64** %12, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 -1
  store i64* %95, i64** %12, align 8
  %96 = load i64, i64* @sourceIllegal, align 8
  store i64 %96, i64* %11, align 8
  br label %110

97:                                               ; preds = %89, %85
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i64*, i64** %13, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = icmp uge i64* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i64*, i64** %16, align 8
  store i64* %104, i64** %12, align 8
  %105 = load i64, i64* @targetExhausted, align 8
  store i64 %105, i64* %11, align 8
  br label %110

106:                                              ; preds = %99
  %107 = load i64, i64* %14, align 8
  %108 = load i64*, i64** %13, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %13, align 8
  store i64 %107, i64* %108, align 8
  br label %22

110:                                              ; preds = %103, %93, %76, %70, %22
  %111 = load i64*, i64** %12, align 8
  %112 = load i64**, i64*** %6, align 8
  store i64* %111, i64** %112, align 8
  %113 = load i64*, i64** %13, align 8
  %114 = load i64**, i64*** %8, align 8
  store i64* %113, i64** %114, align 8
  %115 = load i64, i64* %11, align 8
  ret i64 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
