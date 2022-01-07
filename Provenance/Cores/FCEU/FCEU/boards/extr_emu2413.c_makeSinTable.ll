; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeSinTable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeSinTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_WIDTH = common dso_local global i32 0, align 4
@PI = common dso_local global double 0.000000e+00, align 8
@fullsintable = common dso_local global i64* null, align 8
@DB_MUTE = common dso_local global i64 0, align 8
@halfsintable = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeSinTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeSinTable() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @PG_WIDTH, align 4
  %5 = sdiv i32 %4, 4
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load double, double* @PI, align 8
  %9 = fmul double 2.000000e+00, %8
  %10 = load i32, i32* %1, align 4
  %11 = sitofp i32 %10 to double
  %12 = fmul double %9, %11
  %13 = load i32, i32* @PG_WIDTH, align 4
  %14 = sitofp i32 %13 to double
  %15 = fdiv double %12, %14
  %16 = call i32 @sin(double %15)
  %17 = call i64 @lin2db(i32 %16)
  %18 = load i64*, i64** @fullsintable, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %17, i64* %21, align 8
  br label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %2

25:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @PG_WIDTH, align 4
  %29 = sdiv i32 %28, 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load i64*, i64** @fullsintable, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** @fullsintable, align 8
  %38 = load i32, i32* @PG_WIDTH, align 4
  %39 = sdiv i32 %38, 2
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %1, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %37, i64 %43
  store i64 %36, i64* %44, align 8
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %26

48:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @PG_WIDTH, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load i64, i64* @DB_MUTE, align 8
  %56 = load i64, i64* @DB_MUTE, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64*, i64** @fullsintable, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = load i64*, i64** @fullsintable, align 8
  %65 = load i32, i32* @PG_WIDTH, align 4
  %66 = sdiv i32 %65, 2
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %64, i64 %69
  store i64 %63, i64* %70, align 8
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %49

74:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @PG_WIDTH, align 4
  %78 = sdiv i32 %77, 2
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i64*, i64** @fullsintable, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** @halfsintable, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %85, i64* %89, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load i32, i32* @PG_WIDTH, align 4
  %95 = sdiv i32 %94, 2
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %108, %93
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @PG_WIDTH, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i64*, i64** @fullsintable, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @halfsintable, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %103, i64* %107, align 8
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %96

111:                                              ; preds = %96
  ret void
}

declare dso_local i64 @lin2db(i32) #1

declare dso_local i32 @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
