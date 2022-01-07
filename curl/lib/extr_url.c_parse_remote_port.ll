; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_parse_remote_port.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_parse_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.connectdata = type { i16 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CURLUPART_PORT = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*)* @parse_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_remote_port(%struct.Curl_easy* %0, %struct.connectdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %9 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i16
  %25 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 0
  store i16 %24, i16* %26, align 2
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %28 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 2
  %31 = call i32 @msnprintf(i8* %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i16 zeroext %30)
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CURLUPART_PORT, align 4
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %38 = call i64 @curl_url_set(i32 %35, i32 %36, i8* %37, i32 0)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43, %13, %2
  %45 = load i32, i32* @CURLE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i16 zeroext) #1

declare dso_local i64 @curl_url_set(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
