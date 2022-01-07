; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_set_key_pem.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_set_key_pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_private_key = type { i32 }

@pem_key_begin = common dso_local global i8* null, align 8
@pem_key2_begin = common dso_local global i8* null, align 8
@pem_key2_end = common dso_local global i8* null, align 8
@pem_key_end = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Proc-Type: 4,ENCRYPTED\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"TLSv1: Unsupported private key format (Proc-Type/DEK-Info)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_private_key* (i32*, i64)* @tlsv1_set_key_pem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_private_key* @tlsv1_set_key_pem(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_private_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_private_key*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** @pem_key_begin, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32* @search_tag(i8* %12, i32* %13, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** @pem_key2_begin, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32* @search_tag(i8* %20, i32* %21, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %107

28:                                               ; preds = %19
  %29 = load i8*, i8** @pem_key2_begin, align 8
  %30 = call i32 @os_strlen(i8* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %6, align 8
  %34 = load i8*, i8** @pem_key2_end, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32* @search_tag(i8* %34, i32* %35, i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %28
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %107

49:                                               ; preds = %28
  br label %87

50:                                               ; preds = %2
  %51 = load i8*, i8** @pem_key_begin, align 8
  %52 = call i32 @os_strlen(i8* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %6, align 8
  %56 = load i8*, i8** @pem_key_end, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32*, i32** %6, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32* @search_tag(i8* %56, i32* %57, i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %50
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %107

71:                                               ; preds = %50
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32* @search_tag(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %72, i32 %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %107

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i8* @base64_decode(i32* %88, i32 %95, i64* %9)
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %107

100:                                              ; preds = %87
  %101 = load i8*, i8** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call %struct.crypto_private_key* @crypto_private_key_import(i8* %101, i64 %102, i32* null)
  store %struct.crypto_private_key* %103, %struct.crypto_private_key** %10, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @os_free(i8* %104)
  %106 = load %struct.crypto_private_key*, %struct.crypto_private_key** %10, align 8
  store %struct.crypto_private_key* %106, %struct.crypto_private_key** %3, align 8
  br label %107

107:                                              ; preds = %100, %99, %83, %70, %48, %27
  %108 = load %struct.crypto_private_key*, %struct.crypto_private_key** %3, align 8
  ret %struct.crypto_private_key* %108
}

declare dso_local i32* @search_tag(i8*, i32*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @base64_decode(i32*, i32, i64*) #1

declare dso_local %struct.crypto_private_key* @crypto_private_key_import(i8*, i64, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
