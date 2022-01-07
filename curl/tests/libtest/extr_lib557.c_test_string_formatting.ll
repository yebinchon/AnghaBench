; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib557.c_test_string_formatting.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib557.c_test_string_formatting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0*d%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"09foo\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%*.*s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"   fo\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%-10s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"foo       \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%10s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"       foo\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"All curl_mprintf() strings tests OK!\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Some curl_mprintf() string tests Failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_string_formatting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_string_formatting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %4 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %3, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2, i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %6 = call i64 @string_check(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %12 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %11, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %14 = call i64 @string_check(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %1, align 4
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %20 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %19, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %22 = call i64 @string_check(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %1, align 4
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %28 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %27, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %30 = call i64 @string_check(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %1, align 4
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %36 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %35, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %38 = call i64 @string_check(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %1, align 4
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %44 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %43, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %46 = call i64 @string_check(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %1, align 4
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %52 = call i32 (i8*, i32, i8*, ...) @curl_msnprintf(i8* %51, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -10, i32 -10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %54 = call i64 @string_check(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %0
  %62 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %65

63:                                               ; preds = %0
  %64 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @curl_msnprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @string_check(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
