; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smtp-multi.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smtp-multi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.curl_slist = type { i32 }
%struct.upload_status = type { i64 }

@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smtp://mail.example.com\00", align 1
@CURLOPT_MAIL_FROM = common dso_local global i32 0, align 4
@FROM = common dso_local global i64 0, align 8
@TO = common dso_local global i32 0, align 4
@CC = common dso_local global i32 0, align 4
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@payload_source = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8
@MULTI_PERFORM_HANG_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"ABORTING: Since it seems that we would have run forever.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca %struct.upload_status, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %6, align 8
  %19 = getelementptr inbounds %struct.upload_status, %struct.upload_status* %7, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %21 = call i32 @curl_global_init(i32 %20)
  %22 = call i32* (...) @curl_easy_init()
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %141

26:                                               ; preds = %0
  %27 = call i32* (...) @curl_multi_init()
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 2, i32* %1, align 4
  br label %141

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @CURLOPT_URL, align 4
  %34 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @CURLOPT_MAIL_FROM, align 4
  %37 = load i64, i64* @FROM, align 8
  %38 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %35, i32 %36, i64 %37)
  %39 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %40 = load i32, i32* @TO, align 4
  %41 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %39, i32 %40)
  store %struct.curl_slist* %41, %struct.curl_slist** %6, align 8
  %42 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %43 = load i32, i32* @CC, align 4
  %44 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %42, i32 %43)
  store %struct.curl_slist* %44, %struct.curl_slist** %6, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %47 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %45, i32 %46, %struct.curl_slist* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %51 = load i64, i64* @payload_source, align 8
  %52 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %49, i32 %50, i64 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @CURLOPT_READDATA, align 4
  %55 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %53, i32 %54, %struct.upload_status* %7)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %58 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %56, i32 %57, i64 1)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @curl_multi_add_handle(i32* %59, i32* %60)
  call void (%struct.timeval*, ...) @tvnow(%struct.timeval* sret %8)
  %62 = bitcast %struct.timeval* %5 to i8*
  %63 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @curl_multi_perform(i32* %64, i32* %4)
  br label %66

66:                                               ; preds = %129, %31
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %130

69:                                               ; preds = %66
  store i32 -1, i32* %13, align 4
  store i64 -1, i64* %16, align 8
  %70 = call i32 @FD_ZERO(i32* %10)
  %71 = call i32 @FD_ZERO(i32* %11)
  %72 = call i32 @FD_ZERO(i32* %12)
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @curl_multi_timeout(i32* %75, i64* %16)
  %77 = load i64, i64* %16, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %69
  %80 = load i64, i64* %16, align 8
  %81 = sdiv i64 %80, 1000
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %94

89:                                               ; preds = %79
  %90 = load i64, i64* %16, align 8
  %91 = srem i64 %90, 1000
  %92 = mul nsw i64 %91, 1000
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %87
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i32*, i32** %3, align 8
  %97 = call i64 @curl_multi_fdset(i32* %96, i32* %10, i32* %11, i32* %12, i32* %13)
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* @CURLM_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = load i64, i64* %15, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  br label %130

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = bitcast %struct.timeval* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %110 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %17)
  store i32 %110, i32* %14, align 4
  br label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @select(i32 %113, i32* %10, i32* %11, i32* %12, %struct.timeval* %9)
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %111, %108
  call void (%struct.timeval*, ...) @tvnow(%struct.timeval* sret %18)
  %116 = call i64 @tvdiff(%struct.timeval* byval(%struct.timeval) align 8 %18, %struct.timeval* byval(%struct.timeval) align 8 %5)
  %117 = load i64, i64* @MULTI_PERFORM_HANG_TIMEOUT, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %130

122:                                              ; preds = %115
  %123 = load i32, i32* %14, align 4
  switch i32 %123, label %126 [
    i32 -1, label %124
    i32 0, label %125
  ]

124:                                              ; preds = %122
  br label %129

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %122, %125
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @curl_multi_perform(i32* %127, i32* %4)
  br label %129

129:                                              ; preds = %126, %124
  br label %66

130:                                              ; preds = %119, %101, %66
  %131 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %132 = call i32 @curl_slist_free_all(%struct.curl_slist* %131)
  %133 = load i32*, i32** %3, align 8
  %134 = load i32*, i32** %2, align 8
  %135 = call i32 @curl_multi_remove_handle(i32* %133, i32* %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @curl_multi_cleanup(i32* %136)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @curl_easy_cleanup(i32* %138)
  %140 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %1, align 4
  br label %141

141:                                              ; preds = %130, %30, %25
  %142 = load i32, i32* %1, align 4
  ret i32 %142
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32* @curl_multi_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #1

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

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

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
