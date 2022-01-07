; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_command_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_command_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.SMTP* }
%struct.SMTP = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Command failed: %d\00", align 1
@CURLE_RECV_ERROR = common dso_local global i32 0, align 4
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@SMTP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @smtp_state_command_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_state_command_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.SMTP*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @CURLE_OK, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  store %struct.Curl_easy* %15, %struct.Curl_easy** %8, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.SMTP*, %struct.SMTP** %18, align 8
  store %struct.SMTP* %19, %struct.SMTP** %9, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %28 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 100
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 553
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %53, label %41

41:                                               ; preds = %38, %35, %31, %3
  %42 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %43 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = sdiv i32 %47, 100
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50, %38
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @failf(%struct.Curl_easy* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @CURLE_RECV_ERROR, align 4
  store i32 %57, i32* %7, align 4
  br label %111

58:                                               ; preds = %50, %46, %41
  %59 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %60 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 10, i8* %67, align 1
  %68 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %69 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, 1
  %73 = call i32 @Curl_client_write(%struct.connectdata* %68, i32 %69, i8* %70, i64 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %64, %58
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %82 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %87 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %92 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %91, i32 0, i32 0
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %92, align 8
  %93 = load %struct.SMTP*, %struct.SMTP** %9, align 8
  %94 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = icmp ne %struct.TYPE_8__* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %99 = call i32 @smtp_perform_command(%struct.connectdata* %98)
  store i32 %99, i32* %7, align 4
  br label %104

100:                                              ; preds = %85
  %101 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %102 = load i32, i32* @SMTP_STOP, align 4
  %103 = call i32 @state(%struct.connectdata* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %97
  br label %109

105:                                              ; preds = %80
  %106 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %107 = load i32, i32* @SMTP_STOP, align 4
  %108 = call i32 @state(%struct.connectdata* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %104
  br label %110

110:                                              ; preds = %109, %77
  br label %111

111:                                              ; preds = %110, %53
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @Curl_client_write(%struct.connectdata*, i32, i8*, i64) #1

declare dso_local i32 @smtp_perform_command(%struct.connectdata*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
