; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_auth_type_flags.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_auth_type_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WPS-STRICT: Authentication Type Flags attribute missing\00", align 1
@WPS_AUTH_TYPES = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"WPS-STRICT: Invalid Authentication Type Flags attribute value 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @wps_validate_auth_type_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_auth_type_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %34

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @WPA_GET_BE16(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @WPS_AUTH_TYPES, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %3, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %15, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
