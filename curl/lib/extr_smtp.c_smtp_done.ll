; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.Curl_easy*, %struct.TYPE_9__ }
%struct.Curl_easy = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64, i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.SMTP* }
%struct.SMTP = type { i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.pingpong }
%struct.pingpong = type { i8*, i32, i64, i64, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"SMTP done with bad status\00", align 1
@SMTP_EOB = common dso_local global i32* null, align 8
@SMTP_EOB_LEN = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@SMTP_POSTDATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTPTRANSFER_BODY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i64, i32)* @smtp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smtp_done(%struct.connectdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.SMTP*, align 8
  %11 = alloca %struct.pingpong*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* @CURLE_OK, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %17, align 8
  store %struct.Curl_easy* %18, %struct.Curl_easy** %9, align 8
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %20 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.SMTP*, %struct.SMTP** %21, align 8
  store %struct.SMTP* %22, %struct.SMTP** %10, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.pingpong* %26, %struct.pingpong** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %29 = icmp ne %struct.SMTP* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.pingpong*, %struct.pingpong** %11, align 8
  %32 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %3
  %36 = load i64, i64* @CURLE_OK, align 8
  store i64 %36, i64* %4, align 8
  br label %150

37:                                               ; preds = %30
  %38 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %39 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @Curl_safefree(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %46 = call i32 @connclose(%struct.connectdata* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %8, align 8
  br label %145

48:                                               ; preds = %37
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %144, label %54

54:                                               ; preds = %48
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %56 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %144

60:                                               ; preds = %54
  %61 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %62 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %68 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %144

73:                                               ; preds = %66, %60
  %74 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %75 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %80 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %79, i32 0, i32 1
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %80, align 8
  %82 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %78, %73
  %87 = load i32*, i32** @SMTP_EOB, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = call i8* @strdup(i32* %88)
  store i8* %89, i8** %12, align 8
  %90 = load i64, i64* @SMTP_EOB_LEN, align 8
  %91 = sub nsw i64 %90, 2
  store i64 %91, i64* %13, align 8
  br label %96

92:                                               ; preds = %78
  %93 = load i32*, i32** @SMTP_EOB, align 8
  %94 = call i8* @strdup(i32* %93)
  store i8* %94, i8** %12, align 8
  %95 = load i64, i64* @SMTP_EOB_LEN, align 8
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i8*, i8** %12, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %100, i64* %4, align 8
  br label %150

101:                                              ; preds = %96
  %102 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %103 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %104 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @Curl_write(%struct.connectdata* %102, i32 %105, i8* %106, i64 %107, i64* %14)
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* %4, align 8
  br label %150

115:                                              ; preds = %101
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.pingpong*, %struct.pingpong** %11, align 8
  %122 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.pingpong*, %struct.pingpong** %11, align 8
  %125 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = sub nsw i64 %126, %127
  %129 = load %struct.pingpong*, %struct.pingpong** %11, align 8
  %130 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %137

131:                                              ; preds = %115
  %132 = call i32 (...) @Curl_now()
  %133 = load %struct.pingpong*, %struct.pingpong** %11, align 8
  %134 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %131, %119
  %138 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %139 = load i32, i32* @SMTP_POSTDATA, align 4
  %140 = call i32 @state(%struct.connectdata* %138, i32 %139)
  %141 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i64 @smtp_block_statemach(%struct.connectdata* %141, i32 %142)
  store i64 %143, i64* %8, align 8
  br label %144

144:                                              ; preds = %137, %66, %54, %48
  br label %145

145:                                              ; preds = %144, %44
  %146 = load i32, i32* @FTPTRANSFER_BODY, align 4
  %147 = load %struct.SMTP*, %struct.SMTP** %10, align 8
  %148 = getelementptr inbounds %struct.SMTP, %struct.SMTP* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %8, align 8
  store i64 %149, i64* %4, align 8
  br label %150

150:                                              ; preds = %145, %111, %99, %35
  %151 = load i64, i64* %4, align 8
  ret i64 %151
}

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i64 @Curl_write(%struct.connectdata*, i32, i8*, i64, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i64 @smtp_block_statemach(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
