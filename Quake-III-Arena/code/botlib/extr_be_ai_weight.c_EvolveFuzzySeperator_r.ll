; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_weight.c_EvolveFuzzySeperator_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_weight.c_EvolveFuzzySeperator_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, double, double, %struct.TYPE_3__*, %struct.TYPE_3__* }

@WT_BALANCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EvolveFuzzySeperator_r(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  call void @EvolveFuzzySeperator_r(%struct.TYPE_3__* %10)
  br label %88

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WT_BALANCE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %11
  %18 = call double (...) @random()
  %19 = fcmp olt double %18, 1.000000e-02
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = call double (...) @crandom()
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load double, double* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load double, double* %26, align 8
  %28 = fsub double %24, %27
  %29 = fmul double %21, %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sitofp i64 %32 to double
  %34 = fadd double %33, %29
  %35 = fptosi double %34 to i64
  store i64 %35, i64* %31, align 8
  br label %53

36:                                               ; preds = %17
  %37 = call double (...) @crandom()
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = fmul double %37, %44
  %46 = fmul double %45, 5.000000e-01
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to double
  %51 = fadd double %50, %46
  %52 = fptosi double %51 to i64
  store i64 %52, i64* %48, align 8
  br label %53

53:                                               ; preds = %36, %20
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to double
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load double, double* %59, align 8
  %61 = fcmp olt double %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to double
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store double %66, double* %68, align 8
  br label %86

69:                                               ; preds = %53
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to double
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load double, double* %75, align 8
  %77 = fcmp ogt double %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store double %82, double* %84, align 8
  br label %85

85:                                               ; preds = %78, %69
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %11
  br label %88

88:                                               ; preds = %87, %7
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = icmp ne %struct.TYPE_3__* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  call void @EvolveFuzzySeperator_r(%struct.TYPE_3__* %96)
  br label %97

97:                                               ; preds = %93, %88
  ret void
}

declare dso_local double @random(...) #1

declare dso_local double @crandom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
