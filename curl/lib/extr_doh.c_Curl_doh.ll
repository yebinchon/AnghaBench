; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_Curl_doh.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_Curl_doh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@CURLE_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Content-Type: application/dns-message\00", align 1
@CURL_IPRESOLVE_V6 = common dso_local global i64 0, align 8
@DNS_TYPE_A = common dso_local global i32 0, align 4
@STRING_DOH = common dso_local global i64 0, align 8
@CURL_IPRESOLVE_V4 = common dso_local global i64 0, align 8
@DNS_TYPE_AAAA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Curl_doh(%struct.connectdata* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 1
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %10, align 8
  %15 = load i64, i64* @CURLE_OK, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @memset(%struct.TYPE_7__* %23, i32 0, i32 4)
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 8
  %35 = call i32* @curl_slist_append(i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32* %35, i32** %39, align 8
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %4
  br label %132

47:                                               ; preds = %4
  %48 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %49 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CURL_IPRESOLVE_V6, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %56 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 0
  %61 = load i32, i32* @DNS_TYPE_A, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @STRING_DOH, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %71 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %74 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @dohprobe(%struct.Curl_easy* %54, %struct.TYPE_8__* %60, i32 %61, i8* %62, i32 %69, i32 %72, i32* %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %53
  br label %132

82:                                               ; preds = %53
  %83 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %84 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %47
  %90 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %91 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CURL_IPRESOLVE_V4, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %89
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %98 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 1
  %103 = load i32, i32* @DNS_TYPE_AAAA, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %106 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @STRING_DOH, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %113 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %116 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @dohprobe(%struct.Curl_easy* %96, %struct.TYPE_8__* %102, i32 %103, i8* %104, i32 %111, i32 %114, i32* %119)
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %95
  br label %132

124:                                              ; preds = %95
  %125 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %126 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %124, %89
  store i32* null, i32** %5, align 8
  br label %159

132:                                              ; preds = %123, %81, %46
  %133 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %134 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @curl_slist_free_all(i32* %137)
  %139 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %140 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  store i32* null, i32** %142, align 8
  %143 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %144 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = call i32 @Curl_close(i32* %149)
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %152 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = call i32 @Curl_close(i32* %157)
  store i32* null, i32** %5, align 8
  br label %159

159:                                              ; preds = %132, %131
  %160 = load i32*, i32** %5, align 8
  ret i32* %160
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32* @curl_slist_append(i32*, i8*) #1

declare dso_local i64 @dohprobe(%struct.Curl_easy*, %struct.TYPE_8__*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32 @Curl_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
