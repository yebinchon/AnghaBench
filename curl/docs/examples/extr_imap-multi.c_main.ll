; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_imap-multi.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_imap-multi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }

@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLOPT_USERNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CURLOPT_PASSWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"imap://imap.example.com/INBOX/;UID=1\00", align 1
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@MULTI_PERFORM_HANG_TIMEOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"ABORTING: Since it seems that we would have run forever.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  %17 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %18 = call i32 @curl_global_init(i32 %17)
  %19 = call i32* (...) @curl_easy_init()
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %118

23:                                               ; preds = %0
  %24 = call i32* (...) @curl_multi_init()
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 2, i32* %1, align 4
  br label %118

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @CURLOPT_USERNAME, align 4
  %31 = call i32 @curl_easy_setopt(i32* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @CURLOPT_PASSWORD, align 4
  %34 = call i32 @curl_easy_setopt(i32* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @CURLOPT_URL, align 4
  %37 = call i32 @curl_easy_setopt(i32* %35, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @curl_multi_add_handle(i32* %38, i32* %39)
  call void (%struct.timeval*, ...) @tvnow(%struct.timeval* sret %6)
  %41 = bitcast %struct.timeval* %5 to i8*
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @curl_multi_perform(i32* %43, i32* %4)
  br label %45

45:                                               ; preds = %108, %28
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %45
  store i32 -1, i32* %11, align 4
  store i64 -1, i64* %14, align 8
  %49 = call i32 @FD_ZERO(i32* %8)
  %50 = call i32 @FD_ZERO(i32* %9)
  %51 = call i32 @FD_ZERO(i32* %10)
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @curl_multi_timeout(i32* %54, i64* %14)
  %56 = load i64, i64* %14, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %48
  %59 = load i64, i64* %14, align 8
  %60 = sdiv i64 %59, 1000
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %73

68:                                               ; preds = %58
  %69 = load i64, i64* %14, align 8
  %70 = srem i64 %69, 1000
  %71 = mul nsw i64 %70, 1000
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %66
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32*, i32** %3, align 8
  %76 = call i64 @curl_multi_fdset(i32* %75, i32* %8, i32* %9, i32* %10, i32* %11)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @CURLM_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @stderr, align 4
  %82 = load i64, i64* %13, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %109

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = bitcast %struct.timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %89 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %15)
  store i32 %89, i32* %12, align 4
  br label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @select(i32 %92, i32* %8, i32* %9, i32* %10, %struct.timeval* %7)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %87
  call void (%struct.timeval*, ...) @tvnow(%struct.timeval* sret %16)
  %95 = call i64 @tvdiff(%struct.timeval* byval(%struct.timeval) align 8 %16, %struct.timeval* byval(%struct.timeval) align 8 %5)
  %96 = load i64, i64* @MULTI_PERFORM_HANG_TIMEOUT, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %109

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  switch i32 %102, label %105 [
    i32 -1, label %103
    i32 0, label %104
  ]

103:                                              ; preds = %101
  br label %108

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %101, %104
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @curl_multi_perform(i32* %106, i32* %4)
  br label %108

108:                                              ; preds = %105, %103
  br label %45

109:                                              ; preds = %98, %80, %45
  %110 = load i32*, i32** %3, align 8
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @curl_multi_remove_handle(i32* %110, i32* %111)
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @curl_multi_cleanup(i32* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @curl_easy_cleanup(i32* %115)
  %117 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %109, %27, %22
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32*) #1

declare dso_local void @tvnow(%struct.timeval* sret, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @tvdiff(%struct.timeval* byval(%struct.timeval) align 8, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
