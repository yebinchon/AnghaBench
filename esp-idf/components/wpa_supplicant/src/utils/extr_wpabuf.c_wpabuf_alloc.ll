; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i64 }
%struct.wpabuf_trace = type { i32 }

@WPABUF_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpabuf_alloc(i64 %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = add i64 8, %5
  %7 = trunc i64 %6 to i32
  %8 = call %struct.wpabuf_trace* @os_zalloc(i32 %7)
  %9 = bitcast %struct.wpabuf_trace* %8 to %struct.wpabuf*
  store %struct.wpabuf* %9, %struct.wpabuf** %4, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %11 = icmp eq %struct.wpabuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %17, %struct.wpabuf** %2, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %19
}

declare dso_local %struct.wpabuf_trace* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
