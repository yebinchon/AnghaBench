; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_sec1_decrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_sec1_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Session with ID %d not found\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@SESSION_STATE_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Secure session not established\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed at mbedtls_aes_crypt_ctr with error code : %d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i32, i32*, i32*)* @sec1_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec1_decrypt(i64 %0, i64 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %14, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %21, i32* %7, align 4
  br label %79

22:                                               ; preds = %6
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %28, i32* %7, align 4
  br label %79

29:                                               ; preds = %22
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %29
  %39 = load i32, i32* @TAG, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %42, i32* %7, align 4
  br label %79

43:                                               ; preds = %32
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SESSION_STATE_DONE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @TAG, align 4
  %51 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %52, i32* %7, align 4
  br label %79

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %13, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @mbedtls_aes_crypt_ctr(i32* %57, i32 %58, i32* %60, i32 %63, i32 %66, i32* %67, i32* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load i32, i32* @TAG, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ESP_FAIL, align 4
  store i32 %76, i32* %7, align 4
  br label %79

77:                                               ; preds = %53
  %78 = load i32, i32* @ESP_OK, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %72, %49, %38, %27, %20
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_aes_crypt_ctr(i32*, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
