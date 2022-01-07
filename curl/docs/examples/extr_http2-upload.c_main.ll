; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-upload.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-upload.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.input = type { i32 }

@NUM_HANDLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@CURLMOPT_PIPELINING = common dso_local global i32 0, align 4
@CURLPIPE_MULTIPLEX = common dso_local global i64 0, align 8
@CURLMOPT_MAX_HOST_CONNECTIONS = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
@__const.main.wait = private unnamed_addr constant %struct.timeval { i32 0, i64 100000, i32 0, i32 0 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i32, i32* @NUM_HANDLES, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca %struct.input, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %48

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @NUM_HANDLES, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %28
  store i32 3, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %43, %40
  br label %49

48:                                               ; preds = %2
  store i32 3, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = call i32* (...) @curl_multi_init()
  store i32* %50, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %69, %49
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.input, %struct.input* %25, i64 %57
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @setup(%struct.input* %58, i32 %59, i8* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.input, %struct.input* %25, i64 %64
  %66 = getelementptr inbounds %struct.input, %struct.input* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @curl_multi_add_handle(i32* %62, i32 %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @CURLMOPT_PIPELINING, align 4
  %75 = load i64, i64* @CURLPIPE_MULTIPLEX, align 8
  %76 = call i32 @curl_multi_setopt(i32* %73, i32 %74, i64 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @CURLMOPT_MAX_HOST_CONNECTIONS, align 4
  %79 = call i32 @curl_multi_setopt(i32* %77, i32 %78, i64 1)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @curl_multi_perform(i32* %80, i32* %10)
  br label %82

82:                                               ; preds = %138, %72
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %139

85:                                               ; preds = %82
  store i32 -1, i32* %19, align 4
  store i64 -1, i64* %20, align 8
  %86 = call i32 @FD_ZERO(i32* %16)
  %87 = call i32 @FD_ZERO(i32* %17)
  %88 = call i32 @FD_ZERO(i32* %18)
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @curl_multi_timeout(i32* %91, i64* %20)
  %93 = load i64, i64* %20, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %85
  %96 = load i64, i64* %20, align 8
  %97 = sdiv i64 %96, 1000
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %110

105:                                              ; preds = %95
  %106 = load i64, i64* %20, align 8
  %107 = srem i64 %106, 1000
  %108 = mul nsw i64 %107, 1000
  %109 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %103
  br label %111

111:                                              ; preds = %110, %85
  %112 = load i32*, i32** %8, align 8
  %113 = call i64 @curl_multi_fdset(i32* %112, i32* %16, i32* %17, i32* %18, i32* %19)
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* @CURLM_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @stderr, align 4
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  br label %139

121:                                              ; preds = %111
  %122 = load i32, i32* %19, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = bitcast %struct.timeval* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %126 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %21)
  store i32 %126, i32* %14, align 4
  br label %131

127:                                              ; preds = %121
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @select(i32 %129, i32* %16, i32* %17, i32* %18, %struct.timeval* %13)
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %14, align 4
  switch i32 %132, label %135 [
    i32 -1, label %133
    i32 0, label %134
  ]

133:                                              ; preds = %131
  br label %138

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %131, %134
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @curl_multi_perform(i32* %136, i32* %10)
  br label %138

138:                                              ; preds = %135, %133
  br label %82

139:                                              ; preds = %117, %82
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @curl_multi_cleanup(i32* %140)
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %160, %139
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.input, %struct.input* %25, i64 %149
  %151 = getelementptr inbounds %struct.input, %struct.input* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @curl_multi_remove_handle(i32* %147, i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.input, %struct.input* %25, i64 %155
  %157 = getelementptr inbounds %struct.input, %struct.input* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @curl_easy_cleanup(i32 %158)
  br label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %142

163:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  %164 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32* @curl_multi_init(...) #2

declare dso_local i32 @setup(%struct.input*, i32, i8*) #2

declare dso_local i32 @curl_multi_add_handle(i32*, i32) #2

declare dso_local i32 @curl_multi_setopt(i32*, i32, i64) #2

declare dso_local i32 @curl_multi_perform(i32*, i32*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #2

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @curl_multi_cleanup(i32*) #2

declare dso_local i32 @curl_multi_remove_handle(i32*, i32) #2

declare dso_local i32 @curl_easy_cleanup(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
