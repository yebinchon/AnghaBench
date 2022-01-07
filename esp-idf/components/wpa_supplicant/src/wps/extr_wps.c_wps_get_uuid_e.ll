; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_get_uuid_e.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_get_uuid_e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wps_get_uuid_e(%struct.wpabuf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_parse_attr*, align 8
  %5 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %6 = call i64 @os_zalloc(i32 8)
  %7 = inttoptr i64 %6 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %7, %struct.wps_parse_attr** %4, align 8
  %8 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %9 = icmp eq %struct.wps_parse_attr* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %14 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32* null, i32** %5, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %19 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %4, align 8
  %23 = call i32 @os_free(%struct.wps_parse_attr* %22)
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %21, %10
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
