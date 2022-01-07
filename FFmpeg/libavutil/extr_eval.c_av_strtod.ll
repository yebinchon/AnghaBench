; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_av_strtod.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_av_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double, double }

@si_prefixes = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @av_strtod(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 48
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = or i32 %17, 32
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = call double @strtoul(i8* %21, i8** %6, i32 16)
  store double %22, double* %5, align 8
  br label %26

23:                                               ; preds = %13, %2
  %24 = load i8*, i8** %3, align 8
  %25 = call double @strtod(i8* %24, i8** %6)
  store double %25, double* %5, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %118

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 100
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 66
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load double, double* %5, align 8
  %44 = fdiv double %43, 2.000000e+01
  %45 = call double @ff_exp10(double %44)
  store double %45, double* %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %6, align 8
  br label %107

48:                                               ; preds = %36, %30
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 69
  br i1 %52, label %53, label %106

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 122
  br i1 %57, label %58, label %106

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @si_prefixes, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 69
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %58
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 105
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @si_prefixes, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 69
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load double, double* %84, align 8
  %86 = load double, double* %5, align 8
  %87 = fmul double %86, %85
  store double %87, double* %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %6, align 8
  br label %104

90:                                               ; preds = %70
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @si_prefixes, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 69
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load double, double* %98, align 8
  %100 = load double, double* %5, align 8
  %101 = fmul double %100, %99
  store double %101, double* %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  br label %104

104:                                              ; preds = %90, %76
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %53, %48
  br label %107

107:                                              ; preds = %106, %42
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 66
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load double, double* %5, align 8
  %114 = fmul double %113, 8.000000e+00
  store double %114, double* %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %26
  %119 = load i8**, i8*** %4, align 8
  %120 = icmp ne i8** %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = load i8**, i8*** %4, align 8
  store i8* %122, i8** %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load double, double* %5, align 8
  ret double %125
}

declare dso_local double @strtoul(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local double @ff_exp10(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
