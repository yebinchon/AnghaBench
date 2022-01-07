; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_rsaes_oaep_encrypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_rsaes_oaep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@MBEDTLS_RSA_PRIVATE = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PKCS_V21 = common dso_local global i64 0, align 8
@MBEDTLS_ERR_RSA_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_RSA_RNG_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PUBLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsaes_oaep_encrypt(%struct.TYPE_5__* %0, i32 (i8*, i8*, i64)* %1, i8* %2, i32 %3, i8* %4, i64 %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %26 = load i8*, i8** %19, align 8
  store i8* %26, i8** %22, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @MBEDTLS_RSA_PRIVATE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %9
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MBEDTLS_RSA_PKCS_V21, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %37, i32* %10, align 4
  br label %181

38:                                               ; preds = %30, %9
  %39 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %40 = icmp eq i32 (i8*, i8*, i64)* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %42, i32* %10, align 4
  br label %181

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32* @mbedtls_md_info_from_type(i32 %47)
  store i32* %48, i32** %24, align 8
  %49 = load i32*, i32** %24, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %52, i32* %10, align 4
  br label %181

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %20, align 8
  %57 = load i32*, i32** %24, align 8
  %58 = call i32 @mbedtls_md_get_size(i32* %57)
  store i32 %58, i32* %23, align 4
  %59 = load i64, i64* %17, align 8
  %60 = load i32, i32* %23, align 4
  %61 = mul i32 2, %60
  %62 = zext i32 %61 to i64
  %63 = add i64 %59, %62
  %64 = add i64 %63, 2
  %65 = load i64, i64* %17, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %53
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i32, i32* %23, align 4
  %71 = mul i32 2, %70
  %72 = zext i32 %71 to i64
  %73 = add i64 %69, %72
  %74 = add i64 %73, 2
  %75 = icmp ult i64 %68, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67, %53
  %77 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %77, i32* %10, align 4
  br label %181

78:                                               ; preds = %67
  %79 = load i8*, i8** %19, align 8
  %80 = load i64, i64* %20, align 8
  %81 = call i32 @memset(i8* %79, i32 0, i64 %80)
  %82 = load i8*, i8** %22, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %22, align 8
  store i8 0, i8* %82, align 1
  %84 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %22, align 8
  %87 = load i32, i32* %23, align 4
  %88 = zext i32 %87 to i64
  %89 = call i32 %84(i8* %85, i8* %86, i64 %88)
  store i32 %89, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i32, i32* @MBEDTLS_ERR_RSA_RNG_FAILED, align 4
  %93 = load i32, i32* %21, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %10, align 4
  br label %181

95:                                               ; preds = %78
  %96 = load i32, i32* %23, align 4
  %97 = load i8*, i8** %22, align 8
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %22, align 8
  %100 = load i32*, i32** %24, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i8*, i8** %22, align 8
  %104 = call i32 @mbedtls_md(i32* %100, i8* %101, i64 %102, i8* %103)
  %105 = load i32, i32* %23, align 4
  %106 = load i8*, i8** %22, align 8
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %22, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i32, i32* %23, align 4
  %111 = mul i32 2, %110
  %112 = zext i32 %111 to i64
  %113 = sub i64 %109, %112
  %114 = sub i64 %113, 2
  %115 = load i64, i64* %17, align 8
  %116 = sub i64 %114, %115
  %117 = load i8*, i8** %22, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %22, align 8
  %119 = load i8*, i8** %22, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %22, align 8
  store i8 1, i8* %119, align 1
  %121 = load i8*, i8** %22, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = load i64, i64* %17, align 8
  %124 = call i32 @memcpy(i8* %121, i8* %122, i64 %123)
  %125 = call i32 @mbedtls_md_init(i32* %25)
  %126 = load i32*, i32** %24, align 8
  %127 = call i32 @mbedtls_md_setup(i32* %25, i32* %126, i32 0)
  store i32 %127, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %95
  %130 = call i32 @mbedtls_md_free(i32* %25)
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %10, align 4
  br label %181

132:                                              ; preds = %95
  %133 = load i8*, i8** %19, align 8
  %134 = load i32, i32* %23, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i64, i64* %20, align 8
  %139 = load i32, i32* %23, align 4
  %140 = zext i32 %139 to i64
  %141 = sub i64 %138, %140
  %142 = sub i64 %141, 1
  %143 = trunc i64 %142 to i32
  %144 = load i8*, i8** %19, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i32, i32* %23, align 4
  %147 = zext i32 %146 to i64
  %148 = call i32 @mgf_mask(i8* %137, i32 %143, i8* %145, i64 %147, i32* %25)
  %149 = load i8*, i8** %19, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i32, i32* %23, align 4
  %152 = load i8*, i8** %19, align 8
  %153 = load i32, i32* %23, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i64, i64* %20, align 8
  %158 = load i32, i32* %23, align 4
  %159 = zext i32 %158 to i64
  %160 = sub i64 %157, %159
  %161 = sub i64 %160, 1
  %162 = call i32 @mgf_mask(i8* %150, i32 %151, i8* %156, i64 %161, i32* %25)
  %163 = call i32 @mbedtls_md_free(i32* %25)
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @MBEDTLS_RSA_PUBLIC, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %132
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %169 = load i8*, i8** %19, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = call i32 @mbedtls_rsa_public(%struct.TYPE_5__* %168, i8* %169, i8* %170)
  br label %179

172:                                              ; preds = %132
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %174 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i8*, i8** %19, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @mbedtls_rsa_private(%struct.TYPE_5__* %173, i32 (i8*, i8*, i64)* %174, i8* %175, i8* %176, i8* %177)
  br label %179

179:                                              ; preds = %172, %167
  %180 = phi i32 [ %171, %167 ], [ %178, %172 ]
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %179, %129, %91, %76, %51, %41, %36
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local i32* @mbedtls_md_info_from_type(i32) #1

declare dso_local i32 @mbedtls_md_get_size(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @mbedtls_md(i32*, i8*, i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_init(i32*) #1

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_md_free(i32*) #1

declare dso_local i32 @mgf_mask(i8*, i32, i8*, i64, i32*) #1

declare dso_local i32 @mbedtls_rsa_public(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @mbedtls_rsa_private(%struct.TYPE_5__*, i32 (i8*, i8*, i64)*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
