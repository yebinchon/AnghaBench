; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_httpauth.c_ff_http_auth_create_response.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_httpauth.c_ff_http_auth_create_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HTTP_AUTH_BASIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Authorization: Basic \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@HTTP_AUTH_DIGEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_http_auth_create_response(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 58)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %4
  store i8* null, i8** %5, align 8
  br label %110

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HTTP_AUTH_BASIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @ff_urldecode(i8* %33)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %110

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @AV_BASE64_SIZE(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 30
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i8* @av_malloc(i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @av_free(i8* %49)
  store i8* null, i8** %5, align 8
  br label %110

51:                                               ; preds = %38
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @snprintf(i8* %52, i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @av_base64_encode(i8* %60, i32 %61, i8* %62, i32 %64)
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sub nsw i64 %68, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @av_strlcat(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @av_free(i8* %77)
  br label %108

79:                                               ; preds = %26
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HTTP_AUTH_DIGEST, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @ff_urldecode(i8* %86)
  store i8* %87, i8** %15, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i8* null, i8** %5, align 8
  br label %110

91:                                               ; preds = %85
  %92 = load i8*, i8** %15, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 58)
  store i8* %93, i8** %16, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i8*, i8** %16, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %16, align 8
  store i8 0, i8* %96, align 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i8* @make_digest_auth(%struct.TYPE_4__* %98, i8* %99, i8* %100, i8* %101, i8* %102)
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %95, %91
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @av_free(i8* %105)
  br label %107

107:                                              ; preds = %104, %79
  br label %108

108:                                              ; preds = %107, %51
  %109 = load i8*, i8** %10, align 8
  store i8* %109, i8** %5, align 8
  br label %110

110:                                              ; preds = %108, %90, %48, %37, %25
  %111 = load i8*, i8** %5, align 8
  ret i8* %111
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @ff_urldecode(i8*) #1

declare dso_local i32 @AV_BASE64_SIZE(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @av_base64_encode(i8*, i32, i8*, i32) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i8* @make_digest_auth(%struct.TYPE_4__*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
