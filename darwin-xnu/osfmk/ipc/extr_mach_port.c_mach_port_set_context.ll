; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_set_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_set_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kGUARD_EXC_SET_CONTEXT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_set_context(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @IS_NULL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %15, i64* %4, align 8
  br label %55

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MACH_PORT_VALID(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %21, i64* %4, align 8
  br label %55

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ipc_port_translate_receive(i64 %23, i32 %24, %struct.TYPE_4__** %8)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %4, align 8
  br label %55

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = call i32 @ip_unlock(%struct.TYPE_4__* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @kGUARD_EXC_SET_CONTEXT, align 4
  %46 = call i32 @mach_port_guard_exception(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %47, i64* %4, align 8
  br label %55

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = call i32 @ip_unlock(%struct.TYPE_4__* %52)
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %48, %36, %29, %20, %14
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_port_translate_receive(i64, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
