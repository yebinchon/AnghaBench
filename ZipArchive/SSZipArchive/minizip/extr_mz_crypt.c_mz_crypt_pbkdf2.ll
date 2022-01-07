; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt.c_mz_crypt_pbkdf2.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt.c_mz_crypt_pbkdf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_HASH_SHA1_SIZE = common dso_local global i32 0, align 4
@MZ_PARAM_ERROR = common dso_local global i64 0, align 8
@MZ_HASH_SHA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_crypt_pbkdf2(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %28 = load i64, i64* @MZ_OK, align 8
  store i64 %28, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %29 = load i32, i32* @MZ_HASH_SHA1_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %24, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %25, align 8
  %33 = load i32, i32* @MZ_HASH_SHA1_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %7
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %14, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38, %7
  %45 = load i64, i64* @MZ_PARAM_ERROR, align 8
  store i64 %45, i64* %8, align 8
  store i32 1, i32* %27, align 4
  br label %221

46:                                               ; preds = %41
  %47 = load i32*, i32** %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(i32* %47, i32 0, i32 %49)
  %51 = call i32 @mz_crypt_hmac_create(i8** %16)
  %52 = call i32 @mz_crypt_hmac_create(i8** %17)
  %53 = call i32 @mz_crypt_hmac_create(i8** %18)
  %54 = load i8*, i8** %16, align 8
  %55 = load i32, i32* @MZ_HASH_SHA1, align 4
  %56 = call i32 @mz_crypt_hmac_set_algorithm(i8* %54, i32 %55)
  %57 = load i8*, i8** %17, align 8
  %58 = load i32, i32* @MZ_HASH_SHA1, align 4
  %59 = call i32 @mz_crypt_hmac_set_algorithm(i8* %57, i32 %58)
  %60 = load i8*, i8** %18, align 8
  %61 = load i32, i32* @MZ_HASH_SHA1, align 4
  %62 = call i32 @mz_crypt_hmac_set_algorithm(i8* %60, i32 %61)
  %63 = load i8*, i8** %16, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @mz_crypt_hmac_init(i8* %63, i32* %64, i64 %65)
  store i64 %66, i64* %19, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* @MZ_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load i8*, i8** %17, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @mz_crypt_hmac_init(i8* %71, i32* %72, i64 %73)
  store i64 %74, i64* %19, align 8
  br label %75

75:                                               ; preds = %70, %46
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* @MZ_OK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8*, i8** %17, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @mz_crypt_hmac_update(i8* %80, i32* %81, i32 %83)
  store i64 %84, i64* %19, align 8
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i64, i64* %15, align 8
  %87 = trunc i64 %86 to i32
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @MZ_HASH_SHA1_SIZE, align 4
  %90 = sdiv i32 %88, %89
  %91 = add nsw i32 1, %90
  store i32 %91, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %92

92:                                               ; preds = %213, %85
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* @MZ_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp slt i32 %97, %98
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i1 [ false, %92 ], [ %99, %96 ]
  br i1 %101, label %102, label %216

102:                                              ; preds = %100
  %103 = mul nuw i64 4, %34
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(i32* %35, i32 0, i32 %104)
  %106 = load i8*, i8** %17, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = call i64 @mz_crypt_hmac_copy(i8* %106, i8* %107)
  store i64 %108, i64* %19, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* @MZ_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %216

113:                                              ; preds = %102
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, 1
  %116 = ashr i32 %115, 24
  %117 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %116, i32* %117, align 16
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 1
  %120 = ashr i32 %119, 16
  %121 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  %124 = ashr i32 %123, 8
  %125 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  %128 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 %127, i32* %128, align 4
  store i32 0, i32* %21, align 4
  store i32 4, i32* %22, align 4
  br label %129

129:                                              ; preds = %178, %113
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %13, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %181

134:                                              ; preds = %129
  %135 = load i8*, i8** %18, align 8
  %136 = load i32, i32* %22, align 4
  %137 = call i64 @mz_crypt_hmac_update(i8* %135, i32* %32, i32 %136)
  store i64 %137, i64* %19, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* @MZ_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i8*, i8** %18, align 8
  %143 = mul nuw i64 4, %30
  %144 = trunc i64 %143 to i32
  %145 = call i64 @mz_crypt_hmac_end(i8* %142, i32* %32, i32 %144)
  store i64 %145, i64* %19, align 8
  br label %146

146:                                              ; preds = %141, %134
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* @MZ_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %181

151:                                              ; preds = %146
  store i32 0, i32* %22, align 4
  br label %152

152:                                              ; preds = %166, %151
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* @MZ_HASH_SHA1_SIZE, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %32, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %35, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = xor i32 %164, %160
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %22, align 4
  br label %152

169:                                              ; preds = %152
  %170 = load i8*, i8** %16, align 8
  %171 = load i8*, i8** %18, align 8
  %172 = call i64 @mz_crypt_hmac_copy(i8* %170, i8* %171)
  store i64 %172, i64* %19, align 8
  %173 = load i64, i64* %19, align 8
  %174 = load i64, i64* @MZ_OK, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %181

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %21, align 4
  br label %129

181:                                              ; preds = %176, %150, %129
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* @MZ_OK, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %216

186:                                              ; preds = %181
  store i32 0, i32* %21, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* @MZ_HASH_SHA1_SIZE, align 4
  %189 = mul nsw i32 %187, %188
  store i32 %189, i32* %22, align 4
  br label %190

190:                                              ; preds = %201, %186
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* @MZ_HASH_SHA1_SIZE, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i32, i32* %22, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %15, align 8
  %198 = icmp slt i64 %196, %197
  br label %199

199:                                              ; preds = %194, %190
  %200 = phi i1 [ false, %190 ], [ %198, %194 ]
  br i1 %200, label %201, label %212

201:                                              ; preds = %199
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %21, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %35, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %22, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 %206, i32* %211, align 4
  br label %190

212:                                              ; preds = %199
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %20, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %20, align 4
  br label %92

216:                                              ; preds = %185, %112, %100
  %217 = call i32 @mz_crypt_hmac_delete(i8** %18)
  %218 = call i32 @mz_crypt_hmac_delete(i8** %16)
  %219 = call i32 @mz_crypt_hmac_delete(i8** %17)
  %220 = load i64, i64* %19, align 8
  store i64 %220, i64* %8, align 8
  store i32 1, i32* %27, align 4
  br label %221

221:                                              ; preds = %216, %44
  %222 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i64, i64* %8, align 8
  ret i64 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @mz_crypt_hmac_create(i8**) #2

declare dso_local i32 @mz_crypt_hmac_set_algorithm(i8*, i32) #2

declare dso_local i64 @mz_crypt_hmac_init(i8*, i32*, i64) #2

declare dso_local i64 @mz_crypt_hmac_update(i8*, i32*, i32) #2

declare dso_local i64 @mz_crypt_hmac_copy(i8*, i8*) #2

declare dso_local i64 @mz_crypt_hmac_end(i8*, i32*, i32) #2

declare dso_local i32 @mz_crypt_hmac_delete(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
