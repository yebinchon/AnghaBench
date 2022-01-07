; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_get_next_buffer_to_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_get_next_buffer_to_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (i32, i32)* }
%struct.TYPE_26__ = type { %struct.TYPE_27__** }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_23__, i32, %struct.TYPE_20__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 (i32, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64, i64 }

@L2CAP_FCR_BASIC_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"l2cu_get_buffer_to_send() #2: No data to be sent\00", align 1
@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@L2CAP_NUM_FIXED_CHNLS = common dso_local global i32 0, align 4
@l2cb = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @l2cu_get_next_buffer_to_send(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %7 = call %struct.TYPE_27__* @l2cu_get_next_channel_in_rr(%struct.TYPE_26__* %6)
  store %struct.TYPE_27__* %7, %struct.TYPE_27__** %4, align 8
  %8 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %9 = icmp eq %struct.TYPE_27__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %75

11:                                               ; preds = %1
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %21 = call i32* @l2c_fcr_get_next_xmit_sdu_seg(%struct.TYPE_27__* %20, i32 0)
  store i32* %21, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %75

24:                                               ; preds = %19
  br label %36

25:                                               ; preds = %11
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @fixed_queue_dequeue(i32 %28, i32 0)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* null, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %75

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %40 = icmp ne %struct.TYPE_25__* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = icmp ne i32 (i32, i32)* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %63(i32 %66, i32 1)
  br label %68

68:                                               ; preds = %57, %49, %41, %36
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %70 = call i32 @l2cu_check_channel_congestion(%struct.TYPE_27__* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %73 = call i32 @l2cu_set_acl_hci_header(i32* %71, %struct.TYPE_27__* %72)
  %74 = load i32*, i32** %5, align 8
  store i32* %74, i32** %2, align 8
  br label %75

75:                                               ; preds = %68, %33, %23, %10
  %76 = load i32*, i32** %2, align 8
  ret i32* %76
}

declare dso_local %struct.TYPE_27__* @l2cu_get_next_channel_in_rr(%struct.TYPE_26__*) #1

declare dso_local i32* @l2c_fcr_get_next_xmit_sdu_seg(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*) #1

declare dso_local i32 @l2cu_check_channel_congestion(%struct.TYPE_27__*) #1

declare dso_local i32 @l2cu_set_acl_hci_header(i32*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
