; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_wps_cancel.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_wps_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WPS: PBC is set - cancelling it\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_wps_cancel(%struct.wps_registrar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_registrar*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %3, align 8
  %4 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %5 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %12 = call i32 @wps_registrar_pbc_timeout(%struct.wps_registrar* %11)
  store i32 1, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %15 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_registrar_pbc_timeout(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
