; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_httpauth.c_ff_http_auth_handle_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_httpauth.c_ff_http_auth_handle_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__, i64* }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Proxy-Authenticate\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Basic \00", align 1
@HTTP_AUTH_BASIC = common dso_local global i64 0, align 8
@handle_basic_params = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Digest \00", align 1
@HTTP_AUTH_DIGEST = common dso_local global i64 0, align 8
@handle_digest_params = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Authentication-Info\00", align 1
@handle_digest_update = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_http_auth_handle_header(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @av_strcasecmp(i8* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @av_strcasecmp(i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %85, label %15

15:                                               ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @av_stristart(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HTTP_AUTH_BASIC, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i64, i64* @HTTP_AUTH_BASIC, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* @handle_basic_params, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @ff_parse_key_value(i8* %35, i32 %37, %struct.TYPE_5__* %38)
  br label %84

40:                                               ; preds = %19, %15
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @av_stristart(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HTTP_AUTH_DIGEST, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load i64, i64* @HTTP_AUTH_DIGEST, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = call i32 @memset(%struct.TYPE_6__* %55, i32 0, i32 4)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* @handle_digest_params, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call i32 @ff_parse_key_value(i8* %63, i32 %65, %struct.TYPE_5__* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @choose_qop(i32 %71, i32 4)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @av_strcasecmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %50
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %50
  br label %83

83:                                               ; preds = %82, %44, %40
  br label %84

84:                                               ; preds = %83, %25
  br label %96

85:                                               ; preds = %11
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @av_strcasecmp(i8* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* @handle_digest_update, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = call i32 @ff_parse_key_value(i8* %90, i32 %92, %struct.TYPE_5__* %93)
  br label %95

95:                                               ; preds = %89, %85
  br label %96

96:                                               ; preds = %95, %84
  ret void
}

declare dso_local i32 @av_strcasecmp(i8*, i8*) #1

declare dso_local i64 @av_stristart(i8*, i8*, i8**) #1

declare dso_local i32 @ff_parse_key_value(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @choose_qop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
