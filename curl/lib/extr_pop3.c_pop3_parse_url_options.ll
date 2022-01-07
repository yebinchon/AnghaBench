; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_parse_url_options.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_parse_url_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"AUTH=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"+APOP\00", align 1
@POP3_TYPE_APOP = common dso_local global i64 0, align 8
@CURLE_URL_MALFORMAT = common dso_local global i64 0, align 8
@POP3_TYPE_NONE = common dso_local global i64 0, align 8
@POP3_TYPE_ANY = common dso_local global i64 0, align 8
@POP3_TYPE_SASL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @pop3_parse_url_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_parse_url_options(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pop3_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.pop3_conn* %11, %struct.pop3_conn** %4, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %17 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %113, %1
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %22, %19
  %31 = phi i1 [ false, %22 ], [ false, %19 ], [ %29, %25 ]
  br i1 %31, label %32, label %114

32:                                               ; preds = %30
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %46, %32
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 61
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %64, %49
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 59
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %52

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strncasecompare(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %73 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %72, i32 0, i32 1
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i64 @Curl_sasl_parse_url_auth_option(%struct.TYPE_4__* %73, i8* %74, i32 %80)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %71
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i64 @strncasecompare(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load i64, i64* @POP3_TYPE_APOP, align 8
  %96 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %97 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %99 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 128, i32* %100, align 8
  %101 = load i64, i64* @CURLE_OK, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %94, %84, %71
  br label %105

103:                                              ; preds = %67
  %104 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %103, %102
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 59
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  br label %113

113:                                              ; preds = %110, %105
  br label %19

114:                                              ; preds = %30
  %115 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %116 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @POP3_TYPE_APOP, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %122 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %133 [
    i32 128, label %125
    i32 129, label %129
  ]

125:                                              ; preds = %120
  %126 = load i64, i64* @POP3_TYPE_NONE, align 8
  %127 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %128 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %137

129:                                              ; preds = %120
  %130 = load i64, i64* @POP3_TYPE_ANY, align 8
  %131 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %132 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %137

133:                                              ; preds = %120
  %134 = load i64, i64* @POP3_TYPE_SASL, align 8
  %135 = load %struct.pop3_conn*, %struct.pop3_conn** %4, align 8
  %136 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %129, %125
  br label %138

138:                                              ; preds = %137, %114
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local i64 @strncasecompare(i8*, i8*, i32) #1

declare dso_local i64 @Curl_sasl_parse_url_auth_option(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
