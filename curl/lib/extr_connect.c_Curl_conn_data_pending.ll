; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_conn_data_pending.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_Curl_conn_data_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32* }

@CURL_CSELECT_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_conn_data_pending(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @Curl_ssl_data_pending(%struct.connectdata* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @Curl_recv_has_postponed_data(%struct.connectdata* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SOCKET_READABLE(i32 %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CURL_CSELECT_IN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %17
  %34 = phi i1 [ false, %17 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @Curl_ssl_data_pending(%struct.connectdata*, i32) #1

declare dso_local i64 @Curl_recv_has_postponed_data(%struct.connectdata*, i32) #1

declare dso_local i32 @SOCKET_READABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
