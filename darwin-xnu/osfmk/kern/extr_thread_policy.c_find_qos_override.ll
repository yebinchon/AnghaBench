; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_find_qos_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_find_qos_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_qos_override = type { i64, i32, %struct.thread_qos_override* }
%struct.TYPE_3__ = type { %struct.thread_qos_override* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_qos_override* (%struct.TYPE_3__*, i64, i32)* @find_qos_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_qos_override* @find_qos_override(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.thread_qos_override*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread_qos_override*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.thread_qos_override*, %struct.thread_qos_override** %10, align 8
  store %struct.thread_qos_override* %11, %struct.thread_qos_override** %8, align 8
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.thread_qos_override*, %struct.thread_qos_override** %8, align 8
  %14 = icmp ne %struct.thread_qos_override* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.thread_qos_override*, %struct.thread_qos_override** %8, align 8
  %17 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.thread_qos_override*, %struct.thread_qos_override** %8, align 8
  %23 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.thread_qos_override*, %struct.thread_qos_override** %8, align 8
  store %struct.thread_qos_override* %28, %struct.thread_qos_override** %4, align 8
  br label %34

29:                                               ; preds = %21, %15
  %30 = load %struct.thread_qos_override*, %struct.thread_qos_override** %8, align 8
  %31 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %30, i32 0, i32 2
  %32 = load %struct.thread_qos_override*, %struct.thread_qos_override** %31, align 8
  store %struct.thread_qos_override* %32, %struct.thread_qos_override** %8, align 8
  br label %12

33:                                               ; preds = %12
  store %struct.thread_qos_override* null, %struct.thread_qos_override** %4, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.thread_qos_override*, %struct.thread_qos_override** %4, align 8
  ret %struct.thread_qos_override* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
