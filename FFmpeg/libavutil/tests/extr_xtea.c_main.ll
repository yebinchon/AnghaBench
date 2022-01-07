; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_xtea.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_xtea.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.src = internal constant [32 x i8] c"HelloWorldHelloWorldHelloWorld\00\00", align 16
@XTEA_NUM_TESTS = common dso_local global i32 0, align 4
@xtea_test_key = common dso_local global i8** null, align 8
@xtea_test_pt = common dso_local global i8** null, align 8
@xtea_test_ct = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HALLO123\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"CBC decryption\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CBC inplace decryption\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Test encryption/decryption success.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %9 = call i32* (...) @av_xtea_alloc()
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %153

13:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %146, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XTEA_NUM_TESTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %149

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = load i8**, i8*** @xtea_test_key, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @av_xtea_init(i32* %19, i8* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %28 = load i8**, i8*** @xtea_test_pt, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** @xtea_test_ct, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @test_xtea(i32* %26, i8* %27, i8* %32, i8* %37, i32 1, i8* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 (i32*, i8*, i8*, i32, i8*, i32)* @av_xtea_crypt)
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %41 = load i8**, i8*** @xtea_test_ct, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** @xtea_test_pt, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @test_xtea(i32* %39, i8* %40, i8* %45, i8* %50, i32 1, i8* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 (i32*, i8*, i8*, i32, i8*, i32)* @av_xtea_crypt)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %71, %18
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 4, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 %58
  %60 = load i8**, i8*** @xtea_test_key, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 4, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = call i32 @AV_RB32(i8* %68)
  %70 = call i32 @AV_WL32(i8* %59, i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %77 = call i32 @av_xtea_le_init(i32* %75, i8* %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %112, %74
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 4, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %84
  %86 = load i8**, i8*** @xtea_test_ct, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 4, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = call i32 @AV_RB32(i8* %94)
  %96 = call i32 @AV_WL32(i8* %85, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 4, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %99
  %101 = load i8**, i8*** @xtea_test_pt, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = mul nsw i32 4, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = call i32 @AV_RB32(i8* %109)
  %111 = call i32 @AV_WL32(i8* %100, i32 %110)
  br label %112

112:                                              ; preds = %81
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %78

115:                                              ; preds = %78
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %120 = call i32 @test_xtea(i32* %116, i8* %117, i8* %118, i8* %119, i32 1, i8* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 (i32*, i8*, i8*, i32, i8*, i32)* @av_xtea_le_crypt)
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %125 = call i32 @test_xtea(i32* %121, i8* %122, i8* %123, i8* %124, i32 1, i8* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 (i32*, i8*, i8*, i32, i8*, i32)* @av_xtea_le_crypt)
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %127 = call i32 @memcpy(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %131 = call i32 @av_xtea_crypt(i32* %128, i8* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.src, i64 0, i64 0), i32 4, i8* %130, i32 0)
  %132 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %133 = call i32 @memcpy(i8* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %137 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %138 = call i32 @test_xtea(i32* %134, i8* %135, i8* %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.src, i64 0, i64 0), i32 4, i8* %137, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 (i32*, i8*, i8*, i32, i8*, i32)* @av_xtea_crypt)
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %140 = call i32 @memcpy(i8* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %145 = call i32 @test_xtea(i32* %141, i8* %142, i8* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @main.src, i64 0, i64 0), i32 4, i8* %144, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 (i32*, i8*, i8*, i32, i8*, i32)* @av_xtea_crypt)
  br label %146

146:                                              ; preds = %115
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %14

149:                                              ; preds = %14
  %150 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @av_free(i32* %151)
  store i32 0, i32* %1, align 4
  br label %153

153:                                              ; preds = %149, %12
  %154 = load i32, i32* %1, align 4
  ret i32 %154
}

declare dso_local i32* @av_xtea_alloc(...) #1

declare dso_local i32 @av_xtea_init(i32*, i8*) #1

declare dso_local i32 @test_xtea(i32*, i8*, i8*, i8*, i32, i8*, i32, i8*, i32 (i32*, i8*, i8*, i32, i8*, i32)*) #1

declare dso_local i32 @av_xtea_crypt(i32*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @AV_WL32(i8*, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @av_xtea_le_init(i32*, i8*) #1

declare dso_local i32 @av_xtea_le_crypt(i32*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
