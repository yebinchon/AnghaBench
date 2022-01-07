; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_select.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_4__ }
%struct.Curl_easy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.IMAP* }
%struct.IMAP = type { i32 }
%struct.TYPE_4__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot SELECT without a mailbox.\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"SELECT %s\00", align 1
@IMAP_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_select(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.IMAP*, align 8
  %7 = alloca %struct.imap_conn*, align 8
  %8 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %11, align 8
  store %struct.Curl_easy* %12, %struct.Curl_easy** %5, align 8
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %14 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.IMAP*, %struct.IMAP** %15, align 8
  store %struct.IMAP* %16, %struct.IMAP** %6, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.imap_conn* %19, %struct.imap_conn** %7, align 8
  %20 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %21 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @Curl_safefree(i32 %22)
  %24 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %25 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Curl_safefree(i32 %26)
  %28 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %29 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 0
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %34, align 8
  %36 = call i32 @failf(%struct.Curl_easy* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %37, i32* %2, align 4
  br label %61

38:                                               ; preds = %1
  %39 = load %struct.IMAP*, %struct.IMAP** %6, align 8
  %40 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @imap_atom(i32 %41, i32 0)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %38
  %48 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @imap_sendf(%struct.connectdata* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %57 = load i32, i32* @IMAP_SELECT, align 4
  %58 = call i32 @state(%struct.connectdata* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %45, %32
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i8* @imap_atom(i32, i32) #1

declare dso_local i32 @imap_sendf(%struct.connectdata*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
