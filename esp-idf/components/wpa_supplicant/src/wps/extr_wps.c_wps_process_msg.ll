; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_process_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64 }
%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_process_msg(%struct.wps_data* %0, i32 %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %8 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %9 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %16 = call i32 @wps_registrar_process_msg(%struct.wps_data* %13, i32 %14, %struct.wpabuf* %15)
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %21 = call i32 @wps_enrollee_process_msg(%struct.wps_data* %18, i32 %19, %struct.wpabuf* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @wps_registrar_process_msg(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local i32 @wps_enrollee_process_msg(%struct.wps_data*, i32, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
