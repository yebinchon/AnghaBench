; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pbuf_free(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %3 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %4 = icmp ne %struct.pbuf* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i32 0, i32 0
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 0
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %14 = call i32 @free(%struct.pbuf* %13)
  %15 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i32 0, i32 0
  store %struct.pbuf* null, %struct.pbuf** %16, align 8
  br label %17

17:                                               ; preds = %10, %5
  %18 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %19 = call i32 @free(%struct.pbuf* %18)
  store %struct.pbuf* null, %struct.pbuf** %2, align 8
  br label %20

20:                                               ; preds = %17, %1
  ret i32 1
}

declare dso_local i32 @free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
