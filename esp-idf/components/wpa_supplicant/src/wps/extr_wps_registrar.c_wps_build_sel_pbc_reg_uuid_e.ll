; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_sel_pbc_reg_uuid_e.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_sel_pbc_reg_uuid_e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@DEV_PW_PUSHBUTTON = common dso_local global i64 0, align 8
@DEV_PW_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_registrar*, %struct.wpabuf*)* @wps_build_sel_pbc_reg_uuid_e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_sel_pbc_reg_uuid_e(%struct.wps_registrar* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %7 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %8 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @DEV_PW_PUSHBUTTON, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @DEV_PW_DEFAULT, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* %6, align 8
  %17 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %18 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %24 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %29 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @DEV_PW_PUSHBUTTON, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %37 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %49

41:                                               ; preds = %35
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %43 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %44 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wps_build_uuid_e(%struct.wpabuf* %42, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %40, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @wps_build_uuid_e(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
