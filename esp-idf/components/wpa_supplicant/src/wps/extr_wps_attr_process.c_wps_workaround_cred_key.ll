; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_workaround_cred_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_workaround_cred_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i32, i32, i64* }

@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"WPS: Workaround - remove NULL termination from ASCII passphrase\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_credential*)* @wps_workaround_cred_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_workaround_cred_key(%struct.wps_credential* %0) #0 {
  %2 = alloca %struct.wps_credential*, align 8
  store %struct.wps_credential* %0, %struct.wps_credential** %2, align 8
  %3 = load %struct.wps_credential*, %struct.wps_credential** %2, align 8
  %4 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %7 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load %struct.wps_credential*, %struct.wps_credential** %2, align 8
  %13 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 8
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load %struct.wps_credential*, %struct.wps_credential** %2, align 8
  %18 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.wps_credential*, %struct.wps_credential** %2, align 8
  %23 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.wps_credential*, %struct.wps_credential** %2, align 8
  %26 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.wps_credential*, %struct.wps_credential** %2, align 8
  %37 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %21, %16, %11, %1
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
