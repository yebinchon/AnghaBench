; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_IsMultiplexingPossible.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_IsMultiplexingPossible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.connectdata = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4
@CURL_HTTP_VERSION_2 = common dso_local global i64 0, align 8
@CURLPIPE_MULTIPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*)* @IsMultiplexingPossible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsMultiplexingPossible(%struct.Curl_easy* %0, %struct.connectdata* %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store %struct.connectdata* %1, %struct.connectdata** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @Curl_multiplex_wanted(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CURL_HTTP_VERSION_2, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @CURLPIPE_MULTIPLEX, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %32, %26
  br label %44

44:                                               ; preds = %43, %20, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @Curl_multiplex_wanted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
