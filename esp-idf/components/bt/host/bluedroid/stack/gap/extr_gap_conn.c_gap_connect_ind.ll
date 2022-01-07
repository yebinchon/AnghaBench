; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_gap_connect_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_gap_connect_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i64, i32, i32* }

@gap_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GAP_MAX_CONNECTIONS = common dso_local global i64 0, align 8
@GAP_CCB_STATE_LISTENING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"*******\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"WARNING: GAP Conn Indication for Unexpected Bd Addr...Disconnecting\00", align 1
@GAP_CCB_STATE_CFG_SETUP = common dso_local global i64 0, align 8
@L2CAP_CONN_OK = common dso_local global i32 0, align 4
@bt_uuid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"GAP_CONN - Rcvd L2CAP conn ind, CID: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32)* @gap_connect_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_connect_ind(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gap_cb, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %10, align 8
  br label %12

12:                                               ; preds = %44, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @GAP_MAX_CONNECTIONS, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GAP_CCB_STATE_LISTENING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @BD_ADDR_LEN, align 4
  %40 = call i32 @memcmp(i32 %35, i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34, %28
  br label %49

43:                                               ; preds = %34, %22, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %10, align 8
  br label %12

49:                                               ; preds = %42, %12
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @GAP_MAX_CONNECTIONS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = call i32 @GAP_TRACE_WARNING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @GAP_TRACE_WARNING(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @GAP_TRACE_WARNING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @L2CA_DISCONNECT_REQ(i64 %57)
  br label %89

59:                                               ; preds = %49
  %60 = load i64, i64* @GAP_CCB_STATE_CFG_SETUP, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @BD_ADDR_LEN, align 4
  %69 = call i32 @memcpy(i32* %66, i32 %67, i32 %68)
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @L2CAP_CONN_OK, align 4
  %77 = load i32, i32* @L2CAP_CONN_OK, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  %80 = call i32 @L2CA_CONNECT_RSP(i32 %73, i32 %74, i64 %75, i32 %76, i32 %77, i32* %79, i32* @bt_uuid)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @GAP_TRACE_EVENT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = call i32 @L2CA_CONFIG_REQ(i64 %85, i32* %87)
  br label %89

89:                                               ; preds = %59, %53
  ret void
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @GAP_TRACE_WARNING(i8*) #1

declare dso_local i32 @L2CA_DISCONNECT_REQ(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @L2CA_CONNECT_RSP(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @GAP_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @L2CA_CONFIG_REQ(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
