; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sendf.c_pausewrite.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sendf.c_pausewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.UrlState, %struct.SingleRequest }
%struct.UrlState = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i8* }
%struct.SingleRequest = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@KEEP_RECV_PAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Paused %zu bytes in buffer for type %02x\0A\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, i8*, i64)* @pausewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pausewrite(%struct.Curl_easy* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.SingleRequest*, align 8
  %11 = alloca %struct.UrlState*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  store %struct.SingleRequest* %18, %struct.SingleRequest** %10, align 8
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 0
  store %struct.UrlState* %20, %struct.UrlState** %11, align 8
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %23 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %30 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %35 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %14, align 4
  br label %50

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %27

50:                                               ; preds = %44, %27
  %51 = load i32, i32* %13, align 4
  %52 = icmp ult i32 %51, 3
  %53 = zext i1 %52 to i32
  %54 = call i32 @DEBUGASSERT(i32 %53)
  br label %56

55:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %114, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %62 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %60, %68
  store i64 %69, i64* %15, align 8
  %70 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %71 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i8* @realloc(i8* %77, i64 %78)
  store i8* %79, i8** %16, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %83, i32* %5, align 4
  br label %167

84:                                               ; preds = %59
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %87 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8, i8* %85, i64 %93
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  %98 = load i8*, i8** %16, align 8
  %99 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %100 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i8* %98, i8** %105, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %108 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i64 %106, i64* %113, align 8
  br label %155

114:                                              ; preds = %56
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i8* @Curl_memdup(i8* %115, i64 %116)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %121, i32* %5, align 4
  br label %167

122:                                              ; preds = %114
  %123 = load i8*, i8** %12, align 8
  %124 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %125 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i8* %123, i8** %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %133 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i64 %131, i64* %138, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %141 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %122
  %150 = load %struct.UrlState*, %struct.UrlState** %11, align 8
  %151 = getelementptr inbounds %struct.UrlState, %struct.UrlState* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %149, %122
  br label %155

155:                                              ; preds = %154, %84
  %156 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  %157 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %158 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @infof(%struct.Curl_easy* %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %162, i32 %163)
  %165 = call i32 @DEBUGF(i32 %164)
  %166 = load i32, i32* @CURLE_OK, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %155, %120, %82
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @Curl_memdup(i8*, i64) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
