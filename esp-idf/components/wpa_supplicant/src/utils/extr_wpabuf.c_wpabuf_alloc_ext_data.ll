; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_alloc_ext_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_alloc_ext_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i64, i64, i32* }
%struct.wpabuf_trace = type { i32 }

@WPABUF_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpabuf_alloc_ext_data(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call %struct.wpabuf_trace* @os_zalloc(i32 24)
  %8 = bitcast %struct.wpabuf_trace* %7 to %struct.wpabuf*
  store %struct.wpabuf* %8, %struct.wpabuf** %6, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %15 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %22, %struct.wpabuf** %3, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %24
}

declare dso_local %struct.wpabuf_trace* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
