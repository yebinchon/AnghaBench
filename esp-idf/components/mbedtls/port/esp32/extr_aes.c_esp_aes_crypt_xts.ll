; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_xts.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_xts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH = common dso_local global i32 0, align 4
@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4
@MBEDTLS_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_xts(%struct.TYPE_3__* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca [16 x i8], align 16
  %19 = alloca [16 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %24 = load i64, i64* %10, align 8
  %25 = udiv i64 %24, 16
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %10, align 8
  %27 = urem i64 %26, 16
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %28, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH, align 4
  store i32 %31, i32* %7, align 4
  br label %232

32:                                               ; preds = %6
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %33, 16777216
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH, align 4
  store i32 %36, i32* %7, align 4
  br label %232

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %43 = call i32 @esp_aes_crypt_ecb(i32* %39, i32 %40, i8* %41, i8* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %232

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %123, %48
  %50 = load i64, i64* %15, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %15, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %131

53:                                               ; preds = %49
  %54 = load i64, i64* %16, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MBEDTLS_AES_DECRYPT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i64, i64* %15, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %66 = call i32 @memcpy(i8* %64, i8* %65, i32 16)
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %69 = call i32 @esp_gf128mul_x_ble(i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %63, %60, %56, %53
  store i64 0, i64* %20, align 8
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i64, i64* %20, align 8
  %73 = icmp ult i64 %72, 16
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %20, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i64, i64* %20, align 8
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %79, %83
  %85 = trunc i32 %84 to i8
  %86 = load i64, i64* %20, align 8
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %86
  store i8 %85, i8* %87, align 1
  br label %88

88:                                               ; preds = %74
  %89 = load i64, i64* %20, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %20, align 8
  br label %71

91:                                               ; preds = %71
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %97 = call i32 @esp_aes_crypt_ecb(i32* %93, i32 %94, i8* %95, i8* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %7, align 4
  br label %232

102:                                              ; preds = %91
  store i64 0, i64* %20, align 8
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i64, i64* %20, align 8
  %105 = icmp ult i64 %104, 16
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load i64, i64* %20, align 8
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i64, i64* %20, align 8
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = xor i32 %110, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %20, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 %116, i8* %119, align 1
  br label %120

120:                                              ; preds = %106
  %121 = load i64, i64* %20, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %20, align 8
  br label %103

123:                                              ; preds = %103
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %126 = call i32 @esp_gf128mul_x_ble(i8* %124, i8* %125)
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 16
  store i8* %128, i8** %13, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 16
  store i8* %130, i8** %12, align 8
  br label %49

131:                                              ; preds = %49
  %132 = load i64, i64* %16, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %231

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @MBEDTLS_AES_DECRYPT, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  br label %142

140:                                              ; preds = %134
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i8* [ %139, %138 ], [ %141, %140 ]
  store i8* %143, i8** %21, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 -16
  store i8* %145, i8** %23, align 8
  store i64 0, i64* %22, align 8
  br label %146

146:                                              ; preds = %172, %142
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %146
  %151 = load i8*, i8** %23, align 8
  %152 = load i64, i64* %22, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %13, align 8
  %156 = load i64, i64* %22, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8 %154, i8* %157, align 1
  %158 = load i8*, i8** %12, align 8
  %159 = load i64, i64* %22, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load i8*, i8** %21, align 8
  %164 = load i64, i64* %22, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = xor i32 %162, %167
  %169 = trunc i32 %168 to i8
  %170 = load i64, i64* %22, align 8
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %170
  store i8 %169, i8* %171, align 1
  br label %172

172:                                              ; preds = %150
  %173 = load i64, i64* %22, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %22, align 8
  br label %146

175:                                              ; preds = %146
  br label %176

176:                                              ; preds = %194, %175
  %177 = load i64, i64* %22, align 8
  %178 = icmp ult i64 %177, 16
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = load i8*, i8** %23, align 8
  %181 = load i64, i64* %22, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8*, i8** %21, align 8
  %186 = load i64, i64* %22, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = xor i32 %184, %189
  %191 = trunc i32 %190 to i8
  %192 = load i64, i64* %22, align 8
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %192
  store i8 %191, i8* %193, align 1
  br label %194

194:                                              ; preds = %179
  %195 = load i64, i64* %22, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %22, align 8
  br label %176

197:                                              ; preds = %176
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %9, align 4
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %202 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %203 = call i32 @esp_aes_crypt_ecb(i32* %199, i32 %200, i8* %201, i8* %202)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %7, align 4
  br label %232

208:                                              ; preds = %197
  store i64 0, i64* %22, align 8
  br label %209

209:                                              ; preds = %227, %208
  %210 = load i64, i64* %22, align 8
  %211 = icmp ult i64 %210, 16
  br i1 %211, label %212, label %230

212:                                              ; preds = %209
  %213 = load i64, i64* %22, align 8
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8*, i8** %21, align 8
  %218 = load i64, i64* %22, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = xor i32 %216, %221
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %23, align 8
  %225 = load i64, i64* %22, align 8
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8 %223, i8* %226, align 1
  br label %227

227:                                              ; preds = %212
  %228 = load i64, i64* %22, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %22, align 8
  br label %209

230:                                              ; preds = %209
  br label %231

231:                                              ; preds = %230, %131
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %231, %206, %100, %46, %35, %30
  %233 = load i32, i32* %7, align 4
  ret i32 %233
}

declare dso_local i32 @esp_aes_crypt_ecb(i32*, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @esp_gf128mul_x_ble(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
