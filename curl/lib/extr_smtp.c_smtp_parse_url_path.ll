; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_parse_url_path.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_parse_url_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_4__ }
%struct.Curl_easy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32 }

@HOSTNAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @smtp_parse_url_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_parse_url_path(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.smtp_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 0
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  store %struct.Curl_easy* %10, %struct.Curl_easy** %3, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.smtp_conn* %13, %struct.smtp_conn** %4, align 8
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %5, align 8
  %20 = load i32, i32* @HOSTNAME_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = trunc i64 %22 to i32
  %30 = call i32 @Curl_gethostname(i8* %24, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i8* %24, i8** %5, align 8
  br label %34

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %37 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %36, i32 0, i32 0
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %41 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %40, i32 0, i32 0
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @Curl_urldecode(%struct.Curl_easy* %38, i8* %39, i32 0, i32* %41, i32* null, i32 %42)
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Curl_gethostname(i8*, i32) #2

declare dso_local i32 @Curl_urldecode(%struct.Curl_easy*, i8*, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
