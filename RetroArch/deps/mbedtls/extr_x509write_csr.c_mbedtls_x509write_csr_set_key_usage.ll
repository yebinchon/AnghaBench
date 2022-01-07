; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_csr.c_mbedtls_x509write_csr_set_key_usage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509write_csr.c_mbedtls_x509write_csr_set_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_OID_KEY_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_set_key_usage(i32* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %10 = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %10, i8** %7, align 8
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %12 = call i32 @mbedtls_asn1_write_bitstring(i8** %7, i8* %11, i8* %5, i32 7)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @MBEDTLS_OID_KEY_USAGE, align 4
  %19 = load i32, i32* @MBEDTLS_OID_KEY_USAGE, align 4
  %20 = call i32 @MBEDTLS_OID_SIZE(i32 %19)
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %22 = call i32 @mbedtls_x509write_csr_set_extension(i32* %17, i32 %18, i32 %20, i8* %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @mbedtls_asn1_write_bitstring(i8**, i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_x509write_csr_set_extension(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @MBEDTLS_OID_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
