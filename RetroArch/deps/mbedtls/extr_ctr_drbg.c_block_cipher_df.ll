; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_block_cipher_df.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_block_cipher_df.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_CTR_DRBG_MAX_SEED_INPUT = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_BLOCKSIZE = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_SEEDLEN = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_KEYSIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_CTR_DRBG_KEYBITS = common dso_local global i32 0, align 4
@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @block_cipher_df to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_cipher_df(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %22 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 16
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYSIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %34 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %208

43:                                               ; preds = %3
  %44 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %45 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 16
  %48 = call i32 @memset(i8* %27, i32 0, i32 %47)
  %49 = call i32 @mbedtls_aes_init(i32* %15)
  %50 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %27, i64 %51
  store i8* %52, i8** %13, align 8
  %53 = load i64, i64* %7, align 8
  %54 = lshr i64 %53, 24
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i8
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %13, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i64, i64* %7, align 8
  %60 = lshr i64 %59, 16
  %61 = and i64 %60, 255
  %62 = trunc i64 %61 to i8
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %13, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i64, i64* %7, align 8
  %66 = lshr i64 %65, 8
  %67 = and i64 %66, 255
  %68 = trunc i64 %67 to i8
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %13, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i64, i64* %7, align 8
  %72 = and i64 %71, 255
  %73 = trunc i64 %72 to i8
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %13, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  store i8* %77, i8** %13, align 8
  %78 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i8* %82, i8* %83, i32 %85)
  %87 = load i8*, i8** %13, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 -128, i8* %89, align 1
  %90 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %91 = add nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  %95 = add i64 %94, 1
  store i64 %95, i64* %18, align 8
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %106, %43
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYSIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %16, align 4
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %33, i64 %104
  store i8 %102, i8* %105, align 1
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %96

109:                                              ; preds = %96
  %110 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYBITS, align 4
  %111 = call i32 @mbedtls_aes_setkey_enc(i32* %15, i8* %33, i32 %110)
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %174, %109
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %178

116:                                              ; preds = %112
  store i8* %27, i8** %13, align 8
  %117 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %118 = call i32 @memset(i8* %36, i32 0, i32 %117)
  %119 = load i64, i64* %18, align 8
  store i64 %119, i64* %19, align 8
  br label %120

120:                                              ; preds = %159, %116
  %121 = load i64, i64* %19, align 8
  %122 = icmp ugt i64 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %120
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %142, %123
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %36, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = xor i32 %139, %134
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %137, align 1
  br label %142

142:                                              ; preds = %128
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %124

145:                                              ; preds = %124
  %146 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %147 = load i8*, i8** %13, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %13, align 8
  %150 = load i64, i64* %19, align 8
  %151 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %152 = sext i32 %151 to i64
  %153 = icmp uge i64 %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %156 = sext i32 %155 to i64
  br label %159

157:                                              ; preds = %145
  %158 = load i64, i64* %19, align 8
  br label %159

159:                                              ; preds = %157, %154
  %160 = phi i64 [ %156, %154 ], [ %158, %157 ]
  %161 = load i64, i64* %19, align 8
  %162 = sub i64 %161, %160
  store i64 %162, i64* %19, align 8
  %163 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %164 = call i32 @mbedtls_aes_crypt_ecb(i32* %15, i32 %163, i8* %36, i8* %36)
  br label %120

165:                                              ; preds = %120
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %30, i64 %167
  %169 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %170 = call i32 @memcpy(i8* %168, i8* %36, i32 %169)
  %171 = getelementptr inbounds i8, i8* %27, i64 3
  %172 = load i8, i8* %171, align 1
  %173 = add i8 %172, 1
  store i8 %173, i8* %171, align 1
  br label %174

174:                                              ; preds = %165
  %175 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %17, align 4
  br label %112

178:                                              ; preds = %112
  %179 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYBITS, align 4
  %180 = call i32 @mbedtls_aes_setkey_enc(i32* %15, i8* %30, i32 %179)
  %181 = load i32, i32* @MBEDTLS_CTR_DRBG_KEYSIZE, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %30, i64 %182
  store i8* %183, i8** %14, align 8
  %184 = load i8*, i8** %5, align 8
  store i8* %184, i8** %13, align 8
  store i32 0, i32* %17, align 4
  br label %185

185:                                              ; preds = %202, %178
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* @MBEDTLS_CTR_DRBG_SEEDLEN, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %191 = load i8*, i8** %14, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = call i32 @mbedtls_aes_crypt_ecb(i32* %15, i32 %190, i8* %191, i8* %192)
  %194 = load i8*, i8** %13, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %197 = call i32 @memcpy(i8* %194, i8* %195, i32 %196)
  %198 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %199 = load i8*, i8** %13, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %13, align 8
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* @MBEDTLS_CTR_DRBG_BLOCKSIZE, align 4
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %17, align 4
  br label %185

206:                                              ; preds = %185
  %207 = call i32 @mbedtls_aes_free(i32* %15)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %208

208:                                              ; preds = %206, %41
  %209 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_aes_init(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @mbedtls_aes_setkey_enc(i32*, i8*, i32) #2

declare dso_local i32 @mbedtls_aes_crypt_ecb(i32*, i32, i8*, i8*) #2

declare dso_local i32 @mbedtls_aes_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
