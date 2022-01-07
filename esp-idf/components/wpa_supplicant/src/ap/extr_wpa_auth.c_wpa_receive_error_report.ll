; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_receive_error_report.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_receive_error_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_state_machine = type { i64, i32 }

@WPA_CIPHER_TKIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, %struct.wpa_state_machine*, i32)* @wpa_receive_error_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_receive_error_report(%struct.wpa_authenticator* %0, %struct.wpa_state_machine* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca %struct.wpa_state_machine*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store %struct.wpa_state_machine* %1, %struct.wpa_state_machine** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %38

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %37

28:                                               ; preds = %21, %18
  %29 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %30 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @wpa_auth_mic_failure_report(%struct.wpa_authenticator* %29, i32 %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %41

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %40 = call i32 @wpa_request_new_ptk(%struct.wpa_state_machine* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @wpa_auth_mic_failure_report(%struct.wpa_authenticator*, i32) #1

declare dso_local i32 @wpa_request_new_ptk(%struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
