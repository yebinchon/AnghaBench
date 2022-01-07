; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_cancel_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_cancel_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mk_timer_cancel_trap_args = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@IKOT_TIMER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mk_timer_cancel_trap(%struct.mk_timer_cancel_trap_args* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mk_timer_cancel_trap_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.mk_timer_cancel_trap_args* %0, %struct.mk_timer_cancel_trap_args** %3, align 8
  %11 = load %struct.mk_timer_cancel_trap_args*, %struct.mk_timer_cancel_trap_args** %3, align 8
  %12 = getelementptr inbounds %struct.mk_timer_cancel_trap_args, %struct.mk_timer_cancel_trap_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.mk_timer_cancel_trap_args*, %struct.mk_timer_cancel_trap_args** %3, align 8
  %15 = getelementptr inbounds %struct.mk_timer_cancel_trap_args, %struct.mk_timer_cancel_trap_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %17 = call i32 (...) @current_space()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ipc_port_translate_receive(i32 %18, i32 %19, %struct.TYPE_10__** %9)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @KERN_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %2, align 8
  br label %100

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = call i64 @ip_kotype(%struct.TYPE_10__* %27)
  %29 = load i64, i64* @IKOT_TIMER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = call i32 @simple_lock(i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = icmp eq %struct.TYPE_10__* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = call i32 @ip_unlock(%struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %31
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = call i64 @thread_call_cancel(%struct.TYPE_11__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %56
  %72 = load i64, i64* @FALSE, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %31
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @simple_unlock(i32* %77)
  br label %83

79:                                               ; preds = %26
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = call i32 @ip_unlock(%struct.TYPE_10__* %80)
  %82 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @KERN_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = bitcast i64* %6 to i8*
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @copyout(i8* %91, i64 %92, i32 8)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %95, %90, %87
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %2, align 8
  br label %100

100:                                              ; preds = %98, %24
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

declare dso_local i32 @current_space(...) #1

declare dso_local i64 @ipc_port_translate_receive(i32, i32, %struct.TYPE_10__**) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_10__*) #1

declare dso_local i64 @thread_call_cancel(%struct.TYPE_11__*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i64 @copyout(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
