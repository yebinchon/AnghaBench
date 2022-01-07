; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_encrypted_pms.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_encrypted_pms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32, i8*, i32)*, i32, i32 }

@MBEDTLS_PK_RSA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"got no RSA private key\00", align 1
@MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bad client key exchange message\00", align 1
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i64)* @ssl_parse_encrypted_pms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_encrypted_pms(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8], align 1
  %14 = alloca [48 x i8], align 16
  %15 = alloca [48 x i8], align 16
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call i32 @mbedtls_ssl_own_key(%struct.TYPE_8__* %20)
  %22 = call i64 @mbedtls_pk_get_len(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %12, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = call i32 @mbedtls_ssl_own_key(%struct.TYPE_8__* %30)
  %32 = load i32, i32* @MBEDTLS_PK_RSA, align 4
  %33 = call i32 @mbedtls_pk_can_do(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED, align 4
  store i32 %37, i32* %5, align 4
  br label %178

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE, align 4
  store i32 %46, i32* %5, align 4
  br label %178

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %64 = call i32 @mbedtls_ssl_write_version(i32 %52, i32 %57, i32 %62, i8* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [48 x i8], [48 x i8]* %14, i64 0, i64 0
  %76 = call i32 %69(i32 %74, i8* %75, i32 48)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %47
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %178

81:                                               ; preds = %47
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = call i32 @mbedtls_ssl_own_key(%struct.TYPE_8__* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mbedtls_pk_decrypt(i32 %83, i8* %84, i64 %85, i8* %86, i64* %18, i32 48, i32 (i32, i8*, i32)* %91, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %19, align 4
  %99 = load i64, i64* %18, align 8
  %100 = xor i64 %99, 48
  %101 = load i32, i32* %19, align 4
  %102 = zext i32 %101 to i64
  %103 = or i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %19, align 4
  %105 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %106 = load i8, i8* %105, align 16
  %107 = zext i8 %106 to i32
  %108 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = xor i32 %107, %110
  %112 = load i32, i32* %19, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %19, align 4
  %114 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = xor i32 %116, %119
  %121 = load i32, i32* %19, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %19, align 4
  %123 = load i64, i64* %9, align 8
  %124 = icmp ult i64 8, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %81
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 8, %126
  %128 = icmp ult i64 %127, 48
  br i1 %128, label %129, label %132

129:                                              ; preds = %125, %81
  %130 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %131, i32* %5, align 4
  br label %178

132:                                              ; preds = %125
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 48, i32* %136, align 8
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = sub i32 0, %138
  %140 = or i32 %137, %139
  %141 = lshr i32 %140, 31
  %142 = sub i32 0, %141
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %16, align 1
  store i64 0, i64* %17, align 8
  br label %144

144:                                              ; preds = %174, %132
  %145 = load i64, i64* %17, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %145, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %144
  %154 = load i8, i8* %16, align 1
  %155 = zext i8 %154 to i32
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds [48 x i8], [48 x i8]* %14, i64 0, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %155, %159
  %161 = load i8, i8* %16, align 1
  %162 = zext i8 %161 to i32
  %163 = xor i32 %162, -1
  %164 = load i64, i64* %17, align 8
  %165 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %163, %167
  %169 = or i32 %160, %168
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %12, align 8
  %172 = load i64, i64* %17, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8 %170, i8* %173, align 1
  br label %174

174:                                              ; preds = %153
  %175 = load i64, i64* %17, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %17, align 8
  br label %144

177:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %129, %79, %44, %35
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i64 @mbedtls_pk_get_len(i32) #1

declare dso_local i32 @mbedtls_ssl_own_key(%struct.TYPE_8__*) #1

declare dso_local i32 @mbedtls_pk_can_do(i32, i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_write_version(i32, i32, i32, i8*) #1

declare dso_local i32 @mbedtls_pk_decrypt(i32, i8*, i64, i8*, i64*, i32, i32 (i32, i8*, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
