; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_network_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_network_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Network Key attribute missing\00", align 1
@WPS_ENCR_WEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"WPS-STRICT: Invalid Network Key attribute value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i32)* @wps_validate_network_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_network_key(i64* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64*, i64** %6, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %49

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load i64*, i64** %8, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i64*, i64** %8, align 8
  %24 = call i64 @WPA_GET_BE16(i64* %23)
  %25 = load i64, i64* @WPS_ENCR_WEP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22, %19
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %28, 8
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %31, 64
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %30, %27, %22
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %41, 64
  br i1 %42, label %43, label %48

43:                                               ; preds = %40, %33
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @wpa_hexdump_ascii_key(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64* %45, i64 %46)
  store i32 -1, i32* %5, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %43, %18, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @WPA_GET_BE16(i64*) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
