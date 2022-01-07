; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_upgrade_tls.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_upgrade_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.imap_conn }
%struct.imap_conn = type { i64, i64 }

@FIRSTSOCKET = common dso_local global i32 0, align 4
@IMAP_UPGRADETLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_upgrade_tls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_upgrade_tls(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.imap_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %6 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.imap_conn* %7, %struct.imap_conn** %3, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %9 = load i32, i32* @FIRSTSOCKET, align 4
  %10 = load %struct.imap_conn*, %struct.imap_conn** %3, align 8
  %11 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %10, i32 0, i32 1
  %12 = call i32 @Curl_ssl_connect_nonblocking(%struct.connectdata* %8, i32 %9, i64* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %1
  %16 = load %struct.imap_conn*, %struct.imap_conn** %3, align 8
  %17 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IMAP_UPGRADETLS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %23 = load i64, i64* @IMAP_UPGRADETLS, align 8
  %24 = call i32 @state(%struct.connectdata* %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.imap_conn*, %struct.imap_conn** %3, align 8
  %27 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %32 = call i32 @imap_to_imaps(%struct.connectdata* %31)
  %33 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %34 = call i32 @imap_perform_capability(%struct.connectdata* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @Curl_ssl_connect_nonblocking(%struct.connectdata*, i32, i64*) #1

declare dso_local i32 @state(%struct.connectdata*, i64) #1

declare dso_local i32 @imap_to_imaps(%struct.connectdata*) #1

declare dso_local i32 @imap_perform_capability(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
