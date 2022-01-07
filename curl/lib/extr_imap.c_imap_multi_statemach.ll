; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_multi_statemach.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_multi_statemach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.imap_conn }
%struct.imap_conn = type { i64, i32, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@PROTOPT_SSL = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IMAP_STOP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @imap_multi_statemach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_multi_statemach(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.imap_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.imap_conn* %11, %struct.imap_conn** %7, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PROTOPT_SSL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %22 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %27 = load i32, i32* @FIRSTSOCKET, align 4
  %28 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %29 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %28, i32 0, i32 2
  %30 = call i64 @Curl_ssl_connect_nonblocking(%struct.connectdata* %26, i32 %27, i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %35 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33, %25
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %60

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %20, %2
  %42 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %43 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %42, i32 0, i32 1
  %44 = load i32, i32* @FALSE, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i64 @Curl_pp_statemach(i32* %43, i32 %44, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.imap_conn*, %struct.imap_conn** %7, align 8
  %48 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IMAP_STOP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @TRUE, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @FALSE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %56, %38
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i64 @Curl_ssl_connect_nonblocking(%struct.connectdata*, i32, i32*) #1

declare dso_local i64 @Curl_pp_statemach(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
