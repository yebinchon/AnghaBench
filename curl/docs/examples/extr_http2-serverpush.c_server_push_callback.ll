; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-serverpush.c_server_push_callback.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-serverpush.c_server_push_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_pushheaders = type { i32 }

@server_push_callback.count = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"push%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to create output file for push\0A\00", align 1
@CURL_PUSH_DENY = common dso_local global i32 0, align 4
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"**** push callback approves stream %u, got %lu headers!\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"**** header %lu: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c":path\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"**** The PATH is %s\0A\00", align 1
@CURL_PUSH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, %struct.curl_pushheaders*, i8*)* @server_push_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_push_callback(i32* %0, i32* %1, i64 %2, %struct.curl_pushheaders* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.curl_pushheaders*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [128 x i8], align 16
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.curl_pushheaders* %3, %struct.curl_pushheaders** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %21 = load i32, i32* @server_push_callback.count, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* @server_push_callback.count, align 4
  %23 = call i32 @snprintf(i8* %20, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @CURL_PUSH_DENY, align 4
  store i32 %31, i32* %6, align 4
  br label %70

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = call i32 @curl_easy_setopt(i32* %33, i32 %34, i32* %35)
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* @server_push_callback.count, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %38, i64 %39)
  store i64 0, i64* %13, align 8
  br label %41

41:                                               ; preds = %53, %32
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.curl_pushheaders*, %struct.curl_pushheaders** %10, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i8* @curl_pushheader_bynum(%struct.curl_pushheaders* %46, i64 %47)
  store i8* %48, i8** %12, align 8
  %49 = load i32, i32* @stderr, align 4
  %50 = load i64, i64* %13, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %50, i8* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.curl_pushheaders*, %struct.curl_pushheaders** %10, align 8
  %58 = call i8* @curl_pushheader_byname(%struct.curl_pushheaders* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CURL_PUSH_OK, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %28
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i32*) #1

declare dso_local i8* @curl_pushheader_bynum(%struct.curl_pushheaders*, i64) #1

declare dso_local i8* @curl_pushheader_byname(%struct.curl_pushheaders*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
