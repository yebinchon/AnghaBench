; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ast.c_ast_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ast.c_ast_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@PROCESSOR_RUNNING = common dso_local global i64 0, align 8
@PROCESSOR_SHUTDOWN = common dso_local global i64 0, align 8
@AST_NONE = common dso_local global i32 0, align 4
@PERFCONTROL_ATTR_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_check(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PROCESSOR_RUNNING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PROCESSOR_SHUTDOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %77

19:                                               ; preds = %12, %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call %struct.TYPE_13__* (...) @current_thread()
  %25 = icmp eq %struct.TYPE_13__* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = call i32 @thread_lock(%struct.TYPE_13__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = call i32 @ast_propagate(%struct.TYPE_13__* %30)
  store i32 0, i32* %4, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = call i32 @sfi_thread_classify(%struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = call i32 @recommended_pset_type(%struct.TYPE_13__* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = call i64 @thread_get_perfcontrol_class(%struct.TYPE_13__* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = load i32, i32* @AST_NONE, align 4
  %61 = call i32 @csw_check(%struct.TYPE_14__* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @AST_NONE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ast_on(i32 %65)
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = call i32 @thread_unlock(%struct.TYPE_13__* %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @PERFCONTROL_ATTR_UPDATE, align 4
  %74 = call i32 (...) @mach_approximate_time()
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = call i32 @machine_switch_perfcontrol_state_update(i32 %73, i32 %74, i32 0, %struct.TYPE_13__* %75)
  br label %77

77:                                               ; preds = %18, %72, %67
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @current_thread(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @ast_propagate(%struct.TYPE_13__*) #1

declare dso_local i32 @sfi_thread_classify(%struct.TYPE_13__*) #1

declare dso_local i32 @recommended_pset_type(%struct.TYPE_13__*) #1

declare dso_local i64 @thread_get_perfcontrol_class(%struct.TYPE_13__*) #1

declare dso_local i32 @csw_check(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ast_on(i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @machine_switch_perfcontrol_state_update(i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @mach_approximate_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
