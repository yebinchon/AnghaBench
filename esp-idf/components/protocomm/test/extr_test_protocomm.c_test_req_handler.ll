; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_req_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error allocating response outbuf\00", align 1
@test_priv_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Handler private data doesn't match\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_req_handler(i32 %0, i32* %1, i64 %2, i32** %3, i64* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i32* @malloc(i64 %15)
  %17 = load i32**, i32*** %11, align 8
  store i32* %16, i32** %17, align 8
  %18 = load i32**, i32*** %11, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  %23 = load i64*, i64** %12, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i32**, i32*** %11, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @memcpy(i32* %25, i32* %26, i64 %27)
  br label %34

29:                                               ; preds = %6
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @ESP_LOGE(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i32**, i32*** %11, align 8
  store i32* null, i32** %32, align 8
  %33 = load i64*, i64** %12, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i8*, i8** %13, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* @test_priv_data, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @test_priv_data, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 @ESP_LOGE(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ESP_FAIL, align 4
  store i32 %47, i32* %7, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @ESP_OK, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
