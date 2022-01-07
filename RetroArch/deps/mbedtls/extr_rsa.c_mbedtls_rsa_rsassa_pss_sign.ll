; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_rsassa_pss_sign.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_mbedtls_rsa_rsassa_pss_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PRIVATE = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PKCS_V21 = common dso_local global i64 0, align 8
@MBEDTLS_ERR_RSA_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@MBEDTLS_ERR_RSA_RNG_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PUBLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pss_sign(%struct.TYPE_5__* %0, i32 (i8*, i8*, i64)* %1, i8* %2, i32 %3, i64 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32 (i8*, i8*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %30 = load i8*, i8** %17, align 8
  store i8* %30, i8** %19, align 8
  %31 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %20, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  store i32 0, i32* %24, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @MBEDTLS_RSA_PRIVATE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MBEDTLS_RSA_PKCS_V21, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %45, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

46:                                               ; preds = %38, %8
  %47 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %48 = icmp eq i32 (i8*, i8*, i64)* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %50, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @MBEDTLS_MD_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i64, i64* %14, align 8
  %60 = call i32* @mbedtls_md_info_from_type(i64 %59)
  store i32* %60, i32** %27, align 8
  %61 = load i32*, i32** %27, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %64, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

65:                                               ; preds = %58
  %66 = load i32*, i32** %27, align 8
  %67 = call i32 @mbedtls_md_get_size(i32* %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %65, %51
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32* @mbedtls_md_info_from_type(i64 %71)
  store i32* %72, i32** %27, align 8
  %73 = load i32*, i32** %27, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %76, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

77:                                               ; preds = %68
  %78 = load i32*, i32** %27, align 8
  %79 = call i32 @mbedtls_md_get_size(i32* %78)
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %23, align 4
  store i32 %80, i32* %22, align 4
  %81 = load i64, i64* %18, align 8
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %22, align 4
  %84 = add i32 %82, %83
  %85 = add i32 %84, 2
  %86 = zext i32 %85 to i64
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %89, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

90:                                               ; preds = %77
  %91 = load i8*, i8** %17, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i32 @memset(i8* %91, i32 0, i64 %92)
  %94 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i32, i32* %22, align 4
  %97 = zext i32 %96 to i64
  %98 = call i32 %94(i8* %95, i8* %34, i64 %97)
  store i32 %98, i32* %25, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @MBEDTLS_ERR_RSA_RNG_FAILED, align 4
  %102 = load i32, i32* %25, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

104:                                              ; preds = %90
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = call i32 @mbedtls_mpi_bitlen(i32* %106)
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %26, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i32, i32* %23, align 4
  %112 = mul i32 %111, 2
  %113 = zext i32 %112 to i64
  %114 = sub i64 %110, %113
  %115 = sub i64 %114, 2
  %116 = load i8*, i8** %19, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** %19, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %19, align 8
  store i8 1, i8* %118, align 1
  %120 = load i8*, i8** %19, align 8
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @memcpy(i8* %120, i8* %34, i32 %121)
  %123 = load i32, i32* %22, align 4
  %124 = load i8*, i8** %19, align 8
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %19, align 8
  %127 = call i32 @mbedtls_md_init(i32* %28)
  %128 = load i32*, i32** %27, align 8
  %129 = call i32 @mbedtls_md_setup(i32* %28, i32* %128, i32 0)
  store i32 %129, i32* %25, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %104
  %132 = call i32 @mbedtls_md_free(i32* %28)
  %133 = load i32, i32* %25, align 4
  store i32 %133, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

134:                                              ; preds = %104
  %135 = call i32 @mbedtls_md_starts(i32* %28)
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 @mbedtls_md_update(i32* %28, i8* %136, i32 8)
  %138 = load i8*, i8** %16, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @mbedtls_md_update(i32* %28, i8* %138, i32 %139)
  %141 = load i32, i32* %22, align 4
  %142 = call i32 @mbedtls_md_update(i32* %28, i8* %34, i32 %141)
  %143 = load i8*, i8** %19, align 8
  %144 = call i32 @mbedtls_md_finish(i32* %28, i8* %143)
  %145 = trunc i64 %32 to i32
  %146 = call i32 @mbedtls_zeroize(i8* %34, i32 %145)
  %147 = load i64, i64* %26, align 8
  %148 = urem i64 %147, 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %134
  store i32 1, i32* %24, align 4
  br label %151

151:                                              ; preds = %150, %134
  %152 = load i8*, i8** %17, align 8
  %153 = load i32, i32* %24, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i64, i64* %18, align 8
  %157 = load i32, i32* %23, align 4
  %158 = zext i32 %157 to i64
  %159 = sub i64 %156, %158
  %160 = sub i64 %159, 1
  %161 = load i32, i32* %24, align 4
  %162 = zext i32 %161 to i64
  %163 = sub i64 %160, %162
  %164 = load i8*, i8** %19, align 8
  %165 = load i32, i32* %23, align 4
  %166 = call i32 @mgf_mask(i8* %155, i64 %163, i8* %164, i32 %165, i32* %28)
  %167 = call i32 @mbedtls_md_free(i32* %28)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = call i32 @mbedtls_mpi_bitlen(i32* %169)
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %26, align 8
  %173 = load i64, i64* %18, align 8
  %174 = mul i64 %173, 8
  %175 = load i64, i64* %26, align 8
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = ashr i32 255, %177
  %179 = load i8*, i8** %17, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, %178
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %180, align 1
  %185 = load i32, i32* %23, align 4
  %186 = load i8*, i8** %19, align 8
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %19, align 8
  %189 = load i8*, i8** %19, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %19, align 8
  store i8 -68, i8* %189, align 1
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @MBEDTLS_RSA_PUBLIC, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %151
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %196 = load i8*, i8** %17, align 8
  %197 = load i8*, i8** %17, align 8
  %198 = call i32 @mbedtls_rsa_public(%struct.TYPE_5__* %195, i8* %196, i8* %197)
  br label %206

199:                                              ; preds = %151
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %201 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 @mbedtls_rsa_private(%struct.TYPE_5__* %200, i32 (i8*, i8*, i64)* %201, i8* %202, i8* %203, i8* %204)
  br label %206

206:                                              ; preds = %199, %194
  %207 = phi i32 [ %198, %194 ], [ %205, %199 ]
  store i32 %207, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %208

208:                                              ; preds = %206, %131, %100, %88, %75, %63, %49, %44
  %209 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @mbedtls_md_info_from_type(i64) #2

declare dso_local i32 @mbedtls_md_get_size(i32*) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i32 @mbedtls_mpi_bitlen(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @mbedtls_md_init(i32*) #2

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #2

declare dso_local i32 @mbedtls_md_free(i32*) #2

declare dso_local i32 @mbedtls_md_starts(i32*) #2

declare dso_local i32 @mbedtls_md_update(i32*, i8*, i32) #2

declare dso_local i32 @mbedtls_md_finish(i32*, i8*) #2

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #2

declare dso_local i32 @mgf_mask(i8*, i64, i8*, i32, i32*) #2

declare dso_local i32 @mbedtls_rsa_public(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @mbedtls_rsa_private(%struct.TYPE_5__*, i32 (i8*, i8*, i64)*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
