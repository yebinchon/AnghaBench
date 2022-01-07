; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkwrite.c_pk_write_ec_pubkey.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkwrite.c_pk_write_ec_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MBEDTLS_ECP_MAX_PT_LEN = common dso_local global i32 0, align 4
@MBEDTLS_ECP_PF_UNCOMPRESSED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_3__*)* @pk_write_ec_pubkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_write_ec_pubkey(i8** %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* @MBEDTLS_ECP_MAX_PT_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* @MBEDTLS_ECP_PF_UNCOMPRESSED, align 4
  %22 = trunc i64 %14 to i32
  %23 = call i32 @mbedtls_ecp_point_write_binary(i32* %18, i32* %20, i32 %21, i64* %9, i8* %16, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %27
  %42 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i64, i64* %9, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = sub i64 0, %44
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %45, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @memcpy(i8* %50, i8* %16, i64 %51)
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %43, %41, %25
  %56 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_ecp_point_write_binary(i32*, i32*, i32, i64*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
