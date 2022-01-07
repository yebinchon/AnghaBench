; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_conn.c_bta_sys_collision_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_conn.c_bta_sys_collision_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32** }

@MAX_COLLISION_REG = common dso_local global i64 0, align 8
@bta_sys_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_sys_collision_register(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAX_COLLISION_REG, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_sys_cb, i32 0, i32 0, i32 0), align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_sys_cb, i32 0, i32 0, i32 0), align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17, %10
  %24 = load i64, i64* %3, align 8
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_sys_cb, i32 0, i32 0, i32 0), align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %24, i64* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_sys_cb, i32 0, i32 0, i32 1), align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* %28, i32** %31, align 8
  br label %36

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %6

36:                                               ; preds = %23, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
