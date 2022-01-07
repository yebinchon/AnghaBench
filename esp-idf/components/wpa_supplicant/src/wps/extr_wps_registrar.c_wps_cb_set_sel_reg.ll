; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_cb_set_sel_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_cb_set_sel_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i64, i64, i32, i32 (i32, i64, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"WPS: wps_cb_set_sel_reg: sel_reg=%d config_methods=0x%x pbc=%d methods=0x%x\00", align 1
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar*)* @wps_cb_set_sel_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_cb_set_sel_reg(%struct.wps_registrar* %0) #0 {
  %2 = alloca %struct.wps_registrar*, align 8
  %3 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %5 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %4, i32 0, i32 3
  %6 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %5, align 8
  %7 = icmp eq i32 (i32, i64, i32, i32)* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %11 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %3, align 4
  %23 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %24 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %29 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wps_set_pushbutton(i32* %3, i32 %32)
  br label %34

34:                                               ; preds = %27, %14
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %38 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %41 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %46 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %44, i64 %47, i32 %48)
  %50 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %51 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %50, i32 0, i32 3
  %52 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %51, align 8
  %53 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %54 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %57 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %60 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %35
  %64 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  br label %67

65:                                               ; preds = %35
  %66 = load i32, i32* @DEV_PW_DEFAULT, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* %3, align 4
  %70 = call i32 %52(i32 %55, i64 %58, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %8
  ret void
}

declare dso_local i32 @wps_set_pushbutton(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
