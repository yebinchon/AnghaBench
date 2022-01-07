; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_8__ }
%struct.Curl_easy = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.SMTP* }
%struct.SMTP = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32* }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"DO phase starts\0A\00", align 1
@FTPTRANSFER_INFO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"DO phase is complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*, i32*)* @smtp_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smtp_perform(%struct.connectdata* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.SMTP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %9, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.SMTP*, %struct.SMTP** %17, align 8
  store %struct.SMTP* %18, %struct.SMTP** %10, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %20, align 8
  %22 = call i32 @infof(%struct.Curl_easy* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @DEBUGF(i32 %22)
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @FTPTRANSFER_INFO, align 4
  %31 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %32 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %41 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %44 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %46 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %48 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %33
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52, %33
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %67 = call i64 @smtp_perform_mail(%struct.connectdata* %66)
  store i64 %67, i64* %8, align 8
  br label %71

68:                                               ; preds = %59, %52
  %69 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %70 = call i64 @smtp_perform_command(%struct.connectdata* %69)
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %4, align 8
  br label %99

76:                                               ; preds = %71
  %77 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @smtp_multi_statemach(%struct.connectdata* %77, i32* %78)
  store i64 %79, i64* %8, align 8
  %80 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %81 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @FIRSTSOCKET, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %76
  %92 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %93 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %92, i32 0, i32 0
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %93, align 8
  %95 = call i32 @infof(%struct.Curl_easy* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32 @DEBUGF(i32 %95)
  br label %97

97:                                               ; preds = %91, %76
  %98 = load i64, i64* %8, align 8
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %97, %74
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @smtp_perform_mail(%struct.connectdata*) #1

declare dso_local i64 @smtp_perform_command(%struct.connectdata*) #1

declare dso_local i64 @smtp_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
