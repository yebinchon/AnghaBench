; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_mbedtls_pem_read_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_mbedtls_pem_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@MBEDTLS_ERR_PEM_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Proc-Type: 4,ENCRYPTED\00", align 1
@MBEDTLS_ERR_PEM_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_INVALID_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_BASE64_INVALID_CHARACTER = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_CIPHER_AES_128_CBC = common dso_local global i64 0, align 8
@MBEDTLS_CIPHER_AES_192_CBC = common dso_local global i64 0, align 8
@MBEDTLS_CIPHER_AES_256_CBC = common dso_local global i64 0, align 8
@MBEDTLS_CIPHER_DES_CBC = common dso_local global i64 0, align 8
@MBEDTLS_CIPHER_DES_EDE3_CBC = common dso_local global i64 0, align 8
@MBEDTLS_CIPHER_NONE = common dso_local global i64 0, align 8
@MBEDTLS_ERR_PEM_INVALID_ENC_IV = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_PASSWORD_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_PASSWORD_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PEM_UNKNOWN_ENC_ALG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pem_read_buffer(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @MBEDTLS_ERR_PEM_BAD_INPUT_DATA, align 4
  store i32 %28, i32* %8, align 4
  br label %192

29:                                               ; preds = %7
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @strstr(i8* %30, i8* %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT, align 4
  store i32 %37, i32* %8, align 4
  br label %192

38:                                               ; preds = %29
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @strstr(i8* %39, i8* %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %21, align 8
  %43 = load i8*, i8** %21, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %21, align 8
  %47 = load i8*, i8** %20, align 8
  %48 = icmp ule i8* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %38
  %50 = load i32, i32* @MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT, align 4
  store i32 %50, i32* %8, align 4
  br label %192

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i8*, i8** %20, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %20, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %20, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %20, align 8
  br label %64

64:                                               ; preds = %61, %51
  %65 = load i8*, i8** %20, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 13
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %20, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %20, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i8*, i8** %20, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %20, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %20, align 8
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT, align 4
  store i32 %81, i32* %8, align 4
  br label %192

82:                                               ; preds = %77
  %83 = load i8*, i8** %21, align 8
  store i8* %83, i8** %22, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = load i8*, i8** %22, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %22, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i8*, i8** %22, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %22, align 8
  br label %96

96:                                               ; preds = %93, %82
  %97 = load i8*, i8** %22, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 13
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %22, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %22, align 8
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i8*, i8** %22, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 10
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %22, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %22, align 8
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i8*, i8** %22, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = load i64*, i64** %15, align 8
  store i64 %117, i64* %118, align 8
  store i32 0, i32* %17, align 4
  %119 = load i8*, i8** %21, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = icmp sge i64 %123, 22
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = load i8*, i8** %20, align 8
  %127 = call i64 @memcmp(i8* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 22)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @MBEDTLS_ERR_PEM_FEATURE_UNAVAILABLE, align 4
  store i32 %130, i32* %8, align 4
  br label %192

131:                                              ; preds = %125, %112
  %132 = load i8*, i8** %20, align 8
  %133 = load i8*, i8** %21, align 8
  %134 = icmp uge i8* %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @MBEDTLS_ERR_PEM_INVALID_DATA, align 4
  store i32 %136, i32* %8, align 4
  br label %192

137:                                              ; preds = %131
  %138 = load i8*, i8** %20, align 8
  %139 = load i8*, i8** %21, align 8
  %140 = load i8*, i8** %20, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @mbedtls_base64_decode(i8* null, i64 0, i64* %18, i8* %138, i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* @MBEDTLS_ERR_BASE64_INVALID_CHARACTER, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %137
  %150 = load i32, i32* @MBEDTLS_ERR_PEM_INVALID_DATA, align 4
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %8, align 4
  br label %192

153:                                              ; preds = %137
  %154 = load i64, i64* %18, align 8
  %155 = call i64 @mbedtls_calloc(i32 1, i64 %154)
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %19, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* @MBEDTLS_ERR_PEM_ALLOC_FAILED, align 4
  store i32 %159, i32* %8, align 4
  br label %192

160:                                              ; preds = %153
  %161 = load i8*, i8** %19, align 8
  %162 = load i64, i64* %18, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = load i8*, i8** %21, align 8
  %165 = load i8*, i8** %20, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @mbedtls_base64_decode(i8* %161, i64 %162, i64* %18, i8* %163, i32 %169)
  store i32 %170, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %160
  %173 = load i8*, i8** %19, align 8
  %174 = call i32 @mbedtls_free(i8* %173)
  %175 = load i32, i32* @MBEDTLS_ERR_PEM_INVALID_DATA, align 4
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %8, align 4
  br label %192

178:                                              ; preds = %160
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %19, align 8
  %183 = call i32 @mbedtls_free(i8* %182)
  %184 = load i32, i32* @MBEDTLS_ERR_PEM_FEATURE_UNAVAILABLE, align 4
  store i32 %184, i32* %8, align 4
  br label %192

185:                                              ; preds = %178
  %186 = load i8*, i8** %19, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i64, i64* %18, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %185, %181, %172, %158, %149, %135, %129, %80, %49, %36, %27
  %193 = load i32, i32* %8, align 4
  ret i32 %193
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_base64_decode(i8*, i64, i64*, i8*, i32) #1

declare dso_local i64 @mbedtls_calloc(i32, i64) #1

declare dso_local i32 @mbedtls_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
