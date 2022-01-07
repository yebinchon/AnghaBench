; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_parse_cookie.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_parse_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**)* @parse_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cookie(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tm, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tm, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @parse_set_cookie(i8* %17, i32** %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %133

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %24 = call %struct.TYPE_3__* @av_dict_get(i32* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %21
  %33 = call i32 @av_dict_free(i32** %8)
  store i32 -1, i32* %4, align 4
  br label %133

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = call %struct.TYPE_3__* @av_dict_get(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %9, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %106

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %38
  %44 = bitcast %struct.tm* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 4, i1 false)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @parse_set_cookie_expiry_time(i64 %47, %struct.tm* %13)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %105, label %50

50:                                               ; preds = %43
  %51 = call i32 @av_timegm(%struct.tm* %13)
  %52 = call i32 (...) @av_gettime()
  %53 = sdiv i32 %52, 1000000
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @av_dict_free(i32** %8)
  store i32 0, i32* %4, align 4
  br label %133

57:                                               ; preds = %50
  %58 = load i32**, i32*** %7, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call %struct.TYPE_3__* @av_dict_get(i32* %59, i8* %62, i32* null, i32 0)
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %14, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %104

66:                                               ; preds = %57
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  store i32* null, i32** %15, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @parse_set_cookie(i8* %72, i32** %15)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %102, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %15, align 8
  %77 = call %struct.TYPE_3__* @av_dict_get(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %14, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %79 = icmp ne %struct.TYPE_3__* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = bitcast %struct.tm* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %86, i8 0, i64 4, i1 false)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @parse_set_cookie_expiry_time(i64 %89, %struct.tm* %16)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %85
  %93 = call i32 @av_timegm(%struct.tm* %13)
  %94 = call i32 @av_timegm(%struct.tm* %16)
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = call i32 @av_dict_free(i32** %8)
  %98 = call i32 @av_dict_free(i32** %15)
  store i32 -1, i32* %4, align 4
  br label %133

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %85
  br label %101

101:                                              ; preds = %100, %80, %75
  br label %102

102:                                              ; preds = %101, %71
  %103 = call i32 @av_dict_free(i32** %15)
  br label %104

104:                                              ; preds = %102, %66, %57
  br label %105

105:                                              ; preds = %104, %43
  br label %106

106:                                              ; preds = %105, %38, %34
  %107 = call i32 @av_dict_free(i32** %8)
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext 61)
  store i8* %109, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %4, align 4
  br label %133

114:                                              ; preds = %106
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i8* @av_strndup(i8* %115, i32 %121)
  store i8* %122, i8** %12, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %4, align 4
  br label %133

127:                                              ; preds = %114
  %128 = load i32**, i32*** %7, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %132 = call i32 @av_dict_set(i32** %128, i8* %129, i8* %130, i32 %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %124, %111, %96, %55, %32, %20
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @parse_set_cookie(i8*, i32**) #1

declare dso_local %struct.TYPE_3__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @parse_set_cookie_expiry_time(i64, %struct.tm*) #1

declare dso_local i32 @av_timegm(%struct.tm*) #1

declare dso_local i32 @av_gettime(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strndup(i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
