; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_done_sending.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_done_sending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.SingleRequest = type { i32 }

@KEEP_SEND = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_done_sending(%struct.connectdata* %0, %struct.SingleRequest* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca %struct.SingleRequest*, align 8
  %6 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store %struct.SingleRequest* %1, %struct.SingleRequest** %5, align 8
  %7 = load i32, i32* @KEEP_SEND, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.SingleRequest*, %struct.SingleRequest** %5, align 8
  %10 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %14 = call i32 @Curl_http2_done_sending(%struct.connectdata* %13)
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = call i32 @Curl_quic_done_sending(%struct.connectdata* %15)
  %17 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = call i64 @Curl_readrewind(%struct.connectdata* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %3, align 8
  br label %32

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i64, i64* @CURLE_OK, align 8
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @Curl_http2_done_sending(%struct.connectdata*) #1

declare dso_local i32 @Curl_quic_done_sending(%struct.connectdata*) #1

declare dso_local i64 @Curl_readrewind(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
