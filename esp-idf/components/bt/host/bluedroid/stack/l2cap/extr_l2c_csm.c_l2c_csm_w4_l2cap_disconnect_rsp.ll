; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_w4_l2cap_disconnect_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_w4_l2cap_disconnect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [53 x i8] c"L2CAP - LCID: 0x%04x  st: W4_L2CAP_DISC_RSP  evt: %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x\00", align 1
@L2CAP_DISC_OK = common dso_local global i32 0, align 4
@L2CAP_DISC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i8*)* @l2c_csm_w4_l2cap_disconnect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_csm_w4_l2cap_disconnect_rsp(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i32, i32)**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = bitcast i32 (i32, i32)* %14 to i32 (i32, i32)**
  store i32 (i32, i32)** %15, i32 (i32, i32)*** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @l2c_csm_get_event_name(i32 %22)
  %24 = call i32 (i8*, i32, ...) @L2CAP_TRACE_EVENT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %84 [
    i32 131, label %26
    i32 132, label %40
    i32 129, label %67
    i32 128, label %67
    i32 133, label %81
    i32 130, label %81
  ]

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i32 @l2cu_release_ccb(%struct.TYPE_8__* %27)
  %29 = load i32 (i32, i32)**, i32 (i32, i32)*** %7, align 8
  %30 = icmp ne i32 (i32, i32)** %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32 (i32, i32)**, i32 (i32, i32)*** %7, align 8
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @L2CAP_DISC_OK, align 4
  %38 = call i32 %35(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  br label %84

40:                                               ; preds = %3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @l2cu_send_peer_disc_rsp(i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @l2cu_release_ccb(%struct.TYPE_8__* %54)
  %56 = load i32 (i32, i32)**, i32 (i32, i32)*** %7, align 8
  %57 = icmp ne i32 (i32, i32)** %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %40
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32 (i32, i32)**, i32 (i32, i32)*** %7, align 8
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @L2CAP_DISC_OK, align 4
  %65 = call i32 %62(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %40
  br label %84

67:                                               ; preds = %3, %3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = call i32 @l2cu_release_ccb(%struct.TYPE_8__* %68)
  %70 = load i32 (i32, i32)**, i32 (i32, i32)*** %7, align 8
  %71 = icmp ne i32 (i32, i32)** %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @L2CAP_TRACE_API(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32 (i32, i32)**, i32 (i32, i32)*** %7, align 8
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @L2CAP_DISC_TIMEOUT, align 4
  %79 = call i32 %76(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %67
  br label %84

81:                                               ; preds = %3, %3
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @osi_free(i8* %82)
  br label %84

84:                                               ; preds = %3, %81, %80, %66, %39
  ret void
}

declare dso_local i32 @L2CAP_TRACE_EVENT(i8*, i32, ...) #1

declare dso_local i32 @l2c_csm_get_event_name(i32) #1

declare dso_local i32 @l2cu_release_ccb(%struct.TYPE_8__*) #1

declare dso_local i32 @L2CAP_TRACE_API(i8*, i32) #1

declare dso_local i32 @l2cu_send_peer_disc_rsp(i32, i32, i32, i32) #1

declare dso_local i32 @osi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
