; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib557.c_test_float_formatting.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib557.c_test_float_formatting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"9.000000\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"9.1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"9.10\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%0f\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"9.100000\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%10f\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"  9.100000\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%10.3f\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"     9.100\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%-10.3f\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"9.100     \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"9.123     \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%.-2f\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%*f\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"9.298765\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"9.298760\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"9.29877\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"9.2988\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"9.299\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"9.30\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"9.3\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"%10000.10000f\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"%240.10000f\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [326 x i8] c"                                                                                                                                                                                                                                                                                                                             9.100000\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"%100000f\00", align 1
@MAXIMIZE = common dso_local global double 0.000000e+00, align 8
@.str.31 = private unnamed_addr constant [29 x i8] c"All float strings tests OK!\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"test_float_formatting Failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_float_formatting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_float_formatting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %4 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %3, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double 9.000000e+00)
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %6 = call i64 @string_check(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %12 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %11, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double 9.100000e+00)
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %14 = call i64 @string_check(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %1, align 4
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %20 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %19, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double 9.100000e+00)
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %22 = call i64 @string_check(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %1, align 4
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %28 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %27, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), double 9.100000e+00)
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %30 = call i64 @string_check(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %1, align 4
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %36 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %35, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), double 9.100000e+00)
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %38 = call i64 @string_check(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %1, align 4
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %44 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %43, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double 9.100000e+00)
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %46 = call i64 @string_check(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %1, align 4
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %52 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %51, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), double 9.100000e+00)
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %54 = call i64 @string_check(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %1, align 4
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %60 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %59, i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), double 9.100000e+00)
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %62 = call i64 @string_check(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %1, align 4
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %68 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %67, i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), double 0x40223F359FF4FD6D)
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %70 = call i64 @string_check(i8* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %1, align 4
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %76 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %75, i32 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double 9.100000e+00)
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %78 = call i64 @string_check(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %1, align 4
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %84 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %83, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double 1.000000e+01, double 9.100000e+00)
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %86 = call i64 @string_check(i8* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %1, align 4
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %92 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %91, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double 3.000000e+00, double 9.100000e+00)
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %94 = call i64 @string_check(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %1, align 4
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %100 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %99, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double 6.000000e+00, double 0x402298F7C74C5A4C)
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %102 = call i64 @string_check(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %1, align 4
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %108 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %107, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double 6.000000e+00, double 0x402298F7B9E060FE)
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %110 = call i64 @string_check(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %1, align 4
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %116 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %115, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double 6.000000e+00, double 9.298760e+00)
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %118 = call i64 @string_check(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %119 = load i32, i32* %1, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %1, align 4
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %124 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %123, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 6.000000e+00, double 0x402298F7C74C5A4C)
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %126 = call i64 @string_check(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %1, align 4
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %132 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %131, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 5.000000e+00, double 0x402298F7C74C5A4C)
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %134 = call i64 @string_check(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %1, align 4
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %140 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %139, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 4.000000e+00, double 0x402298F7C74C5A4C)
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %142 = call i64 @string_check(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %143 = load i32, i32* %1, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %1, align 4
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %148 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %147, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 3.000000e+00, double 0x402298F7C74C5A4C)
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %150 = call i64 @string_check(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %1, align 4
  %155 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %156 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %155, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 2.000000e+00, double 0x402298F7C74C5A4C)
  %157 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %158 = call i64 @string_check(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %1, align 4
  %163 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %164 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %163, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 1.000000e+00, double 0x402298F7C74C5A4C)
  %165 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %166 = call i64 @string_check(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %167 = load i32, i32* %1, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %1, align 4
  %171 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %172 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %171, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 0.000000e+00, double 0x402298F7C74C5A4C)
  %173 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %174 = call i64 @string_check(i8* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %1, align 4
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %180 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %179, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), double 0x41D0000000000000, double 0x402298F7C74C5A4C)
  %181 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %182 = call i64 @strlen_check(i8* %181, i32 325)
  %183 = load i32, i32* %1, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %1, align 4
  %187 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %188 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %187, i32 512, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), double 0x402298F7C74C5A4C)
  %189 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %190 = call i64 @strlen_check(i8* %189, i32 325)
  %191 = load i32, i32* %1, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %1, align 4
  %195 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %196 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %195, i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), double 0x455987BF7CB8EC68)
  %197 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %198 = call i64 @strlen_check(i8* %197, i32 325)
  %199 = load i32, i32* %1, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %1, align 4
  %203 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %204 = load i32, i32* @INT_MIN, align 4
  %205 = sitofp i32 %204 to double
  %206 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %203, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double %205, double 9.100000e+00)
  %207 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %208 = call i64 @string_check(i8* %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %1, align 4
  %213 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %214 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %213, i32 512, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), double 0x41D0000000000000, double 9.100000e+00)
  %215 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %216 = call i64 @string_check(i8* %215, i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.29, i64 0, i64 0))
  %217 = load i32, i32* %1, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %1, align 4
  %221 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %222 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %221, i32 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), double 9.100000e+00)
  %223 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %224 = call i64 @string_check(i8* %223, i8* getelementptr inbounds ([326 x i8], [326 x i8]* @.str.29, i64 0, i64 0))
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %1, align 4
  %229 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %230 = load double, double* @MAXIMIZE, align 8
  %231 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %229, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %230)
  %232 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %233 = call i64 @strlen_check(i8* %232, i32 317)
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %1, align 4
  %238 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %239 = load double, double* @MAXIMIZE, align 8
  %240 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %238, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %239)
  %241 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %242 = call i64 @strlen_check(i8* %241, i32 1)
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %1, align 4
  %247 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %248 = load double, double* @MAXIMIZE, align 8
  %249 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %247, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %248)
  %250 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %251 = call i64 @strlen_check(i8* %250, i32 2)
  %252 = load i32, i32* %1, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %1, align 4
  %256 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %257 = load double, double* @MAXIMIZE, align 8
  %258 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %256, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %257)
  %259 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %260 = call i64 @strlen_check(i8* %259, i32 3)
  %261 = load i32, i32* %1, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %1, align 4
  %265 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %266 = load double, double* @MAXIMIZE, align 8
  %267 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %265, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %266)
  %268 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %269 = call i64 @strlen_check(i8* %268, i32 4)
  %270 = load i32, i32* %1, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %269
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %1, align 4
  %274 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %275 = load double, double* @MAXIMIZE, align 8
  %276 = call i32 (i8*, i32, i8*, double, ...) @curl_msnprintf(i8* %274, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %275)
  %277 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %278 = call i64 @strlen_check(i8* %277, i32 5)
  %279 = load i32, i32* %1, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %278
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %1, align 4
  %283 = load i32, i32* %1, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %0
  %286 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  br label %289

287:                                              ; preds = %0
  %288 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %285
  %290 = load i32, i32* %1, align 4
  ret i32 %290
}

declare dso_local i32 @curl_msnprintf(i8*, i32, i8*, double, ...) #1

declare dso_local i64 @string_check(i8*, i8*) #1

declare dso_local i64 @strlen_check(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
