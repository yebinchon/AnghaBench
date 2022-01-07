; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_data_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_data_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@SDP_STATE_CONNECTED = common dso_local global i64 0, align 8
@SDP_FLAGS_IS_ORIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SDP - Ignored L2CAP data while in state: %d, CID: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SDP - Rcvd L2CAP data, unknown CID: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @sdp_data_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_data_ind(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_5__* @sdpu_find_ccb_by_cid(i32 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SDP_STATE_CONNECTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SDP_FLAGS_IS_ORIG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @sdp_disc_server_rsp(%struct.TYPE_5__* %23, i32* %24)
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @sdp_server_handle_client_req(%struct.TYPE_5__* %27, i32* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %37

31:                                               ; preds = %9
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i8*, i64, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 (i8*, i64, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @osi_free(i32* %43)
  ret void
}

declare dso_local %struct.TYPE_5__* @sdpu_find_ccb_by_cid(i32) #1

declare dso_local i32 @sdp_disc_server_rsp(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @sdp_server_handle_client_req(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i64, ...) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
