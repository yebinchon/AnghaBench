; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@FALSE = common dso_local global i32 0, align 4
@THREAD_CALL_SIGNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"thread_call_finish: detected over-released thread call: %p\00", align 1
@THREAD_CALL_RESCHEDULE = common dso_local global i32 0, align 4
@THREAD_CALL_RUNNING = common dso_local global i32 0, align 4
@THREAD_CALL_WAIT = common dso_local global i32 0, align 4
@THREAD_CALL_ONCE = common dso_local global i32 0, align 4
@THREAD_CALL_DELAYED = common dso_local global i32 0, align 4
@TCF_CONTINUOUS = common dso_local global i64 0, align 8
@TIMER_CALL_RATELIMITED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Someone waiting on a thread call that is scheduled for free: %p\0A\00", align 1
@thread_call_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32*)* @thread_call_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_call_finish(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @THREAD_CALL_SIGNAL, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = call i32 @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* @THREAD_CALL_RESCHEDULE, align 4
  %42 = load i32, i32* @THREAD_CALL_RUNNING, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @THREAD_CALL_WAIT, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %133

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @THREAD_CALL_RESCHEDULE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %133

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i64 @thread_call_get_flavor(%struct.TYPE_11__* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* @THREAD_CALL_DELAYED, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %60
  %72 = call i64 (...) @mach_absolute_time()
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @TCF_CONTINUOUS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @absolutetime_to_continuoustime(i64 %77)
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load i32, i32* @THREAD_CALL_DELAYED, align 4
  %87 = load i32, i32* @TIMER_CALL_RATELIMITED, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %85, %79
  br label %97

97:                                               ; preds = %96, %60
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @_delayed_call_enqueue(%struct.TYPE_11__* %103, i32 %104, i64 %107, i64 %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %102
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @_arm_delayed_call_timer(%struct.TYPE_11__* %113, i32 %114, i64 %115)
  br label %117

117:                                              ; preds = %112, %102
  br label %132

118:                                              ; preds = %97
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %10, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @_pending_call_enqueue(%struct.TYPE_11__* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131, %117
  br label %133

133:                                              ; preds = %132, %55, %40
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %170, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @THREAD_CALL_WAIT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = call i32 @panic(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @enable_ints_and_unlock(i32 %163)
  %165 = load i32, i32* @thread_call_zone, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = call i32 @zfree(i32 %165, %struct.TYPE_11__* %166)
  %168 = call i32 (...) @disable_ints_and_lock()
  %169 = load i32*, i32** %6, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %152, %136, %133
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @THREAD_CALL_WAIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = call i32 (...) @thread_call_unlock()
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = ptrtoint %struct.TYPE_11__* %177 to i32
  %179 = call i32 @thread_wakeup(i32 %178)
  %180 = call i32 (...) @thread_call_lock_spin()
  br label %181

181:                                              ; preds = %175, %170
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local i32 @panic(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @thread_call_get_flavor(%struct.TYPE_11__*) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @absolutetime_to_continuoustime(i64) #1

declare dso_local i32 @_delayed_call_enqueue(%struct.TYPE_11__*, i32, i64, i64) #1

declare dso_local i32 @_arm_delayed_call_timer(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @_pending_call_enqueue(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @enable_ints_and_unlock(i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @disable_ints_and_lock(...) #1

declare dso_local i32 @thread_call_unlock(...) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @thread_call_lock_spin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
