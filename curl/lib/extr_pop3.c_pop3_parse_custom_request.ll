; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_parse_custom_request.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_parse_custom_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8** }
%struct.TYPE_3__ = type { %struct.POP3* }
%struct.POP3 = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@STRING_CUSTOMREQUEST = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @pop3_parse_custom_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_parse_custom_request(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.POP3*, align 8
  %6 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 0
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  store %struct.Curl_easy* %10, %struct.Curl_easy** %4, align 8
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.POP3*, %struct.POP3** %13, align 8
  store %struct.POP3* %14, %struct.POP3** %5, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* @STRING_CUSTOMREQUEST, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.POP3*, %struct.POP3** %5, align 8
  %28 = getelementptr inbounds %struct.POP3, %struct.POP3* %27, i32 0, i32 0
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @Curl_urldecode(%struct.Curl_easy* %25, i8* %26, i32 0, i32* %28, i32* null, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @Curl_urldecode(%struct.Curl_easy*, i8*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
