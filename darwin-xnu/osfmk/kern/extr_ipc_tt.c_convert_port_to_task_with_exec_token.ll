; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_task_with_exec_token.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_task_with_exec_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@TASK_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@IKOT_TASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @convert_port_to_task_with_exec_token(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TASK_NULL, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call i64 @IP_VALID(%struct.TYPE_16__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = call i32 @ip_lock(%struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = call i64 @ip_active(%struct.TYPE_16__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = call i64 @ip_kotype(%struct.TYPE_16__* %19)
  %21 = load i64, i64* @IKOT_TASK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = call %struct.TYPE_15__* (...) @current_task()
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %7, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %6, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TASK_NULL, align 8
  %31 = icmp ne %struct.TYPE_15__* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = call i64 @task_conversion_eval(%struct.TYPE_15__* %34, %struct.TYPE_15__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call i32 @ip_unlock(%struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TASK_NULL, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %3, align 8
  br label %58

42:                                               ; preds = %23
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = call i32 @task_reference_internal(%struct.TYPE_15__* %51)
  br label %53

53:                                               ; preds = %50, %18, %12
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = call i32 @ip_unlock(%struct.TYPE_16__* %54)
  br label %56

56:                                               ; preds = %53, %2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %3, align 8
  br label %58

58:                                               ; preds = %56, %38
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %59
}

declare dso_local i64 @IP_VALID(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_16__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_16__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @current_task(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @task_conversion_eval(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @task_reference_internal(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
