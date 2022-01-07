; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_init_httprequest.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_init_httprequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httprequest = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i8*, i8*, i64, i8*, i8*, i32, i8*, i64, i32, i64, i64 }

@DOCNUMBER_NOTHING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@RCMD_NORMALREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.httprequest*)* @init_httprequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_httprequest(%struct.httprequest* %0) #0 {
  %2 = alloca %struct.httprequest*, align 8
  store %struct.httprequest* %0, %struct.httprequest** %2, align 8
  %3 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %4 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %3, i32 0, i32 19
  store i64 0, i64* %4, align 8
  %5 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %6 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %5, i32 0, i32 18
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @DOCNUMBER_NOTHING, align 4
  %8 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %9 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %8, i32 0, i32 17
  store i32 %7, i32* %9, align 8
  %10 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %11 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %10, i32 0, i32 16
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** @FALSE, align 8
  %13 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %14 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 15
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %17 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %16, i32 0, i32 14
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %20 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %19, i32 0, i32 13
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %23 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %22, i32 0, i32 12
  store i8* %21, i8** %23, align 8
  %24 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %25 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %24, i32 0, i32 11
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %28 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %27, i32 0, i32 10
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %31 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %30, i32 0, i32 9
  store i8* %29, i8** %31, align 8
  %32 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %33 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %35 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @RCMD_NORMALREQ, align 4
  %37 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %38 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %40 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %42 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %44 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %46 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %48 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.httprequest*, %struct.httprequest** %2, align 8
  %50 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
