; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_delspec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_delspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndrv_cb = type { i64, i32 }

@PF_NDRV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndrv_delspec(%struct.ndrv_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ndrv_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.ndrv_cb* %0, %struct.ndrv_cb** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ndrv_cb*, %struct.ndrv_cb** %3, align 8
  %6 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PF_NDRV, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.ndrv_cb*, %struct.ndrv_cb** %3, align 8
  %12 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %10
  %18 = load %struct.ndrv_cb*, %struct.ndrv_cb** %3, align 8
  %19 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ndrv_cb*, %struct.ndrv_cb** %3, align 8
  %22 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ifnet_detach_protocol(i32 %20, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i64, i64* @PF_NDRV, align 8
  %26 = load %struct.ndrv_cb*, %struct.ndrv_cb** %3, align 8
  %27 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %17, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ifnet_detach_protocol(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
