; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_put_at.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/test_afl_host/extr_network_mock.c_pbuf_put_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_put_at(%struct.pbuf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.pbuf* @pbuf_skip(%struct.pbuf* %9, i64 %10, i64* %7)
  store %struct.pbuf* %11, %struct.pbuf** %8, align 8
  %12 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %13 = icmp ne %struct.pbuf* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %20, %14, %3
  ret void
}

declare dso_local %struct.pbuf* @pbuf_skip(%struct.pbuf*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
