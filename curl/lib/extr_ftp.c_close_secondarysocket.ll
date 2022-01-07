; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_close_secondarysocket.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_close_secondarysocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@SECONDARYSOCKET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*)* @close_secondarysocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_secondarysocket(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %3 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %4 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %5 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @SECONDARYSOCKET, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %3, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @SECONDARYSOCKET, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @Curl_closesocket(%struct.connectdata* %12, i64 %18)
  %20 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %21 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @SECONDARYSOCKET, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %20, i64* %25, align 8
  br label %26

26:                                               ; preds = %11, %1
  %27 = load i32, i32* @FALSE, align 4
  %28 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SECONDARYSOCKET, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %27, i32* %33, align 4
  ret void
}

declare dso_local i32 @Curl_closesocket(%struct.connectdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
