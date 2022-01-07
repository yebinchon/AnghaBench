; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_rsaes_pkcs1_v15_encrypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_rsaes_pkcs1_v15_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@MBEDTLS_RSA_PRIVATE = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PKCS_V15 = common dso_local global i64 0, align 8
@MBEDTLS_ERR_RSA_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PUBLIC = common dso_local global i32 0, align 4
@MBEDTLS_RSA_CRYPT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_RSA_RNG_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_RSA_SIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsaes_pkcs1_v15_encrypt(%struct.TYPE_5__* %0, i32 (i8*, i8*, i64)* %1, i8* %2, i32 %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load i8*, i8** %15, align 8
  store i8* %21, i8** %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @MBEDTLS_RSA_PRIVATE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MBEDTLS_RSA_PKCS_V15, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %32, i32* %8, align 4
  br label %149

33:                                               ; preds = %25, %7
  %34 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %35 = icmp eq i32 (i8*, i8*, i64)* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %14, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %15, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %36, %33
  %43 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %43, i32* %8, align 4
  br label %149

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 11
  %50 = load i64, i64* %13, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 11
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %44
  %58 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %58, i32* %8, align 4
  br label %149

59:                                               ; preds = %52
  %60 = load i64, i64* %17, align 8
  %61 = sub i64 %60, 3
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %16, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %19, align 8
  store i8 0, i8* %64, align 1
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @MBEDTLS_RSA_PUBLIC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %59
  %70 = load i32, i32* @MBEDTLS_RSA_CRYPT, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %19, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %19, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %108, %69
  %75 = load i64, i64* %16, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %16, align 8
  %77 = icmp ugt i64 %75, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  store i32 100, i32* %20, align 4
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 %80(i8* %81, i8* %82, i64 1)
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %19, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* %20, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %20, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 0
  br label %96

96:                                               ; preds = %93, %89, %84
  %97 = phi i1 [ false, %89 ], [ false, %84 ], [ %95, %93 ]
  br i1 %97, label %79, label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %20, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @MBEDTLS_ERR_RSA_RNG_FAILED, align 4
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %8, align 4
  br label %149

108:                                              ; preds = %101
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %19, align 8
  br label %74

111:                                              ; preds = %74
  br label %125

112:                                              ; preds = %59
  %113 = load i32, i32* @MBEDTLS_RSA_SIGN, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %19, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %19, align 8
  store i8 %114, i8* %115, align 1
  br label %117

117:                                              ; preds = %121, %112
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %16, align 8
  %120 = icmp ugt i64 %118, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i8*, i8** %19, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %19, align 8
  store i8 -1, i8* %122, align 1
  br label %117

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %111
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %19, align 8
  store i8 0, i8* %126, align 1
  %128 = load i8*, i8** %19, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @memcpy(i8* %128, i8* %129, i64 %130)
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @MBEDTLS_RSA_PUBLIC, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 @mbedtls_rsa_public(%struct.TYPE_5__* %136, i8* %137, i8* %138)
  br label %147

140:                                              ; preds = %125
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @mbedtls_rsa_private(%struct.TYPE_5__* %141, i32 (i8*, i8*, i64)* %142, i8* %143, i8* %144, i8* %145)
  br label %147

147:                                              ; preds = %140, %135
  %148 = phi i32 [ %139, %135 ], [ %146, %140 ]
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %147, %104, %57, %42, %31
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_rsa_public(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @mbedtls_rsa_private(%struct.TYPE_5__*, i32 (i8*, i8*, i64)*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
