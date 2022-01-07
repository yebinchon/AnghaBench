; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_rtsp.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_rtsp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [38 x i8] c"RTP/AVP;unicast;client_port=1234-1235\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0.000-\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"\0ARTSP request %s\0A\00", align 1
@VERSION_STR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"    Project web site: https://github.com/BackupGGCode/rtsprequest\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"    Requires curl V7.20 or greater\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Usage:   %s url [transport]\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"         url of video server\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"         transport (optional) specifier for media stream protocol\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"         default transport: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Example: %s rtsp://192.168.0.2/media/video1\0A\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@CURLVERSION_NOW = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"    curl V%s loaded\0A\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Playing video, press any key to stop ...\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"curl_global_init(%s) failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"CURL_GLOBAL_ALL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %17 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %17, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %18 = load i8*, i8** @VERSION_STR, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %59

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strrchr(i8* %30, i8 signext 47)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 92)
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %9, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %58, i32* %8, align 4
  br label %180

59:                                               ; preds = %24, %2
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %64, 32
  %66 = call i8* @malloc(i64 %65)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 32
  %70 = call i8* @malloc(i64 %69)
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = add nsw i64 %72, 32
  %74 = call i8* @malloc(i64 %73)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = add nsw i64 %78, 32
  %80 = call i32 @get_sdp_filename(i8* %75, i8* %76, i64 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %87

83:                                               ; preds = %59
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %6, align 8
  br label %87

87:                                               ; preds = %83, %59
  %88 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %89 = call i64 @curl_global_init(i32 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* @CURLE_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %169

93:                                               ; preds = %87
  %94 = load i32, i32* @CURLVERSION_NOW, align 4
  %95 = call %struct.TYPE_3__* @curl_version_info(i32 %94)
  store %struct.TYPE_3__* %95, %struct.TYPE_3__** %15, align 8
  %96 = load i32, i32* @stderr, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %99)
  %101 = call i32* (...) @curl_easy_init()
  store i32* %101, i32** %16, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %164

104:                                              ; preds = %93
  %105 = load i32*, i32** %16, align 8
  %106 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %107 = call i32 (i32*, i32, ...) @my_curl_easy_setopt(i32* %105, i32 %106, i64 0)
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %110 = call i32 (i32*, i32, ...) @my_curl_easy_setopt(i32* %108, i32 %109, i64 1)
  %111 = load i32*, i32** %16, align 8
  %112 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %113 = load i8*, i8** @stdout, align 8
  %114 = call i32 (i32*, i32, ...) @my_curl_easy_setopt(i32* %111, i32 %112, i8* %113)
  %115 = load i32*, i32** %16, align 8
  %116 = load i32, i32* @CURLOPT_URL, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 (i32*, i32, ...) @my_curl_easy_setopt(i32* %115, i32 %116, i8* %117)
  %119 = load i8*, i8** %11, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 32
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %119, i64 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %123)
  %125 = load i32*, i32** %16, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @rtsp_options(i32* %125, i8* %126)
  %128 = load i32*, i32** %16, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @rtsp_describe(i32* %128, i8* %129, i8* %130)
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @get_media_control_attribute(i8* %132, i8* %133)
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = call i64 @strlen(i8* %136)
  %138 = add nsw i64 %137, 32
  %139 = load i8*, i8** %10, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %135, i64 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %139, i8* %140)
  %142 = load i32*, i32** %16, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @rtsp_setup(i32* %142, i8* %143, i8* %144)
  %146 = load i8*, i8** %11, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = call i64 @strlen(i8* %147)
  %149 = add nsw i64 %148, 32
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %146, i64 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %150)
  %152 = load i32*, i32** %16, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @rtsp_play(i32* %152, i8* %153, i8* %154)
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %157 = call i32 (...) @_getch()
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %159 = load i32*, i32** %16, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @rtsp_teardown(i32* %159, i8* %160)
  %162 = load i32*, i32** %16, align 8
  %163 = call i32 @curl_easy_cleanup(i32* %162)
  store i32* null, i32** %16, align 8
  br label %167

164:                                              ; preds = %93
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %104
  %168 = call i32 (...) @curl_global_cleanup()
  br label %173

169:                                              ; preds = %87
  %170 = load i32, i32* @stderr, align 4
  %171 = load i64, i64* %14, align 8
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %171)
  br label %173

173:                                              ; preds = %169, %167
  %174 = load i8*, i8** %13, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @free(i8* %178)
  br label %180

180:                                              ; preds = %173, %49
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @get_sdp_filename(i8*, i8*, i64) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local %struct.TYPE_3__* @curl_version_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @my_curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @rtsp_options(i32*, i8*) #1

declare dso_local i32 @rtsp_describe(i32*, i8*, i8*) #1

declare dso_local i32 @get_media_control_attribute(i8*, i8*) #1

declare dso_local i32 @rtsp_setup(i32*, i8*, i8*) #1

declare dso_local i32 @rtsp_play(i32*, i8*, i8*) #1

declare dso_local i32 @_getch(...) #1

declare dso_local i32 @rtsp_teardown(i32*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
