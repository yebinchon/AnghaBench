; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_calculate_comfirm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_calculate_comfirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SMP_PAIR_FAIL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smp_calculate_comfirm \0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P1' = r XOR p1\00", align 1
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"smp_generate_csrk failed\00", align 1
@SMP_AUTH_CMPL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_calculate_comfirm(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @UNUSED(i32 %10)
  %12 = load i32, i32* @SMP_PAIR_FAIL_UNKNOWN, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @smp_gen_p1_4_confirm(%struct.TYPE_6__* %14, i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @smp_xor_128(i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @smp_debug_print_nbyte_little_endian(i32* %21, i32* bitcast ([15 x i8]* @.str.1 to i32*), i32 16)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BT_OCTET16_LEN, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @BT_OCTET16_LEN, align 4
  %29 = call i32 @SMP_Encrypt(i32 %25, i32 %26, i64 %27, i32 %28, i32* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* @SMP_AUTH_CMPL_EVT, align 4
  %35 = call i32 @smp_sm_event(%struct.TYPE_6__* %33, i32 %34, i32* %9)
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = call i32 @smp_calculate_comfirm_cont(%struct.TYPE_6__* %37, i32* %8)
  br label %39

39:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @SMP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @smp_gen_p1_4_confirm(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @smp_xor_128(i64, i64) #1

declare dso_local i32 @smp_debug_print_nbyte_little_endian(i32*, i32*, i32) #1

declare dso_local i32 @SMP_Encrypt(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @smp_calculate_comfirm_cont(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
