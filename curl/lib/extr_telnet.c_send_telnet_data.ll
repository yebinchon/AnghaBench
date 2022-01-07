; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_send_telnet_data.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_send_telnet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32* }
%struct.pollfd = type { i32, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURL_IAC = common dso_local global i8 0, align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@CURLE_SEND_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i8*, i64)* @send_telnet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_telnet_data(%struct.connectdata* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1 x %struct.pollfd], align 4
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %11, align 8
  %17 = load i32, i32* @CURLE_OK, align 4
  store i32 %17, i32* %12, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @CURL_IAC, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %11, align 8
  br label %93

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = add i64 %50, 1
  %52 = call i8* @malloc(i64 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %56, i32* %4, align 4
  br label %147

57:                                               ; preds = %47
  store i64 0, i64* %15, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %15, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %15, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %70, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @CURL_IAC, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %62
  %80 = load i8, i8* @CURL_IAC, align 1
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %15, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  %84 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %80, i8* %84, align 1
  br label %85

85:                                               ; preds = %79, %62
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %58

89:                                               ; preds = %58
  %90 = load i8*, i8** %11, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %89, %45
  store i64 0, i64* %14, align 8
  br label %94

94:                                               ; preds = %137, %93
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp ult i64 %98, %99
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i1 [ false, %94 ], [ %100, %97 ]
  br i1 %102, label %103, label %138

103:                                              ; preds = %101
  %104 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %105 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @FIRSTSOCKET, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %111 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @POLLOUT, align 4
  %113 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %114 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %16, i64 0, i64 0
  %116 = call i32 @Curl_poll(%struct.pollfd* %115, i32 1, i32 -1)
  switch i32 %116, label %119 [
    i32 -1, label %117
    i32 0, label %117
  ]

117:                                              ; preds = %103, %103
  %118 = load i32, i32* @CURLE_SEND_ERROR, align 4
  store i32 %118, i32* %12, align 4
  br label %137

119:                                              ; preds = %103
  store i64 0, i64* %13, align 8
  %120 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %121 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %122 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @FIRSTSOCKET, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %14, align 8
  %132 = sub i64 %130, %131
  %133 = call i32 @Curl_write(%struct.connectdata* %120, i32 %126, i8* %129, i64 %132, i64* %13)
  store i32 %133, i32* %12, align 4
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %119, %117
  br label %94

138:                                              ; preds = %101
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = icmp ne i8* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %55
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @Curl_poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @Curl_write(%struct.connectdata*, i32, i8*, i64, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
