; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_service_connection.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_service_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httprequest = type { i32, i32, i64, i64, i32, i64, i32 }

@got_exit_signal = common dso_local global i64 0, align 8
@prevbounce = common dso_local global i64 0, align 8
@prevtestno = common dso_local global i32 0, align 4
@prevpartno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"BOUNCE part number to %ld\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"special request received, no persistency\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"instructed to close connection after server-reply\00", align 1
@is_proxy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"received CONNECT but isn't running as proxy!\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"=> persistent connection request ended, awaits new request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.httprequest*, i32, i8*)* @service_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_connection(i32 %0, %struct.httprequest* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.httprequest*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.httprequest* %1, %struct.httprequest** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* @got_exit_signal, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %111

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %17 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %24 = call i32 @get_request(i32 %22, %struct.httprequest* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %111

29:                                               ; preds = %21
  br label %15

30:                                               ; preds = %15
  %31 = load i64, i64* @prevbounce, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %35 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @prevtestno, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %41 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @prevpartno, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %47 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %51 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %56

54:                                               ; preds = %39, %33
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* @prevbounce, align 8
  store i32 -1, i32* @prevtestno, align 4
  store i32 -1, i32* @prevpartno, align 4
  br label %56

56:                                               ; preds = %54, %45
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %60 = call i32 @send_doc(i32 %58, %struct.httprequest* %59)
  %61 = load i64, i64* @got_exit_signal, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %111

64:                                               ; preds = %57
  %65 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %66 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %111

71:                                               ; preds = %64
  %72 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %73 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %111

78:                                               ; preds = %71
  %79 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %80 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i32, i32* @is_proxy, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %111

88:                                               ; preds = %83
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %92 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @http_connect(i32* %6, i32 %89, i8* %90, i32 %93)
  store i32 -1, i32* %5, align 4
  br label %111

95:                                               ; preds = %78
  %96 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %97 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %102 = call i32 @http2(%struct.httprequest* %101)
  store i32 -1, i32* %5, align 4
  br label %111

103:                                              ; preds = %95
  %104 = load %struct.httprequest*, %struct.httprequest** %7, align 8
  %105 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %111

110:                                              ; preds = %103
  store i32 -1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %108, %100, %88, %86, %76, %69, %63, %27, %13
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @get_request(i32, %struct.httprequest*) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @send_doc(i32, %struct.httprequest*) #1

declare dso_local i32 @http_connect(i32*, i32, i8*, i32) #1

declare dso_local i32 @http2(%struct.httprequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
