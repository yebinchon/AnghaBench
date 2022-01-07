; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_clock.c_convert_port_to_clock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_clock.c_convert_port_to_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@CLOCK_NULL = common dso_local global i64 0, align 8
@IKOT_CLOCK = common dso_local global i64 0, align 8
@IKOT_CLOCK_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_port_to_clock(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load i64, i64* @CLOCK_NULL, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i64 @IP_VALID(%struct.TYPE_8__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @ip_lock(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = call i64 @ip_active(%struct.TYPE_8__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i64 @ip_kotype(%struct.TYPE_8__* %15)
  %17 = load i64, i64* @IKOT_CLOCK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i64 @ip_kotype(%struct.TYPE_8__* %20)
  %22 = load i64, i64* @IKOT_CLOCK_CTRL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24, %19, %8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = call i32 @ip_unlock(%struct.TYPE_8__* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @IP_VALID(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_8__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_8__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
