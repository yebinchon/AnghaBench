; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_find_ccb_by_remote_cid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_find_ccb_by_remote_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @l2cu_find_ccb_by_remote_cid(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  br label %15

15:                                               ; preds = %32, %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %3, align 8
  br label %38

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %6, align 8
  br label %15

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %38

38:                                               ; preds = %37, %29, %9
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
