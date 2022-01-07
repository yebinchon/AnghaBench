; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_set_key_enc_pem.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_set_key_enc_pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_private_key = type { i32 }

@pem_key_enc_begin = common dso_local global i32 0, align 4
@pem_key_enc_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_private_key* (i32*, i64, i8*)* @tlsv1_set_key_enc_pem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_private_key* @tlsv1_set_key_enc_pem(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.crypto_private_key*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.crypto_private_key*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %67

16:                                               ; preds = %3
  %17 = load i32, i32* @pem_key_enc_begin, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32* @search_tag(i32 %17, i32* %18, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %67

25:                                               ; preds = %16
  %26 = load i32, i32* @pem_key_enc_begin, align 4
  %27 = call i32 @os_strlen(i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @pem_key_enc_end, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32*, i32** %8, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32* @search_tag(i32 %31, i32* %32, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %25
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %67

46:                                               ; preds = %25
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i8* @base64_decode(i32* %47, i32 %54, i64* %11)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %67

59:                                               ; preds = %46
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call %struct.crypto_private_key* @crypto_private_key_import(i8* %60, i64 %61, i8* %62)
  store %struct.crypto_private_key* %63, %struct.crypto_private_key** %12, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @os_free(i8* %64)
  %66 = load %struct.crypto_private_key*, %struct.crypto_private_key** %12, align 8
  store %struct.crypto_private_key* %66, %struct.crypto_private_key** %4, align 8
  br label %67

67:                                               ; preds = %59, %58, %45, %24, %15
  %68 = load %struct.crypto_private_key*, %struct.crypto_private_key** %4, align 8
  ret %struct.crypto_private_key* %68
}

declare dso_local i32* @search_tag(i32, i32*, i32) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local i8* @base64_decode(i32*, i32, i64*) #1

declare dso_local %struct.crypto_private_key* @crypto_private_key_import(i8*, i64, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
