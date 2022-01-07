; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_fdset.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_curl_multi_fdset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_multi = type { %struct.Curl_easy*, i64 }
%struct.Curl_easy = type { %struct.Curl_easy* }

@MAX_SOCKSPEREASYHANDLE = common dso_local global i32 0, align 4
@CURLM_BAD_HANDLE = common dso_local global i32 0, align 4
@CURLM_RECURSIVE_API_CALL = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@CURLM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_multi_fdset(%struct.Curl_multi* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_multi*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.Curl_easy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.Curl_multi* %0, %struct.Curl_multi** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %13, align 4
  %20 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %26 = call i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @CURLM_BAD_HANDLE, align 4
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %125

30:                                               ; preds = %5
  %31 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %32 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @CURLM_RECURSIVE_API_CALL, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %125

37:                                               ; preds = %30
  %38 = load %struct.Curl_multi*, %struct.Curl_multi** %7, align 8
  %39 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %38, i32 0, i32 0
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %39, align 8
  store %struct.Curl_easy* %40, %struct.Curl_easy** %12, align 8
  br label %41

41:                                               ; preds = %117, %37
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %43 = icmp ne %struct.Curl_easy* %42, null
  br i1 %43, label %44, label %121

44:                                               ; preds = %41
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %46 = call i32 @multi_getsock(%struct.Curl_easy* %45, i64* %23)
  store i32 %46, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %114, %44
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @MAX_SOCKSPEREASYHANDLE, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %47
  %52 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %52, i64* %19, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @GETSOCK_READSOCK(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %23, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @VALID_SOCK(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %23, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @FD_SET(i64 %69, i32* %70)
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %23, i64 %73
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %19, align 8
  br label %76

76:                                               ; preds = %65, %58, %51
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @GETSOCK_WRITESOCK(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %23, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @VALID_SOCK(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %23, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @FD_SET(i64 %93, i32* %94)
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %23, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %19, align 8
  br label %100

100:                                              ; preds = %89, %82, %76
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %117

105:                                              ; preds = %100
  %106 = load i64, i64* %19, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %13, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i64, i64* %19, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %47

117:                                              ; preds = %104, %47
  %118 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  %119 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %118, i32 0, i32 0
  %120 = load %struct.Curl_easy*, %struct.Curl_easy** %119, align 8
  store %struct.Curl_easy* %120, %struct.Curl_easy** %12, align 8
  br label %41

121:                                              ; preds = %41
  %122 = load i32, i32* %13, align 4
  %123 = load i32*, i32** %11, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @CURLM_OK, align 4
  store i32 %124, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %125

125:                                              ; preds = %121, %35, %28
  %126 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GOOD_MULTI_HANDLE(%struct.Curl_multi*) #2

declare dso_local i32 @multi_getsock(%struct.Curl_easy*, i64*) #2

declare dso_local i32 @GETSOCK_READSOCK(i32) #2

declare dso_local i64 @VALID_SOCK(i64) #2

declare dso_local i32 @FD_SET(i64, i32*) #2

declare dso_local i32 @GETSOCK_WRITESOCK(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
