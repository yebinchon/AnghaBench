; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeTllTable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeTllTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@makeTllTable.kltable = internal global [16 x double] [double 0.000000e+00, double 1.800000e+01, double 2.400000e+01, double 2.775000e+01, double 3.000000e+01, double 3.225000e+01, double 3.375000e+01, double 3.525000e+01, double 3.600000e+01, double 3.750000e+01, double 3.825000e+01, double 3.900000e+01, double 3.975000e+01, double 4.050000e+01, double 4.125000e+01, double 4.200000e+01], align 16
@tllTable = common dso_local global i64**** null, align 8
@EG_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeTllTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeTllTable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %116, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %119

9:                                                ; preds = %6
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %112, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %115

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %108, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %111

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %104, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %107

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @TL2EG(i32 %25)
  %27 = load i64****, i64***** @tllTable, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64***, i64**** %27, i64 %29
  %31 = load i64***, i64**** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64**, i64*** %31, i64 %33
  %35 = load i64**, i64*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %26, i64* %42, align 8
  br label %103

43:                                               ; preds = %21
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x double], [16 x double]* @makeTllTable.kltable, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 7, %48
  %50 = sitofp i32 %49 to double
  %51 = fmul double 6.000000e+00, %50
  %52 = fsub double %47, %51
  %53 = fptosi double %52 to i32
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %43
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @TL2EG(i32 %57)
  %59 = load i64****, i64***** @tllTable, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64***, i64**** %59, i64 %61
  %63 = load i64***, i64**** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64**, i64*** %63, i64 %65
  %67 = load i64**, i64*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %58, i64* %74, align 8
  br label %102

75:                                               ; preds = %43
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 3, %77
  %79 = ashr i32 %76, %78
  %80 = load i32, i32* @EG_STEP, align 4
  %81 = sdiv i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* %4, align 4
  %84 = call i64 @TL2EG(i32 %83)
  %85 = add nsw i64 %82, %84
  %86 = load i64****, i64***** @tllTable, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64***, i64**** %86, i64 %88
  %90 = load i64***, i64**** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64**, i64*** %90, i64 %92
  %94 = load i64**, i64*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64*, i64** %94, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %85, i64* %101, align 8
  br label %102

102:                                              ; preds = %75, %56
  br label %103

103:                                              ; preds = %102, %24
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %18

107:                                              ; preds = %18
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %14

111:                                              ; preds = %14
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %10

115:                                              ; preds = %10
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %2, align 4
  br label %6

119:                                              ; preds = %6
  ret void
}

declare dso_local i64 @TL2EG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
