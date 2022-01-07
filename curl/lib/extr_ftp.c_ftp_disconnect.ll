; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_disconnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_3__ }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i32*, i32*, i32*, i32, %struct.pingpong }
%struct.pingpong = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @ftp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_disconnect(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ftp_conn*, align 8
  %6 = alloca %struct.pingpong*, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ftp_conn* %10, %struct.ftp_conn** %5, align 8
  %11 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %12 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %11, i32 0, i32 4
  store %struct.pingpong* %12, %struct.pingpong** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %18 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %21 = call i32 @ftp_quit(%struct.connectdata* %20)
  %22 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %23 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 0
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %28, align 8
  store %struct.Curl_easy* %29, %struct.Curl_easy** %7, align 8
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %31 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %35 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %38, %26
  %43 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %44 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @free(i32* %45)
  %47 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %48 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %19
  %50 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %51 = call i32 @freedirs(%struct.ftp_conn* %50)
  %52 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %53 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @free(i32* %54)
  %56 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %57 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %59 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @free(i32* %60)
  %62 = load %struct.ftp_conn*, %struct.ftp_conn** %5, align 8
  %63 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.pingpong*, %struct.pingpong** %6, align 8
  %65 = call i32 @Curl_pp_disconnect(%struct.pingpong* %64)
  %66 = load i32, i32* @CURLE_OK, align 4
  ret i32 %66
}

declare dso_local i32 @ftp_quit(%struct.connectdata*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @freedirs(%struct.ftp_conn*) #1

declare dso_local i32 @Curl_pp_disconnect(%struct.pingpong*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
