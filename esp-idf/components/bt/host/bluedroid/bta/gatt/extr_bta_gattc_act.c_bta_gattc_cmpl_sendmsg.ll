; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_cmpl_sendmsg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_cmpl_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BTA_GATTC_OP_CMPL_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*)* @bta_gattc_cmpl_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_gattc_cmpl_sendmsg(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 28, i32* %9, align 4
  %11 = call i64 @osi_malloc(i32 28)
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = call i32 @memset(%struct.TYPE_6__* %16, i32 0, i32 28)
  %18 = load i32, i32* @BTA_GATTC_OP_CMPL_EVT, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %15
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 1
  %37 = bitcast %struct.TYPE_6__* %36 to i32*
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @memcpy(i32* %42, i32* %43, i32 4)
  br label %45

45:                                               ; preds = %34, %15
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = call i32 @bta_sys_sendmsg(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %45, %4
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
