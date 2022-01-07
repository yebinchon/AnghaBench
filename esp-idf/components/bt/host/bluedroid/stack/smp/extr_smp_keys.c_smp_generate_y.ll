; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_generate_y.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_generate_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SMP_PAIR_FAIL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"smp_generate_y \0A\00", align 1
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@BT_OCTET8_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"smp_generate_y failed\00", align 1
@SMP_AUTH_CMPL_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @smp_generate_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_generate_y(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @UNUSED(i32* %8)
  %10 = load i32, i32* @SMP_PAIR_FAIL_UNKNOWN, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BTM_GetDeviceDHK(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BT_OCTET16_LEN, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BT_OCTET8_LEN, align 4
  %20 = call i32 @SMP_Encrypt(i32 %14, i32 %15, i32 %18, i32 %19, i32* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load i32, i32* @SMP_AUTH_CMPL_EVT, align 4
  %26 = call i32 @smp_sm_event(%struct.TYPE_5__* %24, i32 %25, i32* %7)
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = call i32 @smp_process_ediv(%struct.TYPE_5__* %28, i32* %6)
  br label %30

30:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @SMP_TRACE_DEBUG(i8*) #1

declare dso_local i32 @BTM_GetDeviceDHK(i32) #1

declare dso_local i32 @SMP_Encrypt(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @smp_process_ediv(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
