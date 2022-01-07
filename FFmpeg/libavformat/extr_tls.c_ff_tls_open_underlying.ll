; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls.c_ff_tls_open_underlying.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls.c_ff_tls_open_underlying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.addrinfo = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"?listen=1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"httpproxy\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tls_open_underlying(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [200 x i8], align 16
  %13 = alloca [50 x i8], align 16
  %14 = alloca %struct.addrinfo, align 4
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [200 x i8], align 16
  %19 = alloca [200 x i8], align 16
  %20 = alloca [200 x i8], align 16
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %22 = bitcast [50 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 50, i1 false)
  %23 = bitcast %struct.addrinfo* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  store %struct.addrinfo* null, %struct.addrinfo** %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @set_options(%struct.TYPE_8__* %24, i8* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %33 = call i32 @snprintf(i8* %32, i32 50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @av_url_split(i32* null, i32 0, i8* null, i32 0, i8* %37, i32 8, i32* %10, i32* null, i32 0, i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 63)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  store i8* %45, i8** %11, align 8
  br label %55

46:                                               ; preds = %34
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @av_find_info_tag(i8* %47, i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %44
  %56 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i8*, ...) @ff_url_join(i8* %56, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* null, i8* %59, i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @AI_NUMERICHOST, align 4
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @getaddrinfo(i8* %67, i32* null, %struct.addrinfo* %14, %struct.addrinfo** %15)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %55
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %74 = call i32 @freeaddrinfo(%struct.addrinfo* %73)
  br label %75

75:                                               ; preds = %70, %55
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @av_strdup(i8* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = icmp ne i64 %84, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = call i32 @AVERROR(i32 %89)
  store i32 %90, i32* %5, align 4
  br label %144

91:                                               ; preds = %80, %75
  %92 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %92, i8** %16, align 8
  %93 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @ff_http_match_no_proxy(i8* %93, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %91
  %100 = load i8*, i8** %16, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i8*, i8** %16, align 8
  %104 = call i64 @av_strstart(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %102, %99, %91
  %107 = phi i1 [ false, %99 ], [ false, %91 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  %113 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @av_url_split(i32* null, i32 0, i8* %112, i32 200, i8* %113, i32 200, i32* %21, i32* null, i32 0, i8* %114)
  %116 = getelementptr inbounds [200 x i8], [200 x i8]* %20, i64 0, i64 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i8*, ...) @ff_url_join(i8* %116, i32 200, i8* null, i8* null, i8* %119, i32 %120, i8* null)
  %122 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %123 = getelementptr inbounds [200 x i8], [200 x i8]* %19, i64 0, i64 0
  %124 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %125 = load i32, i32* %21, align 4
  %126 = getelementptr inbounds [200 x i8], [200 x i8]* %20, i64 0, i64 0
  %127 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i8*, ...) @ff_url_join(i8* %122, i32 200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %123, i8* %124, i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %111, %106
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %132 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i32**, i32*** %9, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = call i32 @ffurl_open_whitelist(i32* %130, i8* %131, i32 %132, i32* %134, i32** %135, i32 %138, i32 %141, %struct.TYPE_7__* %142)
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %128, %88
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_options(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @av_url_split(i32*, i32, i8*, i32, i8*, i32, i32*, i32*, i32, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i8*, i8*, i32, i8*, ...) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i64 @av_strdup(i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @ff_http_match_no_proxy(i8*, i8*) #2

declare dso_local i64 @av_strstart(i8*, i8*, i32*) #2

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
