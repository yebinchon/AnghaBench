; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_clock.c_port_name_to_clock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_clock.c_port_name_to_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@CLOCK_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IKOT_CLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @port_name_to_clock(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @CLOCK_NULL, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %2, align 8
  br label %38

12:                                               ; preds = %1
  %13 = call i32 (...) @current_space()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ipc_port_translate_send(i32 %14, i32 %15, %struct.TYPE_6__** %6)
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %2, align 8
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = call i64 @ip_active(%struct.TYPE_6__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = call i64 @ip_kotype(%struct.TYPE_6__* %26)
  %28 = load i64, i64* @IKOT_CLOCK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %25, %21
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = call i32 @ip_unlock(%struct.TYPE_6__* %35)
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %34, %19, %10
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @current_space(...) #1

declare dso_local i64 @ipc_port_translate_send(i32, i32, %struct.TYPE_6__**) #1

declare dso_local i64 @ip_active(%struct.TYPE_6__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_6__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
