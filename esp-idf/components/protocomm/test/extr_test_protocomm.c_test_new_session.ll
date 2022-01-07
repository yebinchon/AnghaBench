; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_new_session.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_new_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32*)*, i64 (i32, i32)* }
%struct.TYPE_4__ = type { i64, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@test_sec = common dso_local global %struct.TYPE_5__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@sec_inst = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to launch new transport session\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@test_pc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to open new protocomm session\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*)* @test_new_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_new_session(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @ESP_OK, align 8
  store i64 %10, i64* %2, align 8
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_sec, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %15, i64* %2, align 8
  br label %63

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_sec, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64 (i32*)*, i64 (i32*)** %18, align 8
  %20 = icmp ne i64 (i32*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_sec, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64 (i32*)*, i64 (i32*)** %23, align 8
  %25 = call i64 %24(i32* @sec_inst)
  %26 = load i64, i64* @ESP_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %29, i64* %2, align 8
  br label %63

30:                                               ; preds = %21, %16
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_sec, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64 (i32, i32)*, i64 (i32, i32)** %35, align 8
  %37 = icmp ne i64 (i32, i32)* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @test_sec, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64 (i32, i32)*, i64 (i32, i32)** %40, align 8
  %42 = load i32, i32* @sec_inst, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 %41(i32 %42, i32 %43)
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @ESP_FAIL, align 8
  store i64 %50, i64* %2, align 8
  br label %63

51:                                               ; preds = %38, %30
  %52 = load i32, i32* @test_pc, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @protocomm_open_session(i32 %52, i32 %53)
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* @ESP_FAIL, align 8
  store i64 %60, i64* %2, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i64, i64* @ESP_OK, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %61, %57, %47, %28, %14, %9
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @protocomm_open_session(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
