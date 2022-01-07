; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-serverpush.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-serverpush.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.CURLMsg = type { i64, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@CURLMOPT_PIPELINING = common dso_local global i32 0, align 4
@CURLPIPE_MULTIPLEX = common dso_local global i32* null, align 8
@CURLMOPT_PUSHFUNCTION = common dso_local global i32 0, align 4
@server_push_callback = common dso_local global i32* null, align 8
@CURLMOPT_PUSHDATA = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@CURLMSG_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.CURLMsg*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  %18 = call i32* (...) @curl_multi_init()
  store i32* %18, i32** %3, align 8
  %19 = call i32* (...) @curl_easy_init()
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @setup(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %130

26:                                               ; preds = %0
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @curl_multi_add_handle(i32* %27, i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @CURLMOPT_PIPELINING, align 4
  %32 = load i32*, i32** @CURLPIPE_MULTIPLEX, align 8
  %33 = call i32 @curl_multi_setopt(i32* %30, i32 %31, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @CURLMOPT_PUSHFUNCTION, align 4
  %36 = load i32*, i32** @server_push_callback, align 8
  %37 = call i32 @curl_multi_setopt(i32* %34, i32 %35, i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @CURLMOPT_PUSHDATA, align 4
  %40 = call i32 @curl_multi_setopt(i32* %38, i32 %39, i32* %5)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @curl_multi_perform(i32* %41, i32* %4)
  br label %43

43:                                               ; preds = %124, %26
  store i32 -1, i32* %13, align 4
  store i64 -1, i64* %14, align 8
  %44 = call i32 @FD_ZERO(i32* %10)
  %45 = call i32 @FD_ZERO(i32* %11)
  %46 = call i32 @FD_ZERO(i32* %12)
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @curl_multi_timeout(i32* %49, i64* %14)
  %51 = load i64, i64* %14, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = load i64, i64* %14, align 8
  %55 = sdiv i64 %54, 1000
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %68

63:                                               ; preds = %53
  %64 = load i64, i64* %14, align 8
  %65 = srem i64 %64, 1000
  %66 = mul nsw i64 %65, 1000
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %61
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @curl_multi_fdset(i32* %70, i32* %10, i32* %11, i32* %12, i32* %13)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @CURLM_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @stderr, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %127

79:                                               ; preds = %69
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = bitcast %struct.timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %84 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %15)
  store i32 %84, i32* %8, align 4
  br label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @select(i32 %87, i32* %10, i32* %11, i32* %12, %struct.timeval* %7)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %93 [
    i32 -1, label %91
    i32 0, label %92
  ]

91:                                               ; preds = %89
  br label %96

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %92
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @curl_multi_perform(i32* %94, i32* %4)
  br label %96

96:                                               ; preds = %93, %91
  br label %97

97:                                               ; preds = %120, %96
  store i32 0, i32* %16, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = call %struct.CURLMsg* @curl_multi_info_read(i32* %98, i32* %16)
  store %struct.CURLMsg* %99, %struct.CURLMsg** %6, align 8
  %100 = load %struct.CURLMsg*, %struct.CURLMsg** %6, align 8
  %101 = icmp ne %struct.CURLMsg* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.CURLMsg*, %struct.CURLMsg** %6, align 8
  %104 = getelementptr inbounds %struct.CURLMsg, %struct.CURLMsg* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CURLMSG_DONE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.CURLMsg*, %struct.CURLMsg** %6, align 8
  %110 = getelementptr inbounds %struct.CURLMsg, %struct.CURLMsg* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %17, align 8
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @curl_multi_remove_handle(i32* %114, i32* %115)
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @curl_easy_cleanup(i32* %117)
  br label %119

119:                                              ; preds = %108, %102, %97
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.CURLMsg*, %struct.CURLMsg** %6, align 8
  %122 = icmp ne %struct.CURLMsg* %121, null
  br i1 %122, label %97, label %123

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %43, label %127

127:                                              ; preds = %124, %75
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @curl_multi_cleanup(i32* %128)
  store i32 0, i32* %1, align 4
  br label %130

130:                                              ; preds = %127, %23
  %131 = load i32, i32* %1, align 4
  ret i32 %131
}

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i64 @setup(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_setopt(i32*, i32, i32*) #1

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.CURLMsg* @curl_multi_info_read(i32*, i32*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
