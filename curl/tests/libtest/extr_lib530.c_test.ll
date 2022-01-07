; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib530.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib530.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@NUM_HANDLES = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%04i\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLMOPT_PIPELINING = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Start at URL 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %16 = load i32, i32* @NUM_HANDLES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i32*, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %28, %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NUM_HANDLES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %19, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %20

31:                                               ; preds = %20
  %32 = call i32 (...) @start_test_timing()
  %33 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %34 = call i32 @global_init(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @multi_init(i32* %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %72, %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NUM_HANDLES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %19, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @easy_init(i32* %45)
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @msnprintf(i8* %47, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %50)
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 255
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %19, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @CURLOPT_URL, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %59 = call i32 (i32*, i32, ...) @easy_setopt(i32* %56, i32 %57, i8* %58)
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %19, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %65 = call i32 (i32*, i32, ...) @easy_setopt(i32* %63, i32 %64, i64 1)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %19, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @CURLOPT_HEADER, align 4
  %71 = call i32 (i32*, i32, ...) @easy_setopt(i32* %69, i32 %70, i64 1)
  br label %72

72:                                               ; preds = %41
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %37

75:                                               ; preds = %37
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32*, i32** %19, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @multi_add_handle(i32* %76, i32* %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @CURLMOPT_PIPELINING, align 4
  %85 = call i32 @multi_setopt(i32* %83, i32 %84, i64 1)
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %115, %75
  store i32 -99, i32* %15, align 4
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @multi_perform(i32* %91, i32* %6)
  %93 = call i32 (...) @abort_on_test_timeout()
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @NUM_HANDLES, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %125

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %106, %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @NUM_HANDLES, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32*, i32** %19, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @multi_add_handle(i32* %107, i32* %112)
  br label %102

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %88
  %116 = call i32 @FD_ZERO(i32* %12)
  %117 = call i32 @FD_ZERO(i32* %13)
  %118 = call i32 @FD_ZERO(i32* %14)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @multi_fdset(i32* %119, i32* %12, i32* %13, i32* %14, i32* %15)
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @select_test(i32 %122, i32* %12, i32* %13, i32* %14, %struct.timeval* %11)
  %124 = call i32 (...) @abort_on_test_timeout()
  br label %88

125:                                              ; preds = %100
  br label %126

126:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %143, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @NUM_HANDLES, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %19, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @curl_multi_remove_handle(i32* %132, i32* %136)
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %19, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @curl_easy_cleanup(i32* %141)
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %127

146:                                              ; preds = %127
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @curl_multi_cleanup(i32* %147)
  %149 = call i32 (...) @curl_global_cleanup()
  %150 = load i32, i32* %3, align 4
  %151 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %151)
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @start_test_timing(...) #2

declare dso_local i32 @global_init(i32) #2

declare dso_local i32 @multi_init(i32*) #2

declare dso_local i32 @easy_init(i32*) #2

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @easy_setopt(i32*, i32, ...) #2

declare dso_local i32 @multi_add_handle(i32*, i32*) #2

declare dso_local i32 @multi_setopt(i32*, i32, i64) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @multi_perform(i32*, i32*) #2

declare dso_local i32 @abort_on_test_timeout(...) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @multi_fdset(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #2

declare dso_local i32 @curl_easy_cleanup(i32*) #2

declare dso_local i32 @curl_multi_cleanup(i32*) #2

declare dso_local i32 @curl_global_cleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
