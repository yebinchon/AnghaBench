; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonFloat.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MAX_NUM_STR_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.5e\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.5f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpJsonFloat(%struct.TYPE_5__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @httpJsonItemToken(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* @MAX_NUM_STR_SZ, align 4
  %9 = call i32 @httpJsonTestBuf(%struct.TYPE_5__* %7, i32 %8)
  %10 = load float, float* %4, align 4
  %11 = fpext float %10 to double
  %12 = fcmp ogt double %11, 1.000000e+10
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = fcmp olt double %15, -1.000000e+10
  br i1 %16, label %17, label %30

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAX_NUM_STR_SZ, align 4
  %22 = load float, float* %4, align 4
  %23 = call i64 @snprintf(i32 %20, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), float %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  br label %43

30:                                               ; preds = %13
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX_NUM_STR_SZ, align 4
  %35 = load float, float* %4, align 4
  %36 = call i64 @snprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %30, %17
  ret void
}

declare dso_local i32 @httpJsonItemToken(%struct.TYPE_5__*) #1

declare dso_local i32 @httpJsonTestBuf(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @snprintf(i32, i32, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
