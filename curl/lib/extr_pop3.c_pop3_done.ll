; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.POP3* }
%struct.POP3 = type { i32, i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"POP3 done with bad status\00", align 1
@FTPTRANSFER_BODY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i64, i32)* @pop3_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_done(%struct.connectdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.POP3*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %9, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.POP3*, %struct.POP3** %17, align 8
  store %struct.POP3* %18, %struct.POP3** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.POP3*, %struct.POP3** %10, align 8
  %21 = icmp ne %struct.POP3* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* @CURLE_OK, align 8
  store i64 %23, i64* %4, align 8
  br label %44

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %29 = call i32 @connclose(%struct.connectdata* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.POP3*, %struct.POP3** %10, align 8
  %33 = getelementptr inbounds %struct.POP3, %struct.POP3* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @Curl_safefree(i32 %34)
  %36 = load %struct.POP3*, %struct.POP3** %10, align 8
  %37 = getelementptr inbounds %struct.POP3, %struct.POP3* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @Curl_safefree(i32 %38)
  %40 = load i32, i32* @FTPTRANSFER_BODY, align 4
  %41 = load %struct.POP3*, %struct.POP3** %10, align 8
  %42 = getelementptr inbounds %struct.POP3, %struct.POP3* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %31, %22
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i32 @Curl_safefree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
