; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_output_auth.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_output_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.TYPE_5__, i64, %struct.Curl_easy* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }
%struct.Curl_easy = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, %struct.auth, %struct.auth }
%struct.auth = type { i8*, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_http_output_auth(%struct.connectdata* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.Curl_easy*, align 8
  %12 = alloca %struct.auth*, align 8
  %13 = alloca %struct.auth*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @CURLE_OK, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  store %struct.Curl_easy* %17, %struct.Curl_easy** %11, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %19 = call i32 @DEBUGASSERT(%struct.Curl_easy* %18)
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  store %struct.auth* %22, %struct.auth** %12, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store %struct.auth* %25, %struct.auth** %13, align 8
  %26 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %31, %4
  %38 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %45 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %37, %31
  br label %57

49:                                               ; preds = %43
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.auth*, %struct.auth** %12, align 8
  %52 = getelementptr inbounds %struct.auth, %struct.auth* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @TRUE, align 8
  %54 = load %struct.auth*, %struct.auth** %13, align 8
  %55 = getelementptr inbounds %struct.auth, %struct.auth* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* @CURLE_OK, align 8
  store i64 %56, i64* %5, align 8
  br label %167

57:                                               ; preds = %48
  %58 = load %struct.auth*, %struct.auth** %12, align 8
  %59 = getelementptr inbounds %struct.auth, %struct.auth* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.auth*, %struct.auth** %12, align 8
  %64 = getelementptr inbounds %struct.auth, %struct.auth* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.auth*, %struct.auth** %12, align 8
  %69 = getelementptr inbounds %struct.auth, %struct.auth* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.auth*, %struct.auth** %12, align 8
  %72 = getelementptr inbounds %struct.auth, %struct.auth* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %62, %57
  %74 = load %struct.auth*, %struct.auth** %13, align 8
  %75 = getelementptr inbounds %struct.auth, %struct.auth* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.auth*, %struct.auth** %13, align 8
  %80 = getelementptr inbounds %struct.auth, %struct.auth* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.auth*, %struct.auth** %13, align 8
  %85 = getelementptr inbounds %struct.auth, %struct.auth* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.auth*, %struct.auth** %13, align 8
  %88 = getelementptr inbounds %struct.auth, %struct.auth* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %78, %73
  %90 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %91 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %97 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %105 = load %struct.auth*, %struct.auth** %13, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** @TRUE, align 8
  %109 = call i64 @output_auth_headers(%struct.connectdata* %104, %struct.auth* %105, i8* %106, i8* %107, i8* %108)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %5, align 8
  br label %167

114:                                              ; preds = %103
  br label %119

115:                                              ; preds = %95, %89
  %116 = load i8*, i8** @TRUE, align 8
  %117 = load %struct.auth*, %struct.auth** %13, align 8
  %118 = getelementptr inbounds %struct.auth, %struct.auth* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %114
  %120 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %121 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %119
  %126 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %127 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %125
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %133 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %139 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %137
  %144 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  %145 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %149 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @strcasecompare(i32 %147, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %143, %137, %131, %125, %119
  %155 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %156 = load %struct.auth*, %struct.auth** %12, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** @FALSE, align 8
  %160 = call i64 @output_auth_headers(%struct.connectdata* %155, %struct.auth* %156, i8* %157, i8* %158, i8* %159)
  store i64 %160, i64* %10, align 8
  br label %165

161:                                              ; preds = %143
  %162 = load i8*, i8** @TRUE, align 8
  %163 = load %struct.auth*, %struct.auth** %12, align 8
  %164 = getelementptr inbounds %struct.auth, %struct.auth* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %154
  %166 = load i64, i64* %10, align 8
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %165, %112, %49
  %168 = load i64, i64* %5, align 8
  ret i64 %168
}

declare dso_local i32 @DEBUGASSERT(%struct.Curl_easy*) #1

declare dso_local i64 @output_auth_headers(%struct.connectdata*, %struct.auth*, i8*, i8*, i8*) #1

declare dso_local i64 @strcasecompare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
