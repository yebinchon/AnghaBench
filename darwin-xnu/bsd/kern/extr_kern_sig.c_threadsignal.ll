; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_threadsignal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_threadsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.task = type { i32 }

@NSIG = common dso_local global i64 0, align 8
@threadmask = common dso_local global i32 0, align 4
@UT_VFORK = common dso_local global i32 0, align 4
@P_LTRACED = common dso_local global i32 0, align 4
@stopsigmask = common dso_local global i32 0, align 4
@contsigmask = common dso_local global i32 0, align 4
@OS_REASON_NULL = common dso_local global i64 0, align 8
@DBG_BSD_PROC = common dso_local global i32 0, align 4
@BSD_PROC_EXITREASON_CREATE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@OS_REASON_SIGNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"exc handler\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @threadsignal(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.uthread*, align 8
  %10 = alloca %struct.task*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @NSIG, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  br label %147

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @sigmask(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @threadmask, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %147

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.task* @get_threadtask(i32 %31)
  store %struct.task* %32, %struct.task** %10, align 8
  %33 = load %struct.task*, %struct.task** %10, align 8
  %34 = call i64 @get_bsdtask_info(%struct.task* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %11, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.uthread* @get_bsdthread_info(i32 %36)
  store %struct.uthread* %37, %struct.uthread** %9, align 8
  %38 = load %struct.uthread*, %struct.uthread** %9, align 8
  %39 = getelementptr inbounds %struct.uthread, %struct.uthread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @UT_VFORK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load %struct.uthread*, %struct.uthread** %9, align 8
  %46 = getelementptr inbounds %struct.uthread, %struct.uthread* %45, i32 0, i32 6
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %11, align 8
  br label %48

48:                                               ; preds = %44, %30
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = call i32 @proc_lock(%struct.TYPE_4__* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @P_LTRACED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %66 = call i32 @proc_unlock(%struct.TYPE_4__* %65)
  br label %147

67:                                               ; preds = %57, %48
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.uthread*, %struct.uthread** %9, align 8
  %70 = getelementptr inbounds %struct.uthread, %struct.uthread* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.uthread*, %struct.uthread** %9, align 8
  %75 = getelementptr inbounds %struct.uthread, %struct.uthread* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %142

78:                                               ; preds = %67
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @P_LTRACED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %106, label %85

85:                                               ; preds = %78
  %86 = load %struct.uthread*, %struct.uthread** %9, align 8
  %87 = getelementptr inbounds %struct.uthread, %struct.uthread* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %142, label %92

92:                                               ; preds = %85
  %93 = load %struct.uthread*, %struct.uthread** %9, align 8
  %94 = getelementptr inbounds %struct.uthread, %struct.uthread* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %142, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %142, label %106

106:                                              ; preds = %99, %78
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @stopsigmask, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %142, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @contsigmask, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %111
  %117 = load %struct.uthread*, %struct.uthread** %9, align 8
  %118 = getelementptr inbounds %struct.uthread, %struct.uthread* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @OS_REASON_NULL, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load i32, i32* @DBG_BSD_PROC, align 4
  %124 = load i32, i32* @BSD_PROC_EXITREASON_CREATE, align 4
  %125 = call i32 @BSDDBG_CODE(i32 %123, i32 %124)
  %126 = load i32, i32* @DBG_FUNC_NONE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @OS_REASON_SIGNAL, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %127, i32 %130, i32 %131, i32 %132, i32 0, i32 0)
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @build_signal_reason(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %135, i64* %13, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i64, i64* %13, align 8
  %138 = load i32, i32* @TRUE, align 4
  %139 = call i32 @set_thread_exit_reason(i32 %136, i64 %137, i32 %138)
  %140 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %140, i64* %13, align 8
  br label %141

141:                                              ; preds = %122, %116
  br label %142

142:                                              ; preds = %141, %111, %106, %99, %92, %85, %67
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %144 = call i32 @proc_unlock(%struct.TYPE_4__* %143)
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @signal_setast(i32 %145)
  br label %147

147:                                              ; preds = %142, %64, %29, %21
  ret void
}

declare dso_local i32 @sigmask(i32) #1

declare dso_local %struct.task* @get_threadtask(i32) #1

declare dso_local i64 @get_bsdtask_info(%struct.task*) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @proc_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i64 @build_signal_reason(i32, i8*) #1

declare dso_local i32 @set_thread_exit_reason(i32, i64, i32) #1

declare dso_local i32 @signal_setast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
