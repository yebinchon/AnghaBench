; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_compute_csrk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_compute_csrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@SMP_PAIR_FAIL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smp_compute_csrk div=%x\0A\00", align 1
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"smp_generate_csrk failed\0A\00", align 1
@SMP_BR_AUTH_CMPL_EVT = common dso_local global i32 0, align 4
@SMP_AUTH_CMPL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_compute_csrk(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @UNUSED(i32* %11)
  store i32 1, i32* %7, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @SMP_PAIR_FAIL_UNKNOWN, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BTM_GetDeviceEncRoot(i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @UINT16_TO_STREAM(i32* %21, i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @UINT16_TO_STREAM(i32* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BT_OCTET16_LEN, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %32 = call i32 @SMP_Encrypt(i32 %29, i32 %30, i32* %31, i32 4, %struct.TYPE_8__* %9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %2
  %35 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* @SMP_BR_AUTH_CMPL_EVT, align 4
  %43 = call i32 @smp_br_state_machine_event(%struct.TYPE_9__* %41, i32 %42, i32* %10)
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32, i32* @SMP_AUTH_CMPL_EVT, align 4
  %47 = call i32 @smp_sm_event(%struct.TYPE_9__* %45, i32 %46, i32* %10)
  br label %48

48:                                               ; preds = %44, %40
  br label %60

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BT_OCTET16_LEN, align 4
  %57 = call i32 @memcpy(i8* %53, i32 %55, i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = call i32 @smp_send_csrk_info(%struct.TYPE_9__* %58, i32* null)
  br label %60

60:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @SMP_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @BTM_GetDeviceEncRoot(i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @SMP_Encrypt(i32, i32, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32 @smp_br_state_machine_event(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @smp_send_csrk_info(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
