; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_req_endpoint.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_req_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@test_pc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"test-ep\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"test-ep handler failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"error allocating memory for decrypted data\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Sent data\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Recv data\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"verify data len   : %d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"expected data len : %d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"incorrect response length from test-ep\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"incorrect response data from test-ep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @test_req_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_req_endpoint(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [512 x i32], align 16
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %15 = call i32 @getrandom(i32* %14, i32 2048, i32 0)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %22 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %23 = call i32 @memcpy(i32* %21, i32* %22, i32 2048)
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %42 = call i32 @mbedtls_aes_crypt_ctr(i32* %31, i32 2048, i32* %33, i32 %36, i32 %39, i32* %40, i32* %41)
  br label %43

43:                                               ; preds = %29, %24
  br label %44

44:                                               ; preds = %43, %20
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %45 = load i32, i32* @test_pc, align 4
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %48 = call i64 @protocomm_req_handle(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46, i32* %47, i32 2048, i32** %8, i32* %7)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @ESP_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* @ESP_FAIL, align 8
  store i64 %58, i64* %2, align 8
  br label %139

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = call i32* @malloc(i32 %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @TAG, align 4
  %66 = call i32 @ESP_LOGE(i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i64, i64* @ESP_FAIL, align 8
  store i64 %69, i64* %2, align 8
  br label %139

70:                                               ; preds = %59
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @memcpy(i32* %76, i32* %77, i32 %78)
  br label %101

80:                                               ; preds = %70
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @mbedtls_aes_crypt_ctr(i32* %87, i32 %88, i32* %90, i32 %93, i32 %96, i32* %97, i32* %98)
  br label %100

100:                                              ; preds = %85, %80
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @free(i32* %102)
  %104 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %105 = call i32 @hexdump(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %104, i32 2048)
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @hexdump(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %106, i32 %107)
  %109 = load i32, i32* @TAG, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ESP_LOGI(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @TAG, align 4
  %113 = call i32 @ESP_LOGI(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 2048)
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ne i64 %115, 2048
  br i1 %116, label %117, label %123

117:                                              ; preds = %101
  %118 = load i32, i32* @TAG, align 4
  %119 = call i32 @ESP_LOGE(i32 %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @free(i32* %120)
  %122 = load i64, i64* @ESP_FAIL, align 8
  store i64 %122, i64* %2, align 8
  br label %139

123:                                              ; preds = %101
  %124 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @memcmp(i32* %124, i32* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* @TAG, align 4
  %131 = call i32 @ESP_LOGE(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @free(i32* %132)
  %134 = load i64, i64* @ESP_FAIL, align 8
  store i64 %134, i64* %2, align 8
  br label %139

135:                                              ; preds = %123
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @free(i32* %136)
  %138 = load i64, i64* @ESP_OK, align 8
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %135, %129, %117, %64, %55
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i32 @getrandom(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_aes_crypt_ctr(i32*, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @protocomm_req_handle(i32, i8*, i32, i32*, i32, i32**, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @hexdump(i8*, i32*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
