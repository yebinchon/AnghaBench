; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_dup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %4 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %5 = call i32 @wpabuf_len(%struct.wpabuf* %4)
  %6 = call %struct.wpabuf* @wpabuf_alloc(i32 %5)
  store %struct.wpabuf* %6, %struct.wpabuf** %3, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %8 = icmp ne %struct.wpabuf* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = call i32 @wpabuf_head(%struct.wpabuf* %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = call i32 @wpabuf_len(%struct.wpabuf* %13)
  %15 = call i32 @wpabuf_put_data(%struct.wpabuf* %10, i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %17
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
