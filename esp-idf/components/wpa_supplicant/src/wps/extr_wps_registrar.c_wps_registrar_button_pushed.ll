; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_button_pushed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_button_pushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32, i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WPS: PBC overlap - do not start PBC mode\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"WPS: Button pushed - PBC mode started\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_button_pushed(%struct.wps_registrar* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca i32*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %10 = call i64 @wps_registrar_pbc_overlap(%struct.wps_registrar* %9, i32* null, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wps_pbc_overlap_event(i32 %17)
  store i32 -2, i32* %3, align 4
  br label %48

19:                                               ; preds = %8, %2
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %23 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %25 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %27 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %32 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @os_memcpy(i32 %33, i32* %34, i32 %35)
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %39 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @os_memset(i32 %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %45 = call i32 @wps_registrar_add_authorized_mac(%struct.wps_registrar* %44, i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %46 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %47 = call i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @wps_registrar_pbc_overlap(%struct.wps_registrar*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_pbc_overlap_event(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wps_registrar_add_authorized_mac(%struct.wps_registrar*, i32*) #1

declare dso_local i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
