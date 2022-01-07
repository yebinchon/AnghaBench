; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_arm_trap_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_arm_trap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@IKOT_TIMER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_USER_NORMAL = common dso_local global i32 0, align 4
@MK_TIMER_CRITICAL = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_USER_CRITICAL = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_LEEWAY = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32)* @mk_timer_arm_trap_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mk_timer_arm_trap_internal(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = call i32 (...) @current_space()
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ipc_port_translate_receive(i32 %16, i32 %17, %struct.TYPE_7__** %12)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %13, align 8
  store i64 %23, i64* %5, align 8
  br label %112

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = call i64 @ip_kotype(%struct.TYPE_7__* %25)
  %27 = load i64, i64* @IKOT_TIMER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @simple_lock(i32* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %45 = icmp eq %struct.TYPE_7__* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = call i32 @ip_unlock(%struct.TYPE_7__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %102, label %54

54:                                               ; preds = %29
  %55 = load i32, i32* @TRUE, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (...) @mach_absolute_time()
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load i32, i32* @THREAD_CALL_DELAY_USER_NORMAL, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MK_TIMER_CRITICAL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @THREAD_CALL_DELAY_USER_CRITICAL, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @THREAD_CALL_DELAY_LEEWAY, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @thread_call_enter_delayed_with_leeway(i32* %78, i32* null, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %76
  br label %101

90:                                               ; preds = %54
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = call i32 @thread_call_enter1(i32* %92, i32* null)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %29
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @simple_unlock(i32* %104)
  br label %110

106:                                              ; preds = %24
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %108 = call i32 @ip_unlock(%struct.TYPE_7__* %107)
  %109 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i64, i64* %13, align 8
  store i64 %111, i64* %5, align 8
  br label %112

112:                                              ; preds = %110, %22
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

declare dso_local i32 @current_space(...) #1

declare dso_local i64 @ipc_port_translate_receive(i32, i32, %struct.TYPE_7__**) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @thread_call_enter_delayed_with_leeway(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @thread_call_enter1(i32*, i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
