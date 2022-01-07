; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_servergreet_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_servergreet_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__, %struct.Curl_easy* }
%struct.TYPE_3__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i8*, i32 }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Got unexpected pop3-server response\00", align 1
@CURLE_WEIRD_SERVER_REPLY = common dso_local global i32 0, align 4
@POP3_TYPE_APOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @pop3_state_servergreet_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_state_servergreet_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.pop3_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @CURLE_OK, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %17, align 8
  store %struct.Curl_easy* %18, %struct.Curl_easy** %8, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.pop3_conn* %21, %struct.pop3_conn** %9, align 8
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 43
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %33 = call i32 @failf(%struct.Curl_easy* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @CURLE_WEIRD_SERVER_REPLY, align 4
  store i32 %34, i32* %7, align 4
  br label %119

35:                                               ; preds = %3
  %36 = load i64, i64* %11, align 8
  %37 = icmp uge i64 %36, 4
  br i1 %37, label %38, label %116

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %40, 2
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 62
  br i1 %45, label %46, label %116

46:                                               ; preds = %38
  store i64 3, i64* %12, align 8
  br label %47

47:                                               ; preds = %112, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub i64 %49, 2
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 60
  br i1 %58, label %59, label %111

59:                                               ; preds = %52
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %60, 1
  %62 = load i64, i64* %12, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %115

67:                                               ; preds = %59
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  %70 = call i64 @calloc(i32 1, i64 %69)
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %73 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %75 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  br label %115

79:                                               ; preds = %67
  %80 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %81 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @memcpy(i8* %82, i8* %85, i64 %86)
  %88 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %89 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %94 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 64)
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %79
  %100 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %101 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @Curl_safefree(i8* %102)
  br label %110

104:                                              ; preds = %79
  %105 = load i32, i32* @POP3_TYPE_APOP, align 4
  %106 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %107 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  br label %115

111:                                              ; preds = %52
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %47

115:                                              ; preds = %110, %78, %66, %47
  br label %116

116:                                              ; preds = %115, %38, %35
  %117 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %118 = call i32 @pop3_perform_capa(%struct.connectdata* %117)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %116, %31
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @pop3_perform_capa(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
