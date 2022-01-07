; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_setup_conn.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_setup_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, i8*, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, %struct.TYPE_9__, %struct.Curl_easy* }
%struct.TYPE_14__ = type { i8**, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64* }

@CURLE_OK = common dso_local global i64 0, align 8
@TIMER_NAMELOOKUP = common dso_local global i32 0, align 4
@PROTOPT_NONETWORK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@STRING_USERAGENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"User-Agent: %s\0D\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@TIMER_CONNECT = common dso_local global i32 0, align 4
@PROTO_FAMILY_SSH = common dso_local global i32 0, align 4
@TIMER_APPCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_setup_conn(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 7
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %7, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %13 = load i32, i32* @TIMER_NAMELOOKUP, align 4
  %14 = call i32 @Curl_pgrsTime(%struct.Curl_easy* %12, i32 %13)
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PROTOPT_NONETWORK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i8*, i8** @TRUE, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %153

28:                                               ; preds = %2
  %29 = load i8*, i8** @FALSE, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @STRING_USERAGENT, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %28
  %45 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %46 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @Curl_safefree(i32 %48)
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @STRING_USERAGENT, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @aprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %59 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %62 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %44
  %67 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %67, i64* %3, align 8
  br label %153

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %28
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %71 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = call i8* (...) @Curl_now()
  %74 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %75 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %77 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %78 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @FIRSTSOCKET, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %76, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %69
  %85 = load i8*, i8** @FALSE, align 8
  %86 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %87 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* @FIRSTSOCKET, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %85, i8** %91, align 8
  %92 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %93 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %94 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @Curl_connecthost(%struct.connectdata* %92, i32 %95)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %3, align 8
  br label %153

101:                                              ; preds = %84
  br label %148

102:                                              ; preds = %69
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %104 = load i32, i32* @TIMER_CONNECT, align 4
  %105 = call i32 @Curl_pgrsTime(%struct.Curl_easy* %103, i32 %104)
  %106 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %107 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %106, i32 0, i32 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i64, i64* @FIRSTSOCKET, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %102
  %115 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %116 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %115, i32 0, i32 3
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PROTO_FAMILY_SSH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114, %102
  %124 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %125 = load i32, i32* @TIMER_APPCONNECT, align 4
  %126 = call i32 @Curl_pgrsTime(%struct.Curl_easy* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %114
  %128 = load i8*, i8** @TRUE, align 8
  %129 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %130 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load i64, i64* @FIRSTSOCKET, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  store i8* %128, i8** %134, align 8
  %135 = load i8*, i8** @TRUE, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load i32*, i32** %5, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %139 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %140 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* @FIRSTSOCKET, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @Curl_updateconninfo(%struct.connectdata* %138, i64 %144)
  %146 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %147 = call i32 @Curl_verboseconnect(%struct.connectdata* %146)
  br label %148

148:                                              ; preds = %127, %101
  %149 = call i8* (...) @Curl_now()
  %150 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %151 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  br label %153

153:                                              ; preds = %148, %99, %66, %23
  %154 = load i64, i64* %3, align 8
  ret i64 %154
}

declare dso_local i32 @Curl_pgrsTime(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @aprintf(i8*, i64) #1

declare dso_local i8* @Curl_now(...) #1

declare dso_local i64 @Curl_connecthost(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_updateconninfo(%struct.connectdata*, i64) #1

declare dso_local i32 @Curl_verboseconnect(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
