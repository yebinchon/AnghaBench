; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_tls_prf_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_tls_prf_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i8*, i8*, i64, i8*, i64)* @tls_prf_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_prf_generic(i32 %0, i8* %1, i64 %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [128 x i8], align 16
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %30 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %24, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %25, align 8
  %34 = call i32 @mbedtls_md_init(i32* %27)
  %35 = load i32, i32* %10, align 4
  %36 = call i32* @mbedtls_md_info_from_type(i32 %35)
  store i32* %36, i32** %26, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %39, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %146

40:                                               ; preds = %8
  %41 = load i32*, i32** %26, align 8
  %42 = call i64 @mbedtls_md_get_size(i32* %41)
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %22, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add i64 %43, %45
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %46, %47
  %49 = icmp ult i64 128, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %51, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %146

52:                                               ; preds = %40
  %53 = load i8*, i8** %13, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %18, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %56 = load i64, i64* %22, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %18, align 8
  %60 = call i32 (i8*, ...) @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %62 = load i64, i64* %22, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %18, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8*, i8** %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i32 (i8*, ...) @memcpy(i8* %65, i8* %66, i64 %67)
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %18, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %18, align 8
  %72 = load i32*, i32** %26, align 8
  %73 = call i32 @mbedtls_md_setup(i32* %27, i32* %72, i32 1)
  store i32 %73, i32* %28, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %52
  %76 = load i32, i32* %28, align 4
  store i32 %76, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %146

77:                                               ; preds = %52
  %78 = load i8*, i8** %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @mbedtls_md_hmac_starts(i32* %27, i8* %78, i64 %79)
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %82 = load i64, i64* %22, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i64, i64* %18, align 8
  %85 = call i32 @mbedtls_md_hmac_update(i32* %27, i8* %83, i64 %84)
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %87 = call i32 @mbedtls_md_hmac_finish(i32* %27, i8* %86)
  store i64 0, i64* %19, align 8
  br label %88

88:                                               ; preds = %136, %77
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %140

92:                                               ; preds = %88
  %93 = call i32 @mbedtls_md_hmac_reset(i32* %27)
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %18, align 8
  %97 = add i64 %95, %96
  %98 = call i32 @mbedtls_md_hmac_update(i32* %27, i8* %94, i64 %97)
  %99 = call i32 @mbedtls_md_hmac_finish(i32* %27, i8* %33)
  %100 = call i32 @mbedtls_md_hmac_reset(i32* %27)
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %102 = load i64, i64* %22, align 8
  %103 = call i32 @mbedtls_md_hmac_update(i32* %27, i8* %101, i64 %102)
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %105 = call i32 @mbedtls_md_hmac_finish(i32* %27, i8* %104)
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %22, align 8
  %108 = add i64 %106, %107
  %109 = load i64, i64* %17, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %92
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %22, align 8
  %114 = urem i64 %112, %113
  br label %117

115:                                              ; preds = %92
  %116 = load i64, i64* %22, align 8
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i64 [ %114, %111 ], [ %116, %115 ]
  store i64 %118, i64* %21, align 8
  store i64 0, i64* %20, align 8
  br label %119

119:                                              ; preds = %132, %117
  %120 = load i64, i64* %20, align 8
  %121 = load i64, i64* %21, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i64, i64* %20, align 8
  %125 = getelementptr inbounds i8, i8* %33, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %16, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %20, align 8
  %130 = add i64 %128, %129
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %126, i8* %131, align 1
  br label %132

132:                                              ; preds = %123
  %133 = load i64, i64* %20, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %20, align 8
  br label %119

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %19, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %19, align 8
  br label %88

140:                                              ; preds = %88
  %141 = call i32 @mbedtls_md_free(i32* %27)
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %143 = call i32 @mbedtls_zeroize(i8* %142, i32 128)
  %144 = trunc i64 %31 to i32
  %145 = call i32 @mbedtls_zeroize(i8* %33, i32 %144)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %146

146:                                              ; preds = %140, %75, %50, %38
  %147 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_md_init(i32*) #2

declare dso_local i32* @mbedtls_md_info_from_type(i32) #2

declare dso_local i64 @mbedtls_md_get_size(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, ...) #2

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #2

declare dso_local i32 @mbedtls_md_hmac_starts(i32*, i8*, i64) #2

declare dso_local i32 @mbedtls_md_hmac_update(i32*, i8*, i64) #2

declare dso_local i32 @mbedtls_md_hmac_finish(i32*, i8*) #2

declare dso_local i32 @mbedtls_md_hmac_reset(i32*) #2

declare dso_local i32 @mbedtls_md_free(i32*) #2

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
