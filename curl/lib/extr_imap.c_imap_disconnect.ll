; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_disconnect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.imap_conn }
%struct.imap_conn = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @imap_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_disconnect(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imap_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store %struct.imap_conn* %8, %struct.imap_conn** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %13 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %19 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %28 = call i32 @imap_perform_logout(%struct.connectdata* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @imap_block_statemach(%struct.connectdata* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %17, %11, %2
  %36 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %37 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %36, i32 0, i32 3
  %38 = call i32 @Curl_pp_disconnect(%struct.TYPE_10__* %37)
  %39 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %40 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %41 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @Curl_sasl_cleanup(%struct.connectdata* %39, i32 %43)
  %45 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %46 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @Curl_safefree(i32 %47)
  %49 = load %struct.imap_conn*, %struct.imap_conn** %5, align 8
  %50 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @Curl_safefree(i32 %51)
  %53 = load i32, i32* @CURLE_OK, align 4
  ret i32 %53
}

declare dso_local i32 @imap_perform_logout(%struct.connectdata*) #1

declare dso_local i32 @imap_block_statemach(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_pp_disconnect(%struct.TYPE_10__*) #1

declare dso_local i32 @Curl_sasl_cleanup(%struct.connectdata*, i32) #1

declare dso_local i32 @Curl_safefree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
