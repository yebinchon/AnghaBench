; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_select_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_select_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_5__ }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { %struct.IMAP* }
%struct.IMAP = type { i8*, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.imap_conn }
%struct.imap_conn = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OK [UIDVALIDITY %19[0123456789]]\00", align 1
@IMAP_RESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Mailbox UIDVALIDITY has changed\00", align 1
@CURLE_REMOTE_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Select failed\00", align 1
@CURLE_LOGIN_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @imap_state_select_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_state_select_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.IMAP*, align 8
  %10 = alloca %struct.imap_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [20 x i8], align 16
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @CURLE_OK, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %8, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %18, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.IMAP*, %struct.IMAP** %21, align 8
  store %struct.IMAP* %22, %struct.IMAP** %9, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.imap_conn* %25, %struct.imap_conn** %10, align 8
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %33, label %49

33:                                               ; preds = %3
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %37 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.imap_conn*, %struct.imap_conn** %10, align 8
  %41 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @Curl_safefree(i8* %42)
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %45 = call i8* @strdup(i8* %44)
  %46 = load %struct.imap_conn*, %struct.imap_conn** %10, align 8
  %47 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %39, %33
  br label %111

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IMAP_RESP_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %49
  %54 = load %struct.IMAP*, %struct.IMAP** %9, align 8
  %55 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.imap_conn*, %struct.imap_conn** %10, align 8
  %60 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.IMAP*, %struct.IMAP** %9, align 8
  %65 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.imap_conn*, %struct.imap_conn** %10, align 8
  %68 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcasecompare(i64 %66, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %74 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %73, i32 0, i32 0
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %74, align 8
  %76 = call i32 @failf(%struct.Curl_easy* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @CURLE_REMOTE_FILE_NOT_FOUND, align 4
  store i32 %77, i32* %7, align 4
  br label %105

78:                                               ; preds = %63, %58, %53
  %79 = load %struct.IMAP*, %struct.IMAP** %9, align 8
  %80 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strdup(i8* %81)
  %83 = load %struct.imap_conn*, %struct.imap_conn** %10, align 8
  %84 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.IMAP*, %struct.IMAP** %9, align 8
  %86 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %91 = call i32 @imap_perform_list(%struct.connectdata* %90)
  store i32 %91, i32* %7, align 4
  br label %104

92:                                               ; preds = %78
  %93 = load %struct.IMAP*, %struct.IMAP** %9, align 8
  %94 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %99 = call i32 @imap_perform_search(%struct.connectdata* %98)
  store i32 %99, i32* %7, align 4
  br label %103

100:                                              ; preds = %92
  %101 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %102 = call i32 @imap_perform_fetch(%struct.connectdata* %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %89
  br label %105

105:                                              ; preds = %104, %72
  br label %110

106:                                              ; preds = %49
  %107 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %108 = call i32 @failf(%struct.Curl_easy* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @CURLE_LOGIN_DENIED, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %105
  br label %111

111:                                              ; preds = %110, %48
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcasecompare(i64, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @imap_perform_list(%struct.connectdata*) #1

declare dso_local i32 @imap_perform_search(%struct.connectdata*) #1

declare dso_local i32 @imap_perform_fetch(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
