; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_blowfish.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_blowfish.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_VARIABLE_KEY_TESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@plaintext = common dso_local global i64* null, align 8
@ciphertext = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Inplace encryption\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Inplace decryption\00", align 1
@IV = common dso_local global i64* null, align 8
@plaintext2 = common dso_local global i64* null, align 8
@ciphertext2 = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"CBC encryption\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"CBC decryption\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Inplace CBC encryption\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Inplace CBC decryption\00", align 1
@plaintext_l = common dso_local global i64* null, align 8
@plaintext_r = common dso_local global i64* null, align 8
@variable_key = common dso_local global i8** null, align 8
@ciphertext_l = common dso_local global i64* null, align 8
@ciphertext_r = common dso_local global i64* null, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Test encryption failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Test decryption failed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Test encryption/decryption success.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i64], align 16
  %6 = alloca [8 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @NUM_VARIABLE_KEY_TESTS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %14 = load i32, i32* @NUM_VARIABLE_KEY_TESTS, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %17 = call i32* (...) @av_blowfish_alloc()
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %175

21:                                               ; preds = %0
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @av_blowfish_init(i32* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 26)
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %26 = load i64*, i64** @plaintext, align 8
  %27 = load i64*, i64** @ciphertext, align 8
  %28 = call i32 @test_blowfish(i32* %24, i64* %25, i64* %26, i64* %27, i32 1, i64* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %31 = load i64*, i64** @ciphertext, align 8
  %32 = load i64*, i64** @plaintext, align 8
  %33 = call i32 @test_blowfish(i32* %29, i64* %30, i64* %31, i64* %32, i32 1, i64* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %37 = load i64*, i64** @ciphertext, align 8
  %38 = call i32 @test_blowfish(i32* %34, i64* %35, i64* %36, i64* %37, i32 1, i64* null, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %42 = load i64*, i64** @plaintext, align 8
  %43 = call i32 @test_blowfish(i32* %39, i64* %40, i64* %41, i64* %42, i32 1, i64* null, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %44 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %45 = load i64*, i64** @IV, align 8
  %46 = call i32 @memcpy(i64* %44, i64* %45, i32 8)
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %49 = load i64*, i64** @plaintext2, align 8
  %50 = load i64*, i64** @ciphertext2, align 8
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %52 = call i32 @test_blowfish(i32* %47, i64* %48, i64* %49, i64* %50, i32 2, i64* %51, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %53 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %54 = load i64*, i64** @IV, align 8
  %55 = call i32 @memcpy(i64* %53, i64* %54, i32 8)
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %58 = load i64*, i64** @ciphertext2, align 8
  %59 = load i64*, i64** @plaintext2, align 8
  %60 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %61 = call i32 @test_blowfish(i32* %56, i64* %57, i64* %58, i64* %59, i32 2, i64* %60, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %63 = load i64*, i64** @IV, align 8
  %64 = call i32 @memcpy(i64* %62, i64* %63, i32 8)
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %67 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %68 = load i64*, i64** @ciphertext2, align 8
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %70 = call i32 @test_blowfish(i32* %65, i64* %66, i64* %67, i64* %68, i32 2, i64* %69, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %72 = load i64*, i64** @IV, align 8
  %73 = call i32 @memcpy(i64* %71, i64* %72, i32 8)
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %76 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %77 = load i64*, i64** @plaintext2, align 8
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %79 = call i32 @test_blowfish(i32* %74, i64* %75, i64* %76, i64* %77, i32 2, i64* %78, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %80 = load i64*, i64** @plaintext_l, align 8
  %81 = load i32, i32* @NUM_VARIABLE_KEY_TESTS, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i64* %13, i64* %80, i32 %84)
  %86 = load i64*, i64** @plaintext_r, align 8
  %87 = load i32, i32* @NUM_VARIABLE_KEY_TESTS, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i64* %16, i64* %86, i32 %90)
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %168, %21
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @NUM_VARIABLE_KEY_TESTS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %171

96:                                               ; preds = %92
  %97 = load i32*, i32** %8, align 8
  %98 = load i8**, i8*** @variable_key, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @av_blowfish_init(i32* %97, i8* %102, i32 8)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %13, i64 %106
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %16, i64 %109
  %111 = call i32 @av_blowfish_crypt_ecb(i32* %104, i64* %107, i64* %110, i32 0)
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %13, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** @ciphertext_l, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %115, %120
  br i1 %121, label %133, label %122

122:                                              ; preds = %96
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %16, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** @ciphertext_r, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %126, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %122, %96
  %134 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 2, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %175

135:                                              ; preds = %122
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %13, i64 %138
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %16, i64 %141
  %143 = call i32 @av_blowfish_crypt_ecb(i32* %136, i64* %139, i64* %142, i32 1)
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %13, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** @plaintext_l, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %147, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %135
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %16, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** @plaintext_r, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %158, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %154, %135
  %166 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 3, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %175

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %92

171:                                              ; preds = %92
  %172 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @av_free(i32* %173)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %175

175:                                              ; preds = %171, %165, %133, %20
  %176 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %1, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @av_blowfish_alloc(...) #2

declare dso_local i32 @av_blowfish_init(i32*, i8*, i32) #2

declare dso_local i32 @test_blowfish(i32*, i64*, i64*, i64*, i32, i64*, i32, i8*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @av_blowfish_crypt_ecb(i32*, i64*, i64*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @av_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
