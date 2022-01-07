; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_chachapoly.c_esp_chachapoly_ivlen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_chachapoly.c_esp_chachapoly_ivlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_algorithm = type { i32 }
%struct.secasvar = type { i32, i32* }
%struct.TYPE_2__ = type { i64 }

@SADB_X_EXT_IIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_chachapoly_ivlen(%struct.esp_algorithm* %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp_algorithm*, align 8
  %5 = alloca %struct.secasvar*, align 8
  store %struct.esp_algorithm* %0, %struct.esp_algorithm** %4, align 8
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %6 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %7 = call i32 @ESP_CHECK_ARG(%struct.esp_algorithm* %6)
  %8 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %9 = icmp ne %struct.secasvar* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %12 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %17 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %25 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SADB_X_EXT_IIV, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %15
  store i32 0, i32* %3, align 4
  br label %35

31:                                               ; preds = %23, %2
  %32 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %33 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ESP_CHECK_ARG(%struct.esp_algorithm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
