; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i64, %struct.wpabuf* }
%struct.wpabuf_trace = type { i64, %struct.wpabuf_trace* }

@MSG_ERROR = common dso_local global i32 0, align 4
@WPABUF_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpabuf_free(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %3 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %4 = icmp eq %struct.wpabuf* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %8 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %7, i32 0, i32 1
  %9 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %10 = bitcast %struct.wpabuf* %9 to %struct.wpabuf_trace*
  %11 = call i32 @os_free(%struct.wpabuf_trace* %10)
  %12 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %13 = bitcast %struct.wpabuf* %12 to %struct.wpabuf_trace*
  %14 = call i32 @os_free(%struct.wpabuf_trace* %13)
  br label %15

15:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @os_free(%struct.wpabuf_trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
