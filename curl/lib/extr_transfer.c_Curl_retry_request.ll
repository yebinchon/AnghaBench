; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_retry_request.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_retry_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.Curl_easy* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.Curl_easy = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i64, i32, i64 }

@FALSE = common dso_local global i8* null, align 8
@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4
@CURLPROTO_RTSP = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@RTSPREQ_RECEIVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"REFUSED_STREAM, retrying a fresh connect\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Connection died, retrying a fresh connect\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"retry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_retry_request(%struct.connectdata* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 2
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %6, align 8
  %12 = load i8*, i8** @FALSE, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i8**, i8*** %5, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %27 = load i32, i32* @CURLPROTO_RTSP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load i64, i64* @CURLE_OK, align 8
  store i64 %32, i64* %3, align 8
  br label %161

33:                                               ; preds = %20, %2
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %33
  %45 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %46 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %52 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %58 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %56, %50
  %66 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %67 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RTSPREQ_RECEIVE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** @TRUE, align 8
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %7, align 4
  br label %104

75:                                               ; preds = %65, %56, %44, %33
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %77 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %103

81:                                               ; preds = %75
  %82 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %83 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %85, %89
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %94 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %93, i32 0, i32 2
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %94, align 8
  %96 = call i32 @infof(%struct.Curl_easy* %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %97 = load i8*, i8** @FALSE, align 8
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %99 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load i8*, i8** @TRUE, align 8
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %92, %81, %75
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %159

107:                                              ; preds = %104
  %108 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %109 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %108, i32 0, i32 2
  %110 = load %struct.Curl_easy*, %struct.Curl_easy** %109, align 8
  %111 = call i32 @infof(%struct.Curl_easy* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %113 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %112, i32 0, i32 2
  %114 = load %struct.Curl_easy*, %struct.Curl_easy** %113, align 8
  %115 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @strdup(i32 %117)
  %119 = load i8**, i8*** %5, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %107
  %124 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %124, i64* %3, align 8
  br label %161

125:                                              ; preds = %107
  %126 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %127 = call i32 @connclose(%struct.connectdata* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i8*, i8** @TRUE, align 8
  %129 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %130 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %133 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %132, i32 0, i32 0
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %125
  %141 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %142 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %148 = call i64 @Curl_readrewind(%struct.connectdata* %147)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i8**, i8*** %5, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @Curl_safefree(i8* %153)
  %155 = load i64, i64* %8, align 8
  store i64 %155, i64* %3, align 8
  br label %161

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %140
  br label %158

158:                                              ; preds = %157, %125
  br label %159

159:                                              ; preds = %158, %104
  %160 = load i64, i64* @CURLE_OK, align 8
  store i64 %160, i64* %3, align 8
  br label %161

161:                                              ; preds = %159, %151, %123, %31
  %162 = load i64, i64* %3, align 8
  ret i64 %162
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i64 @Curl_readrewind(%struct.connectdata*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
