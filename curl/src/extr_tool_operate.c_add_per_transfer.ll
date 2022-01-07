; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_add_per_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_add_per_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_transfer = type { %struct.per_transfer*, %struct.per_transfer* }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@transfers = common dso_local global %struct.per_transfer* null, align 8
@transfersl = common dso_local global %struct.per_transfer* null, align 8
@all_xfers = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_transfer**)* @add_per_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_per_transfer(%struct.per_transfer** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.per_transfer**, align 8
  %4 = alloca %struct.per_transfer*, align 8
  store %struct.per_transfer** %0, %struct.per_transfer*** %3, align 8
  %5 = call %struct.per_transfer* @calloc(i32 16, i32 1)
  store %struct.per_transfer* %5, %struct.per_transfer** %4, align 8
  %6 = load %struct.per_transfer*, %struct.per_transfer** %4, align 8
  %7 = icmp ne %struct.per_transfer* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.per_transfer*, %struct.per_transfer** @transfers, align 8
  %12 = icmp ne %struct.per_transfer* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.per_transfer*, %struct.per_transfer** %4, align 8
  store %struct.per_transfer* %14, %struct.per_transfer** @transfers, align 8
  store %struct.per_transfer* %14, %struct.per_transfer** @transfersl, align 8
  br label %23

15:                                               ; preds = %10
  %16 = load %struct.per_transfer*, %struct.per_transfer** %4, align 8
  %17 = load %struct.per_transfer*, %struct.per_transfer** @transfersl, align 8
  %18 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %17, i32 0, i32 1
  store %struct.per_transfer* %16, %struct.per_transfer** %18, align 8
  %19 = load %struct.per_transfer*, %struct.per_transfer** @transfersl, align 8
  %20 = load %struct.per_transfer*, %struct.per_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %20, i32 0, i32 0
  store %struct.per_transfer* %19, %struct.per_transfer** %21, align 8
  %22 = load %struct.per_transfer*, %struct.per_transfer** %4, align 8
  store %struct.per_transfer* %22, %struct.per_transfer** @transfersl, align 8
  br label %23

23:                                               ; preds = %15, %13
  %24 = load %struct.per_transfer*, %struct.per_transfer** %4, align 8
  %25 = load %struct.per_transfer**, %struct.per_transfer*** %3, align 8
  store %struct.per_transfer* %24, %struct.per_transfer** %25, align 8
  %26 = load i32, i32* @all_xfers, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @all_xfers, align 4
  %28 = load i32, i32* @CURLE_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.per_transfer* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
