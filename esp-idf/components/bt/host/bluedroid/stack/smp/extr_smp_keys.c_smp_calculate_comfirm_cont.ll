; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_calculate_comfirm_cont.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_calculate_comfirm_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32* }

@SMP_PAIR_FAIL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"smp_calculate_comfirm_cont \0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Confirm step 1 p1' = e(k, r XOR p1)  Generated\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"p2' = C1 xor p2\00", align 1
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"smp_calculate_comfirm_cont failed\0A\00", align 1
@SMP_AUTH_CMPL_EVT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"p_cb->rand_enc_proc_state=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @smp_calculate_comfirm_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_calculate_comfirm_cont(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load i32, i32* @SMP_PAIR_FAIL_UNKNOWN, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 (i8*, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @smp_debug_print_nbyte_little_endian(i32* %13, i32* bitcast ([3 x i8]* @.str.2 to i32*), i32 16)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @smp_gen_p2_4_confirm(%struct.TYPE_13__* %15, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @smp_xor_128(i64 %18, i32* %21)
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @smp_debug_print_nbyte_little_endian(i32* %24, i32* bitcast ([16 x i8]* @.str.3 to i32*), i32 16)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BT_OCTET16_LEN, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @BT_OCTET16_LEN, align 4
  %32 = call i32 @SMP_Encrypt(i32 %28, i32 %29, i64 %30, i32 %31, %struct.TYPE_12__* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = load i32, i32* @SMP_AUTH_CMPL_EVT, align 4
  %38 = call i32 @smp_sm_event(%struct.TYPE_13__* %36, i32 %37, i32* %7)
  br label %54

39:                                               ; preds = %2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %53 [
    i32 128, label %47
    i32 129, label %50
  ]

47:                                               ; preds = %39
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = call i32 @smp_process_confirm(%struct.TYPE_13__* %48, %struct.TYPE_12__* %6)
  br label %53

50:                                               ; preds = %39
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = call i32 @smp_process_compare(%struct.TYPE_13__* %51, %struct.TYPE_12__* %6)
  br label %53

53:                                               ; preds = %39, %50, %47
  br label %54

54:                                               ; preds = %53, %34
  ret void
}

declare dso_local i32 @SMP_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @smp_debug_print_nbyte_little_endian(i32*, i32*, i32) #1

declare dso_local i32 @smp_gen_p2_4_confirm(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @smp_xor_128(i64, i32*) #1

declare dso_local i32 @SMP_Encrypt(i32, i32, i64, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @smp_process_confirm(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @smp_process_compare(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
