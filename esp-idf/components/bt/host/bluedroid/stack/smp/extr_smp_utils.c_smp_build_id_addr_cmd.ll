; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_build_id_addr_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_build_id_addr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* (...)* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"smp_build_id_addr_cmd\0A\00", align 1
@SMP_ID_ADDR_SIZE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@SMP_OPCODE_ID_ADDR = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BLE_ADDR_RANDOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i32*)* @smp_build_id_addr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @smp_build_id_addr_cmd(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @UNUSED(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @UNUSED(i32* %9)
  %11 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SMP_ID_ADDR_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 8, %13
  %15 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @osi_malloc(i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 1
  %25 = bitcast %struct.TYPE_10__* %24 to i32**
  %26 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32** %28, i32*** %6, align 8
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32, i32* @SMP_OPCODE_ID_ADDR, align 4
  %31 = call i32 @UINT8_TO_STREAM(i32** %29, i32 %30)
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %33 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0, i32 1), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0, i32 2), align 4
  %38 = call i64 @memcmp(i32 %36, i32 %37, i32 6)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32**, i32*** %6, align 8
  %42 = call i32 @UINT8_TO_STREAM(i32** %41, i32 1)
  %43 = load i32**, i32*** %6, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @btm_cb, i32 0, i32 0, i32 0, i32 1), align 8
  %45 = call i32 @BDADDR_TO_STREAM(i32** %43, i32 %44)
  br label %57

46:                                               ; preds = %35, %22
  %47 = load i32**, i32*** %6, align 8
  %48 = call i32 @UINT8_TO_STREAM(i32** %47, i32 0)
  %49 = load i32**, i32*** %6, align 8
  %50 = call %struct.TYPE_12__* (...) @controller_get_interface()
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__* (...)*, %struct.TYPE_11__* (...)** %51, align 8
  %53 = call %struct.TYPE_11__* (...) %52()
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BDADDR_TO_STREAM(i32** %49, i32 %55)
  br label %57

57:                                               ; preds = %46, %40
  %58 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SMP_ID_ADDR_SIZE, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %65
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32**, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @BDADDR_TO_STREAM(i32**, i32) #1

declare dso_local %struct.TYPE_12__* @controller_get_interface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
