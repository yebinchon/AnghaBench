; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_prepare_command1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_prepare_command1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }

@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error allocating ciphertext buffer\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed at mbedtls_aes_setkey_enc with erro code : %d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Failed at mbedtls_aes_crypt_ctr with erro code : %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Error allocating out buffer\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error allocating out_req buffer\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Client verify data\00", align 1
@SEC1_MSG_TYPE__Session_Command1 = common dso_local global i32 0, align 4
@SEC1_PAYLOAD__PAYLOAD_SC1 = common dso_local global i32 0, align 4
@SESSION_DATA__PROTO_SEC1 = common dso_local global i32 0, align 4
@protocomm_security1 = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* @prepare_command1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_command1(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %10 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %18, i32* %3, align 4
  br label %129

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  %22 = call i32 @mbedtls_aes_init(i32* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memset(i32 %25, i32 0, i32 4)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mbedtls_aes_setkey_enc(i32* %30, i32 %33, i32 32)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load i32, i32* @TAG, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = call i32 @free(%struct.TYPE_16__* %41)
  %43 = load i32, i32* @ESP_FAIL, align 4
  store i32 %43, i32* %3, align 4
  br label %129

44:                                               ; preds = %19
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  %47 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = call i32 @mbedtls_aes_crypt_ctr(i32* %46, i32 %47, i64* %49, i32 %52, i32 %55, i32 %58, %struct.TYPE_16__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %44
  %64 = load i32, i32* @TAG, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %64, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = call i32 @free(%struct.TYPE_16__* %67)
  %69 = load i32, i32* @ESP_FAIL, align 4
  store i32 %69, i32* %3, align 4
  br label %129

70:                                               ; preds = %44
  %71 = call i64 @malloc(i32 16)
  %72 = inttoptr i64 %71 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %8, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = icmp ne %struct.TYPE_16__* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = call i32 @free(%struct.TYPE_16__* %78)
  %80 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %80, i32* %3, align 4
  br label %129

81:                                               ; preds = %70
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = call i32 @sec1_payload__init(%struct.TYPE_16__* %82)
  %84 = call i64 @malloc(i32 16)
  %85 = inttoptr i64 %84 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %9, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %87 = icmp ne %struct.TYPE_19__* %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @TAG, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = call i32 @free(%struct.TYPE_16__* %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = call i32 @free(%struct.TYPE_16__* %93)
  %95 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %95, i32* %3, align 4
  br label %129

96:                                               ; preds = %81
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = call i32 @session_cmd1__init(%struct.TYPE_19__* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %102, align 8
  %103 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %109 = call i32 @hexdump(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_16__* %107, i32 %108)
  %110 = load i32, i32* @SEC1_MSG_TYPE__Session_Command1, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @SEC1_PAYLOAD__PAYLOAD_SC1, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  store %struct.TYPE_19__* %116, %struct.TYPE_19__** %118, align 8
  %119 = load i32, i32* @SESSION_DATA__PROTO_SEC1, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @protocomm_security1, i32 0, i32 0), align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  store %struct.TYPE_16__* %125, %struct.TYPE_16__** %127, align 8
  %128 = load i32, i32* @ESP_OK, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %96, %88, %75, %63, %37, %15
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_aes_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mbedtls_aes_setkey_enc(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @mbedtls_aes_crypt_ctr(i32*, i32, i64*, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @sec1_payload__init(%struct.TYPE_16__*) #1

declare dso_local i32 @session_cmd1__init(%struct.TYPE_19__*) #1

declare dso_local i32 @hexdump(i8*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
