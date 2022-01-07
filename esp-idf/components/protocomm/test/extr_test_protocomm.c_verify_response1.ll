; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_verify_response1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_verify_response1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Device pubkey\00", align 1
@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Client pubkey\00", align 1
@SESSION_DATA__PROTO_SEC1 = common dso_local global i64 0, align 8
@SEC1_MSG_TYPE__Session_Response1 = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid response type\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed at mbedtls_aes_crypt_ctr with erro code : %d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Dec Device verifier\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Key mismatch. Close connection\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @verify_response1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_response1(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %21 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %24 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SESSION_DATA__PROTO_SEC1, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SEC1_MSG_TYPE__Session_Response1, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %2
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %30
  %43 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %8, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %9, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = bitcast %struct.TYPE_9__* %49 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %10, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mbedtls_aes_crypt_ctr(i32* %52, i32 %53, i32* %55, i32 %58, i32 %61, i32 %67, i32* %46)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %42
  %72 = load i32, i32* @TAG, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ESP_FAIL, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %91

76:                                               ; preds = %42
  %77 = mul nuw i64 4, %44
  %78 = trunc i64 %77 to i32
  %79 = call i32 @hexdump(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %46, i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @memcmp(i32* %46, i32* %82, i32 8)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32, i32* @TAG, align 4
  %87 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @ESP_FAIL, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %91

89:                                               ; preds = %76
  %90 = load i32, i32* @ESP_OK, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %85, %71
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %93

93:                                               ; preds = %91, %38
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @hexdump(i8*, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mbedtls_aes_crypt_ctr(i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
