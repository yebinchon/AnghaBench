; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_cred_network_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_cred_network_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_credential = type { i64, i64, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPS: Credential did not include Network Key\00", align 1
@WPS_WIFI_AUTH_OPEN = common dso_local global i64 0, align 8
@WPS_ENCR_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"WPS: Workaround - Allow missing mandatory Network Key attribute for open network\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WPS: Network Key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_credential*, i32*, i64)* @wps_process_cred_network_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_cred_network_key(%struct.wps_credential* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_credential*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.wps_credential* %0, %struct.wps_credential** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %14 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WPS_WIFI_AUTH_OPEN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %20 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WPS_ENCR_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %46

27:                                               ; preds = %18, %10
  store i32 -1, i32* %4, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @wpa_hexdump_key(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ule i64 %33, 4
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %37 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @os_memcpy(i32 %38, i32* %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %44 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %35, %28
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %27, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
