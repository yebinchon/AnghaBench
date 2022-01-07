; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-download.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-download.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64, i32, i32 }
%struct.transfer = type { i32 }

@NUM_HANDLES = common dso_local global i32 0, align 4
@CURLMOPT_PIPELINING = common dso_local global i32 0, align 4
@CURLPIPE_MULTIPLEX = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"curl_multi_fdset() failed, code %d.\0A\00", align 1
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
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32, i32* @NUM_HANDLES, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca %struct.transfer, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @NUM_HANDLES, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %27
  store i32 3, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %41

40:                                               ; preds = %2
  store i32 3, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = call i32* (...) @curl_multi_init()
  store i32* %42, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %60, %41
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.transfer, %struct.transfer* %24, i64 %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @setup(%struct.transfer* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.transfer, %struct.transfer* %24, i64 %55
  %57 = getelementptr inbounds %struct.transfer, %struct.transfer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @curl_multi_add_handle(i32* %53, i32 %58)
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @CURLMOPT_PIPELINING, align 4
  %66 = load i32, i32* @CURLPIPE_MULTIPLEX, align 4
  %67 = call i32 @curl_multi_setopt(i32* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @curl_multi_perform(i32* %68, i32* %10)
  br label %70

70:                                               ; preds = %126, %63
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %70
  store i32 -1, i32* %18, align 4
  store i64 -1, i64* %19, align 8
  %74 = call i32 @FD_ZERO(i32* %15)
  %75 = call i32 @FD_ZERO(i32* %16)
  %76 = call i32 @FD_ZERO(i32* %17)
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @curl_multi_timeout(i32* %79, i64* %19)
  %81 = load i64, i64* %19, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load i64, i64* %19, align 8
  %85 = sdiv i64 %84, 1000
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %98

93:                                               ; preds = %83
  %94 = load i64, i64* %19, align 8
  %95 = srem i64 %94, 1000
  %96 = mul nsw i64 %95, 1000
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %91
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32*, i32** %8, align 8
  %101 = call i64 @curl_multi_fdset(i32* %100, i32* %15, i32* %16, i32* %17, i32* %18)
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @CURLM_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @stderr, align 4
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %107)
  br label %127

109:                                              ; preds = %99
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = bitcast %struct.timeval* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 bitcast (%struct.timeval* @__const.main.wait to i8*), i64 24, i1 false)
  %114 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %20)
  store i32 %114, i32* %13, align 4
  br label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @select(i32 %117, i32* %15, i32* %16, i32* %17, %struct.timeval* %12)
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %13, align 4
  switch i32 %120, label %123 [
    i32 -1, label %121
    i32 0, label %122
  ]

121:                                              ; preds = %119
  br label %126

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %119, %122
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @curl_multi_perform(i32* %124, i32* %10)
  br label %126

126:                                              ; preds = %123, %121
  br label %70

127:                                              ; preds = %105, %70
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %146, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.transfer, %struct.transfer* %24, i64 %135
  %137 = getelementptr inbounds %struct.transfer, %struct.transfer* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @curl_multi_remove_handle(i32* %133, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.transfer, %struct.transfer* %24, i64 %141
  %143 = getelementptr inbounds %struct.transfer, %struct.transfer* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @curl_easy_cleanup(i32 %144)
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %128

149:                                              ; preds = %128
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @curl_multi_cleanup(i32* %150)
  store i32 0, i32* %3, align 4
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32* @curl_multi_init(...) #2

declare dso_local i32 @setup(%struct.transfer*, i32) #2

declare dso_local i32 @curl_multi_add_handle(i32*, i32) #2

declare dso_local i32 @curl_multi_setopt(i32*, i32, i32) #2

declare dso_local i32 @curl_multi_perform(i32*, i32*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #2

declare dso_local i64 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @curl_multi_remove_handle(i32*, i32) #2

declare dso_local i32 @curl_easy_cleanup(i32) #2

declare dso_local i32 @curl_multi_cleanup(i32*) #2

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
