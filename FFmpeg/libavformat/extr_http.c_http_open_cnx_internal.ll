; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_open_cnx_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_http_open_cnx_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@MAX_URL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32**)* @http_open_cnx_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_open_cnx_internal(%struct.TYPE_6__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [10 x i8], align 1
  %13 = alloca [1024 x i8], align 16
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %25 = bitcast [1024 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 1024, i1 false)
  %26 = load i32, i32* @MAX_URL_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load i32, i32* @MAX_URL_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  store i32 0, i32* %22, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %23, align 8
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %39 = trunc i64 %27 to i32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @av_url_split(i8* %36, i32 10, i8* %37, i32 1024, i8* %38, i32 1024, i32* %19, i8* %29, i32 %39, i8* %42)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %46 = load i32, i32* %19, align 4
  %47 = call i32 (i8*, i32, i8*, i32*, i8*, i32, i8*, ...) @ff_url_join(i8* %44, i32 1024, i8* null, i32* null, i8* %45, i32 %46, i8* null)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  br label %58

56:                                               ; preds = %2
  %57 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i8* [ %55, %52 ], [ %57, %56 ]
  store i8* %59, i8** %7, align 8
  %60 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %62 = call i32 @ff_http_match_no_proxy(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @av_strstart(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %67, %64, %58
  %72 = phi i1 [ false, %64 ], [ false, %58 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %20, align 4
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %20, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 443, i32* %19, align 4
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %71
  %83 = load i32, i32* %19, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 80, i32* %19, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = getelementptr inbounds i8, i8* %29, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %93

92:                                               ; preds = %86
  store i8* %29, i8** %6, align 8
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %9, align 8
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = trunc i64 %31 to i32
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %101 = load i32, i32* %19, align 4
  %102 = call i32 (i8*, i32, i8*, i32*, i8*, i32, i8*, ...) @ff_url_join(i8* %32, i32 %98, i8* %99, i32* null, i8* %100, i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %29)
  store i8* %32, i8** %6, align 8
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @av_url_split(i8* null, i32 0, i8* %103, i32 1024, i8* %104, i32 1024, i32* %19, i8* null, i32 0, i8* %105)
  br label %107

107:                                              ; preds = %97, %93
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %111 = load i32, i32* %19, align 4
  %112 = call i32 (i8*, i32, i8*, i32*, i8*, i32, i8*, ...) @ff_url_join(i8* %108, i32 1024, i8* %109, i32* null, i8* %110, i32 %111, i8* null)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %107
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %121 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32**, i32*** %5, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = call i32 @ffurl_open_whitelist(i32* %119, i8* %120, i32 %121, i32* %123, i32** %124, i32 %127, i32 %130, %struct.TYPE_6__* %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %117
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %152

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %107
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %145 = call i32 @http_connect(%struct.TYPE_6__* %139, i8* %140, i8* %141, i8* %142, i8* %143, i8* %144, i32* %22)
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* %21, align 4
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %152

150:                                              ; preds = %138
  %151 = load i32, i32* %22, align 4
  store i32 %151, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %152

152:                                              ; preds = %150, %148, %135
  %153 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @av_url_split(i8*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i8*) #3

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i8*, ...) #3

declare dso_local i8* @getenv(i8*) #3

declare dso_local i32 @ff_http_match_no_proxy(i8*, i8*) #3

declare dso_local i64 @av_strstart(i8*, i8*, i32*) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_6__*) #3

declare dso_local i32 @http_connect(%struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
