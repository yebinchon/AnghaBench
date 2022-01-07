; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_init_telnet.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_init_telnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TELNET* }
%struct.TELNET = type { i8**, i8**, i8**, i32 }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURL_TS_DATA = common dso_local global i32 0, align 4
@CURL_YES = common dso_local global i8* null, align 8
@CURL_TELOPT_SGA = common dso_local global i64 0, align 8
@CURL_TELOPT_BINARY = common dso_local global i64 0, align 8
@CURL_TELOPT_ECHO = common dso_local global i64 0, align 8
@CURL_TELOPT_NAWS = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @init_telnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_telnet(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.TELNET*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %5 = call %struct.TELNET* @calloc(i32 1, i32 32)
  store %struct.TELNET* %5, %struct.TELNET** %4, align 8
  %6 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %7 = icmp ne %struct.TELNET* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %9, i32* %2, align 4
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.TELNET* %11, %struct.TELNET** %16, align 8
  %17 = load i32, i32* @CURL_TS_DATA, align 4
  %18 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %19 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %21 = call i32 @CURL_SB_CLEAR(%struct.TELNET* %20)
  %22 = load i8*, i8** @CURL_YES, align 8
  %23 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %24 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* @CURL_TELOPT_SGA, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8* %22, i8** %27, align 8
  %28 = load i8*, i8** @CURL_YES, align 8
  %29 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %30 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* @CURL_TELOPT_SGA, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  store i8* %28, i8** %33, align 8
  %34 = load i8*, i8** @CURL_YES, align 8
  %35 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %36 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* @CURL_TELOPT_BINARY, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load i8*, i8** @CURL_YES, align 8
  %41 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %42 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* @CURL_TELOPT_BINARY, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %40, i8** %45, align 8
  %46 = load i8*, i8** @CURL_YES, align 8
  %47 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %48 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @CURL_TELOPT_ECHO, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %46, i8** %51, align 8
  %52 = load i8*, i8** @CURL_YES, align 8
  %53 = load %struct.TELNET*, %struct.TELNET** %4, align 8
  %54 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* @CURL_TELOPT_NAWS, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8* %52, i8** %57, align 8
  %58 = load i32, i32* @CURLE_OK, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %10, %8
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.TELNET* @calloc(i32, i32) #1

declare dso_local i32 @CURL_SB_CLEAR(%struct.TELNET*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
