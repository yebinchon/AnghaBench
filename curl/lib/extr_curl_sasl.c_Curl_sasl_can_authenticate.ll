; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_can_authenticate.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_can_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SASL = type { i32, i32 }
%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@SASL_MECH_EXTERNAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_sasl_can_authenticate(%struct.SASL* %0, %struct.connectdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SASL*, align 8
  %5 = alloca %struct.connectdata*, align 8
  store %struct.SASL* %0, %struct.SASL** %4, align 8
  store %struct.connectdata* %1, %struct.connectdata** %5, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.SASL*, %struct.SASL** %4, align 8
  %15 = getelementptr inbounds %struct.SASL, %struct.SASL* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SASL*, %struct.SASL** %4, align 8
  %18 = getelementptr inbounds %struct.SASL, %struct.SASL* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = load i32, i32* @SASL_MECH_EXTERNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
