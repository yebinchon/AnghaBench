; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_add_sm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_add_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i64 }

@WPA_SM_MAX_INDEX = common dso_local global i64 0, align 8
@s_sm_valid_bitmap = common dso_local global i32 0, align 4
@s_sm_table = common dso_local global %struct.wpa_state_machine** null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"add sm already exist i=%d\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"add sm, index=%d bitmap=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_state_machine*)* @wpa_auth_add_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_auth_add_sm(%struct.wpa_state_machine* %0) #0 {
  %2 = alloca %struct.wpa_state_machine*, align 8
  %3 = alloca i64, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %2, align 8
  %4 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %5 = icmp ne %struct.wpa_state_machine* %4, null
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %45, %6
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @WPA_SM_MAX_INDEX, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @BIT(i64 %12)
  %14 = load i32, i32* @s_sm_valid_bitmap, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** @s_sm_table, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.wpa_state_machine*, %struct.wpa_state_machine** %18, i64 %19
  %21 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %20, align 8
  %22 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %23 = icmp eq %struct.wpa_state_machine* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %17
  br label %45

29:                                               ; preds = %11
  %30 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %31 = load %struct.wpa_state_machine**, %struct.wpa_state_machine*** @s_sm_table, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.wpa_state_machine*, %struct.wpa_state_machine** %31, i64 %32
  store %struct.wpa_state_machine* %30, %struct.wpa_state_machine** %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @BIT(i64 %34)
  %36 = load i32, i32* @s_sm_valid_bitmap, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @s_sm_valid_bitmap, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* @s_sm_valid_bitmap, align 4
  %44 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %42, i32 %43)
  br label %49

45:                                               ; preds = %28
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %7

48:                                               ; preds = %7
  br label %49

49:                                               ; preds = %29, %48, %1
  ret void
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
