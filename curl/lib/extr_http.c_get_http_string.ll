; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_get_http_string.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_get_http_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.connectdata = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@CURL_HTTP_VERSION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Curl_easy*, %struct.connectdata*)* @get_http_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_http_string(%struct.Curl_easy* %0, %struct.connectdata* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.connectdata*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %7 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %8 = call i64 @use_http_1_1plus(%struct.Curl_easy* %6, %struct.connectdata* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i8*, i8** %3, align 8
  ret i8* %13
}

declare dso_local i64 @use_http_1_1plus(%struct.Curl_easy*, %struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
