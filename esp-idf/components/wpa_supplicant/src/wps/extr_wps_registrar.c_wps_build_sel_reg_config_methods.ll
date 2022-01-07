; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_sel_reg_config_methods.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_sel_reg_config_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WPS:  * Selected Registrar Config Methods (%x)\00", align 1
@ATTR_SELECTED_REGISTRAR_CONFIG_METHODS = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_registrar*, %struct.wpabuf*)* @wps_build_sel_reg_config_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_sel_reg_config_methods(%struct.wps_registrar* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %7 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %8 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %23 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %12
  %27 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %28 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wps_set_pushbutton(i32* %6, i32 %31)
  br label %33

33:                                               ; preds = %26, %12
  %34 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %35 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %40 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = load i32, i32* @ATTR_SELECTED_REGISTRAR_CONFIG_METHODS, align 4
  %48 = call i32 @wpabuf_put_be16(%struct.wpabuf* %46, i32 %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %50 = call i32 @wpabuf_put_be16(%struct.wpabuf* %49, i32 2)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @wpabuf_put_be16(%struct.wpabuf* %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %42, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @wps_set_pushbutton(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
