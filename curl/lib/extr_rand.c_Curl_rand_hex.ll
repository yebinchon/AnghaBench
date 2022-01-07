; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_rand.c_Curl_rand_hex.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_rand.c_Curl_rand_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_rand_hex(%struct.Curl_easy* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %12, i64* %8, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %13, i8** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @DEBUGASSERT(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = udiv i64 %18, 2
  %20 = icmp uge i64 %19, 128
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, 1
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %3
  %26 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %26, i64* %4, align 8
  br label %72

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %32 = load i64, i64* %7, align 8
  %33 = udiv i64 %32, 2
  %34 = call i64 @Curl_rand(%struct.Curl_easy* %30, i8* %31, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %72

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %43, %39
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 240
  %49 = ashr i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %44, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %67, 2
  store i64 %68, i64* %7, align 8
  br label %40

69:                                               ; preds = %40
  %70 = load i8*, i8** %6, align 8
  store i8 0, i8* %70, align 1
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %69, %37, %25
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i64 @Curl_rand(%struct.Curl_easy*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
