; ModuleID = '/home/carl/AnghaBench/esp-idf/components/newlib/test/extr_test_time.c_measure_time_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/newlib/test/extr_test_time.c_measure_time_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@__const.measure_time_task.tv_time = private unnamed_addr constant %struct.timeval { i32 1550000000, i32 0 }, align 4
@__const.measure_time_task.delta = private unnamed_addr constant %struct.timeval { i32 2000, i32 900000 }, align 4
@exit_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"measure\00", align 1
@result_adjtime_correction_us = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\0Aresult of adjtime correction: %lli us, %lli us. delta = %lli us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @measure_time_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_time_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i64], align 16
  %5 = alloca [2 x i64], align 16
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca [2 x i64], align 16
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %3, align 8
  %13 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.timeval* @__const.measure_time_task.tv_time to i8*), i64 8, i1 false)
  %14 = call i32 @settimeofday(%struct.timeval* %6, i32* null)
  %15 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %14)
  %16 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.timeval* @__const.measure_time_task.delta to i8*), i64 8, i1 false)
  %17 = call i32 @adjtime(%struct.timeval* %7, i32* null)
  %18 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %21 = call i32 @start_measure(i64* %19, i64* %20)
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %28 = load i64, i64* %27, align 16
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %33, %1
  %31 = load i32, i32* @exit_flag, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = call i32 @ets_delay_us(i32 2000000)
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %37 = call i32 @start_measure(i64* %35, i64* %36)
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %40 = call i64 @calc_correction(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %38, i64* %39)
  %41 = load i64*, i64** @result_adjtime_correction_us, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %46, i64* %47, align 16
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %49, i64* %50, align 16
  br label %30

51:                                               ; preds = %30
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %60 = call i64 @calc_correction(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %58, i64* %59)
  %61 = load i64*, i64** @result_adjtime_correction_us, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  %63 = load i64*, i64** @result_adjtime_correction_us, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** @result_adjtime_correction_us, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  store i64 %69, i64* %10, align 8
  %70 = load i64*, i64** @result_adjtime_correction_us, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @result_adjtime_correction_us, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %72, i64 %75, i64 %76)
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @TEST_ASSERT_INT_WITHIN(i32 100, i32 0, i64 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xSemaphoreGive(i32 %81)
  %83 = call i32 @vTaskDelete(i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @settimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @adjtime(%struct.timeval*, i32*) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @start_measure(i64*, i64*) #2

declare dso_local i32 @ets_delay_us(i32) #2

declare dso_local i64 @calc_correction(i8*, i64*, i64*) #2

declare dso_local i32 @printf(i8*, i64, i64, i64) #2

declare dso_local i32 @TEST_ASSERT_INT_WITHIN(i32, i32, i64) #2

declare dso_local i32 @xSemaphoreGive(i32) #2

declare dso_local i32 @vTaskDelete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
