; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_base64.c_test_encode_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_base64.c_test_encode_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ENCODED_SIZE = common dso_local global i32 0, align 4
@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed: cannot encode the input data\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Failed: encoded string differs from reference\0AEncoded:\0A%s\0AReference:\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed: cannot decode the encoded string\0AEncoded:\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed: cannot decode with minimal buffer\0AEncoded:\0A%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Failed: encoded/decoded data differs from original data\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed: decode to NULL buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed: error detection\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @test_encode_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_encode_decode(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @MAX_ENCODED_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MAX_DATA_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* @MAX_DATA_SIZE, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @MAX_ENCODED_SIZE, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @av_base64_encode(i8* %18, i32 %23, i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %18, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %38)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @av_base64_decode(i32* %21, i8* %18, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @av_base64_decode(i32* %21, i8* %18, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @memcmp(i32* %21, i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

61:                                               ; preds = %54
  %62 = call i32 @av_base64_decode(i32* null, i8* %18, i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

66:                                               ; preds = %61
  %67 = call i32 @strlen(i8* %18)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = call i8* @strchr(i8* %18, i8 signext 61)
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = call i32 @strlen(i8* %18)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %18, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  store i8* %77, i8** %14, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i8*, i8** %14, align 8
  store i8 37, i8* %79, align 1
  %80 = call i32 @av_base64_decode(i32* null, i8* %18, i32 0)
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %66
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %82, %64, %59, %52, %45, %37, %28
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_base64_encode(i8*, i32, i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @av_base64_decode(i32*, i8*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
