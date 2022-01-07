; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_credential_wrap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_credential_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_credential = type { i32 }

@ATTR_CRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_credential_wrap(%struct.wpabuf* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_credential*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %5, align 8
  %7 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %7, %struct.wpabuf** %6, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %13 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %14 = call i64 @wps_build_credential(%struct.wpabuf* %12, %struct.wps_credential* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call i32 @wpabuf_free(%struct.wpabuf* %17)
  store i32 -1, i32* %3, align 4
  br label %32

19:                                               ; preds = %11
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = load i32, i32* @ATTR_CRED, align 4
  %22 = call i32 @wpabuf_put_be16(%struct.wpabuf* %20, i32 %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %25 = call i32 @wpabuf_len(%struct.wpabuf* %24)
  %26 = call i32 @wpabuf_put_be16(%struct.wpabuf* %23, i32 %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %29 = call i32 @wpabuf_put_buf(%struct.wpabuf* %27, %struct.wpabuf* %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %31 = call i32 @wpabuf_free(%struct.wpabuf* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %16, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_credential(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
