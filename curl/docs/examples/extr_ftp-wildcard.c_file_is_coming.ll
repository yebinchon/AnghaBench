; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftp-wildcard.c_file_is_coming.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftp-wildcard.c_file_is_coming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_fileinfo = type { i8*, i32, i32 }
%struct.callback_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%3d %40s %10luB \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" DIR\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FILE \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"OTHER\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SKIPPED\0A\00", align 1
@CURL_CHUNK_BGN_FUNC_SKIP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CURL_CHUNK_BGN_FUNC_FAIL = common dso_local global i64 0, align 8
@CURL_CHUNK_BGN_FUNC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.curl_fileinfo*, %struct.callback_data*, i32)* @file_is_coming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_is_coming(%struct.curl_fileinfo* %0, %struct.callback_data* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.curl_fileinfo*, align 8
  %6 = alloca %struct.callback_data*, align 8
  %7 = alloca i32, align 4
  store %struct.curl_fileinfo* %0, %struct.curl_fileinfo** %5, align 8
  store %struct.callback_data* %1, %struct.callback_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %5, align 8
  %10 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %5, align 8
  %13 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %11, i64 %15)
  %17 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %5, align 8
  %18 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %26

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %26

24:                                               ; preds = %3
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %22, %20
  %27 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %5, align 8
  %28 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %5, align 8
  %33 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 50
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i64, i64* @CURL_CHUNK_BGN_FUNC_SKIP, align 8
  store i64 %38, i64* %4, align 8
  br label %55

39:                                               ; preds = %31
  %40 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %5, align 8
  %41 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.callback_data*, %struct.callback_data** %6, align 8
  %45 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.callback_data*, %struct.callback_data** %6, align 8
  %47 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i64, i64* @CURL_CHUNK_BGN_FUNC_FAIL, align 8
  store i64 %51, i64* %4, align 8
  br label %55

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i64, i64* @CURL_CHUNK_BGN_FUNC_OK, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %50, %36
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
