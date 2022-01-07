; ModuleID = '/home/carl/AnghaBench/TDengine/tests/comparisonTest/tdengine/extr_tdengineTest.c_readData.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/comparisonTest/tdengine/extr_tdengineTest.c_readData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"read data\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"---- sql: %s\0A\00", align 1
@arguments = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to open file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"open file %s success\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to get result, reason:%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"---- Spent %f seconds to query: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readData() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arguments, i32 0, i32 0), align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = call i8* @taos_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0)
  store i8* %15, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @taos_error(i8* %19)
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arguments, i32 0, i32 0), align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arguments, i32 0, i32 0), align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %21
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arguments, i32 0, i32 0), align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %79, %50, %30
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @feof(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @free(i8* %39)
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @getline(i8** %3, i64* %4, i32* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %92

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %33

51:                                               ; preds = %46
  %52 = call i64 (...) @getTimeStampMs()
  store i64 %52, i64* %5, align 8
  %53 = load i8*, i8** %1, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @taos_query(i8* %53, i8* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %1, align 8
  %60 = call i32 @taos_error(i8* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i8*, i8** %1, align 8
  %63 = call i8* @taos_use_result(i8* %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %1, align 8
  %68 = call i8* @taos_errstr(i8* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %68)
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @taos_fetch_row(i8* %73)
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %72

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @taos_free_result(i8* %80)
  %82 = call i64 (...) @getTimeStampMs()
  %83 = load i64, i64* %5, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sitofp i64 %85 to float
  %87 = fdiv float %86, 1.000000e+03
  store float %87, float* %11, align 4
  %88 = load float, float* %11, align 4
  %89 = fpext float %88 to double
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), double %89, i8* %90)
  br label %33

92:                                               ; preds = %45, %33
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @fclose(i32* %93)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @taos_connect(i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @taos_error(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @getTimeStampMs(...) #1

declare dso_local i32 @taos_query(i8*, i8*) #1

declare dso_local i8* @taos_use_result(i8*) #1

declare dso_local i8* @taos_errstr(i8*) #1

declare dso_local i32 @taos_fetch_row(i8*) #1

declare dso_local i32 @taos_free_result(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
