; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_pkcs1_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_pkcs1_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @pk_parse_key_pkcs1_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_pkcs1_der(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %18 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %16, i64* %9, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %124

26:                                               ; preds = %3
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 9
  %33 = call i32 @mbedtls_asn1_get_int(i8** %10, i8* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %124

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_VERSION, align 4
  store i32 %45, i32* %4, align 4
  br label %124

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %47, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %94, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 8
  %56 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %53, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %94, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  %62 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %59, i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  %68 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %65, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  %74 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %71, i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %77, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %83, i32* %85)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = call i32 @mbedtls_asn1_get_mpi(i8** %10, i8* %89, i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88, %82, %76, %70, %64, %58, %52, %46
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = call i32 @mbedtls_rsa_free(%struct.TYPE_5__* %95)
  %97 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %4, align 4
  br label %124

100:                                              ; preds = %88
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 @mbedtls_mpi_size(i32* %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = call i32 @mbedtls_rsa_free(%struct.TYPE_5__* %110)
  %112 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %113 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %4, align 4
  br label %124

115:                                              ; preds = %100
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = call i32 @mbedtls_rsa_check_privkey(%struct.TYPE_5__* %116)
  store i32 %117, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = call i32 @mbedtls_rsa_free(%struct.TYPE_5__* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %119, %109, %94, %44, %35, %22
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_asn1_get_mpi(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_rsa_free(%struct.TYPE_5__*) #1

declare dso_local i32 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @mbedtls_rsa_check_privkey(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
