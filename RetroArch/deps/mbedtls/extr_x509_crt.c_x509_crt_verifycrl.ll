; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_verifycrl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_crt_verifycrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, i32, i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCRL_BAD_MD = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCRL_BAD_PK = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCRL_NOT_TRUSTED = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_BAD_KEY = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCRL_EXPIRED = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCRL_FUTURE = common dso_local global i32 0, align 4
@MBEDTLS_X509_BADCERT_REVOKED = common dso_local global i32 0, align 4
@MBEDTLS_X509_KU_CRL_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @x509_crt_verifycrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_verifycrl(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %178

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %172, %57, %23
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = icmp ne %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %176

27:                                               ; preds = %24
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %57, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @memcmp(i32 %46, i32 %50, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42, %32, %27
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %8, align 8
  br label %24

61:                                               ; preds = %42
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @x509_profile_check_md_alg(i32* %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @MBEDTLS_X509_BADCRL_BAD_MD, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @x509_profile_check_pk_alg(i32* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @MBEDTLS_X509_BADCRL_BAD_PK, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @mbedtls_md_info_from_type(i32 %86)
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @MBEDTLS_X509_BADCRL_NOT_TRUSTED, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %176

94:                                               ; preds = %83
  %95 = load i32*, i32** %13, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mbedtls_md(i32* %95, i32 %99, i32 %103, i8* %18)
  %105 = load i32*, i32** %9, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = call i64 @x509_profile_check_key(i32* %105, i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %94
  %114 = load i32, i32* @MBEDTLS_X509_BADCERT_BAD_KEY, align 4
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %113, %94
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @mbedtls_md_get_size(i32* %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @mbedtls_pk_verify_ext(i32 %120, i32 %123, i32* %125, i32 %128, i8* %18, i32 %130, i32 %134, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %117
  %142 = load i32, i32* @MBEDTLS_X509_BADCRL_NOT_TRUSTED, align 4
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %176

145:                                              ; preds = %117
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = call i64 @mbedtls_x509_time_is_past(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @MBEDTLS_X509_BADCRL_EXPIRED, align 4
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = call i64 @mbedtls_x509_time_is_future(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* @MBEDTLS_X509_BADCRL_FUTURE, align 4
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %159, %154
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = call i64 @mbedtls_x509_crt_is_revoked(%struct.TYPE_17__* %164, %struct.TYPE_18__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @MBEDTLS_X509_BADCERT_REVOKED, align 4
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  br label %176

172:                                              ; preds = %163
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  store %struct.TYPE_18__* %175, %struct.TYPE_18__** %8, align 8
  br label %24

176:                                              ; preds = %168, %141, %90, %24
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %178

178:                                              ; preds = %176, %21
  %179 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i32, i32, i64) #2

declare dso_local i64 @x509_profile_check_md_alg(i32*, i32) #2

declare dso_local i64 @x509_profile_check_pk_alg(i32*, i32) #2

declare dso_local i32* @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_md(i32*, i32, i32, i8*) #2

declare dso_local i64 @x509_profile_check_key(i32*, i32, i32*) #2

declare dso_local i64 @mbedtls_pk_verify_ext(i32, i32, i32*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @mbedtls_md_get_size(i32*) #2

declare dso_local i64 @mbedtls_x509_time_is_past(i32*) #2

declare dso_local i64 @mbedtls_x509_time_is_future(i32*) #2

declare dso_local i64 @mbedtls_x509_crt_is_revoked(%struct.TYPE_17__*, %struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
