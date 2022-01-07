; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_add_haproxy_protocol_header.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_add_haproxy_protocol_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"TCP6\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TCP4\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"PROXY %s %s %s %li %li\0D\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @add_haproxy_protocol_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_haproxy_protocol_header(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i8], align 1
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %19

16:                                               ; preds = %1
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %22 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %35 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %41 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @msnprintf(i8* %20, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %21, i32 %27, i32 %33, i32 %39, i32 %45)
  %47 = call i32* (...) @Curl_add_buffer_init()
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %19
  %51 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %51, i64* %2, align 8
  br label %69

52:                                               ; preds = %19
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %54 = call i64 @Curl_add_bufferf(i32** %5, i8* %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %2, align 8
  br label %69

59:                                               ; preds = %52
  %60 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %61 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %62 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* @FIRSTSOCKET, align 4
  %67 = call i64 @Curl_add_buffer_send(i32** %5, %struct.connectdata* %60, i32* %65, i32 0, i32 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %59, %57, %50
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @Curl_add_buffer_init(...) #1

declare dso_local i64 @Curl_add_bufferf(i32**, i8*) #1

declare dso_local i64 @Curl_add_buffer_send(i32**, %struct.connectdata*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
