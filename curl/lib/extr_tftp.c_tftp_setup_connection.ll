; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_setup_connection.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_setup_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_5__, i32, %struct.Curl_easy* }
%struct.TYPE_5__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TRNSPRT_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c";mode=\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @tftp_setup_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_setup_connection(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 2
  %8 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  store %struct.Curl_easy* %8, %struct.Curl_easy** %3, align 8
  %9 = load i32, i32* @TRNSPRT_UDP, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @strstr(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @strstr(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  %33 = load i8, i8* %32, align 1
  %34 = call signext i8 @Curl_raw_toupper(i8 signext %33)
  store i8 %34, i8* %5, align 1
  %35 = load i8, i8* %5, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %43 [
    i32 65, label %37
    i32 78, label %37
    i32 79, label %42
    i32 73, label %42
  ]

37:                                               ; preds = %29, %29
  %38 = load i32, i32* @TRUE, align 4
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %48

42:                                               ; preds = %29, %29
  br label %43

43:                                               ; preds = %29, %42
  %44 = load i32, i32* @FALSE, align 4
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* @CURLE_OK, align 4
  ret i32 %50
}

declare dso_local i8* @strstr(i32, i8*) #1

declare dso_local signext i8 @Curl_raw_toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
