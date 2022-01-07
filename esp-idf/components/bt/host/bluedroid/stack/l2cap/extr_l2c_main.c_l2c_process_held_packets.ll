; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_main.c_l2c_process_held_packets.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_main.c_l2c_process_held_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@l2cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"L2CAP HOLD CONTINUE\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"L2CAP HOLD TIMEOUT\00", align 1
@BTU_TTYPE_L2CAP_HOLD = common dso_local global i32 0, align 4
@BT_1SEC_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_process_held_packets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 1), align 4
  %6 = call i64 @list_is_empty(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 0))
  %14 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %17

15:                                               ; preds = %9
  %16 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 1), align 4
  %19 = call i32* @list_begin(i32 %18)
  store i32* %19, i32** %3, align 8
  br label %20

20:                                               ; preds = %51, %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 1), align 4
  %23 = call i32* @list_end(i32 %22)
  %24 = icmp ne i32* %21, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call %struct.TYPE_6__* @list_node(i32* %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @list_next(i32* %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %32, %25
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 1), align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = call i32 @list_remove(i32 %44, %struct.TYPE_6__* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 65535, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 @l2c_rcv_acl_data(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %43, %37
  br label %20

52:                                               ; preds = %20
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 1), align 4
  %54 = call i64 @list_is_empty(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @BTU_TTYPE_L2CAP_HOLD, align 4
  %58 = load i32, i32* @BT_1SEC_TIMEOUT, align 4
  %59 = call i32 @btu_start_timer(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @l2cb, i32 0, i32 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %8, %56, %52
  ret void
}

declare dso_local i64 @list_is_empty(i32) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*) #1

declare dso_local i32* @list_begin(i32) #1

declare dso_local i32* @list_end(i32) #1

declare dso_local %struct.TYPE_6__* @list_node(i32*) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local i32 @list_remove(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @l2c_rcv_acl_data(%struct.TYPE_6__*) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
