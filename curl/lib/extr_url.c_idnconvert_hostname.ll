; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_idnconvert_hostname.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_idnconvert_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i32 }
%struct.hostname = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [54 x i8] c"IDN support not present, can't parse Unicode domains\0A\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@IDN2_NFC_INPUT = common dso_local global i32 0, align 4
@IDN2_NONTRANSITIONAL = common dso_local global i32 0, align 4
@IDN2_OK = common dso_local global i32 0, align 4
@IDN2_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, %struct.hostname*)* @idnconvert_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idnconvert_hostname(%struct.connectdata* %0, %struct.hostname* %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.hostname*, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store %struct.hostname* %1, %struct.hostname** %4, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  store %struct.Curl_easy* %8, %struct.Curl_easy** %5, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = load %struct.hostname*, %struct.hostname** %4, align 8
  %12 = getelementptr inbounds %struct.hostname, %struct.hostname* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.hostname*, %struct.hostname** %4, align 8
  %15 = getelementptr inbounds %struct.hostname, %struct.hostname* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.hostname*, %struct.hostname** %4, align 8
  %17 = getelementptr inbounds %struct.hostname, %struct.hostname* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @is_ASCII_name(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %23 = call i32 @infof(%struct.Curl_easy* %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* @CURLE_OK, align 4
  ret i32 %25
}

declare dso_local i32 @is_ASCII_name(i8*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
