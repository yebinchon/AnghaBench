; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_open.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_wzaes.c_mz_stream_wzaes_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i8*, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MZ_AES_KEY_LENGTH_MAX = common dso_local global i32 0, align 4
@MZ_AES_PW_VERIFY_SIZE = common dso_local global i32 0, align 4
@MZ_AES_SALT_LENGTH_MAX = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i64 0, align 8
@MZ_OPEN_ERROR = common dso_local global i32 0, align 4
@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_AES_PW_LENGTH_MAX = common dso_local global i64 0, align 8
@MZ_OPEN_MODE_WRITE = common dso_local global i32 0, align 4
@MZ_OPEN_MODE_READ = common dso_local global i32 0, align 4
@MZ_READ_ERROR = common dso_local global i32 0, align 4
@MZ_AES_KEYING_ITERATIONS = common dso_local global i32 0, align 4
@MZ_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MZ_HASH_SHA1 = common dso_local global i32 0, align 4
@MZ_WRITE_ERROR = common dso_local global i32 0, align 4
@MZ_PASSWORD_ERROR = common dso_local global i32 0, align 4
@MZ_SUPPORT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_wzaes_open(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load i32, i32* @MZ_AES_KEY_LENGTH_MAX, align 4
  %22 = mul nsw i32 2, %21
  %23 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %31 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load i32, i32* @MZ_AES_SALT_LENGTH_MAX, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %17, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @mz_stream_is_open(i32 %47)
  %49 = load i64, i64* @MZ_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @MZ_OPEN_ERROR, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

53:                                               ; preds = %3
  %54 = load i8*, i8** %17, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %17, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8*, i8** %17, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

65:                                               ; preds = %60
  %66 = load i8*, i8** %17, align 8
  %67 = call i64 @strlen(i8* %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @MZ_AES_PW_LENGTH_MAX, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

73:                                               ; preds = %65
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

85:                                               ; preds = %78
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @MZ_AES_SALT_LENGTH(i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @mz_crypt_rand(i32* %36, i64 %95)
  br label %117

97:                                               ; preds = %85
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @mz_stream_read(i32 %106, i32* %36, i32 %108)
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @MZ_READ_ERROR, align 4
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %94
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @MZ_AES_KEY_LENGTH(i32 %120)
  store i64 %121, i64* %11, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i32, i32* @MZ_AES_KEYING_ITERATIONS, align 4
  %127 = load i64, i64* %11, align 8
  %128 = mul nsw i64 2, %127
  %129 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @mz_crypt_pbkdf2(i32* %123, i64 %124, i32* %36, i64 %125, i32 %126, i32* %27, i32 %132)
  %134 = load i32, i32* @MZ_AES_BLOCK_SIZE, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 10
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memset(i32 %139, i32 0, i32 4)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @mz_crypt_aes_reset(i32 %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @mz_crypt_aes_set_mode(i32 %147, i32 %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @mz_crypt_aes_set_encrypt_key(i32 %154, i32* %27, i64 %155)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mz_crypt_hmac_reset(i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MZ_HASH_SHA1, align 4
  %165 = call i32 @mz_crypt_hmac_set_algorithm(i32 %163, i32 %164)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds i32, i32* %27, i64 %169
  %171 = load i64, i64* %11, align 8
  %172 = call i32 @mz_crypt_hmac_init(i32 %168, i32* %170, i64 %171)
  %173 = load i64, i64* %11, align 8
  %174 = mul nsw i64 2, %173
  %175 = getelementptr inbounds i32, i32* %27, i64 %174
  %176 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %177 = call i32 @memcpy(i32* %30, i32* %175, i32 %176)
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @MZ_OPEN_MODE_WRITE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %218

182:                                              ; preds = %117
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @mz_stream_write(i32 %186, i32* %36, i32 %188)
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %9, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i32, i32* @MZ_WRITE_ERROR, align 4
  store i32 %194, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

195:                                              ; preds = %182
  %196 = load i64, i64* %9, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, %196
  store i64 %200, i64* %198, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %206 = call i32 @mz_stream_write(i32 %204, i32* %30, i32 %205)
  %207 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %195
  %210 = load i32, i32* @MZ_WRITE_ERROR, align 4
  store i32 %210, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

211:                                              ; preds = %195
  %212 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, %213
  store i64 %217, i64* %215, align 8
  br label %253

218:                                              ; preds = %117
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @MZ_OPEN_MODE_READ, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %252

223:                                              ; preds = %218
  %224 = load i64, i64* %9, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, %224
  store i64 %228, i64* %226, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 6
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %234 = call i32 @mz_stream_read(i32 %232, i32* %33, i32 %233)
  %235 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %223
  %238 = load i32, i32* @MZ_READ_ERROR, align 4
  store i32 %238, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

239:                                              ; preds = %223
  %240 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %241 = sext i32 %240 to i64
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* @MZ_AES_PW_VERIFY_SIZE, align 4
  %247 = call i64 @memcmp(i32* %33, i32* %30, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %239
  %250 = load i32, i32* @MZ_PASSWORD_ERROR, align 4
  store i32 %250, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %218
  br label %253

253:                                              ; preds = %252, %211
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 5
  store i32 %254, i32* %256, align 4
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  store i32 1, i32* %258, align 8
  %259 = load i64, i64* @MZ_OK, align 8
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %261

261:                                              ; preds = %253, %249, %237, %209, %193, %113, %83, %71, %63, %51
  %262 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mz_stream_is_open(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @MZ_AES_SALT_LENGTH(i32) #2

declare dso_local i32 @mz_crypt_rand(i32*, i64) #2

declare dso_local i32 @mz_stream_read(i32, i32*, i32) #2

declare dso_local i64 @MZ_AES_KEY_LENGTH(i32) #2

declare dso_local i32 @mz_crypt_pbkdf2(i32*, i64, i32*, i64, i32, i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @mz_crypt_aes_reset(i32) #2

declare dso_local i32 @mz_crypt_aes_set_mode(i32, i32) #2

declare dso_local i32 @mz_crypt_aes_set_encrypt_key(i32, i32*, i64) #2

declare dso_local i32 @mz_crypt_hmac_reset(i32) #2

declare dso_local i32 @mz_crypt_hmac_set_algorithm(i32, i32) #2

declare dso_local i32 @mz_crypt_hmac_init(i32, i32*, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @mz_stream_write(i32, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
