; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }

@PROCESSOR_NULL = common dso_local global %struct.TYPE_17__* null, align 8
@PROCESSOR_SET_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@master_processor = common dso_local global %struct.TYPE_17__* null, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@PROCESSOR_OFF_LINE = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@PROCESSOR_START = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@processor_start_thread = common dso_local global i64 0, align 8
@MAXPRI_KERNEL = common dso_local global i32 0, align 4
@TH_RUN = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @processor_start(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PROCESSOR_NULL, align 8
  %11 = icmp eq %struct.TYPE_17__* %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PROCESSOR_SET_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %1
  %19 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %19, i64* %2, align 8
  br label %178

20:                                               ; preds = %12
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @master_processor, align 8
  %23 = icmp eq %struct.TYPE_17__* %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = call %struct.TYPE_17__* @thread_bind(%struct.TYPE_17__* %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %28 = call i32 @thread_block(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @cpu_start(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = call %struct.TYPE_17__* @thread_bind(%struct.TYPE_17__* %33)
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %2, align 8
  br label %178

36:                                               ; preds = %20
  %37 = call i32 (...) @splsched()
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @pset_lock(i64 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PROCESSOR_OFF_LINE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @pset_unlock(i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @splx(i32 %51)
  %53 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %53, i64* %2, align 8
  br label %178

54:                                               ; preds = %36
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = load i64, i64* @PROCESSOR_START, align 8
  %58 = call i32 @pset_update_processor_state(i64 %55, %struct.TYPE_17__* %56, i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @pset_unlock(i64 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @splx(i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @THREAD_NULL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %54
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = call i64 @idle_thread_create(%struct.TYPE_17__* %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @KERN_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = call i32 (...) @splsched()
  store i32 %75, i32* %7, align 4
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @pset_lock(i64 %76)
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = load i64, i64* @PROCESSOR_OFF_LINE, align 8
  %81 = call i32 @pset_update_processor_state(i64 %78, %struct.TYPE_17__* %79, i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @pset_unlock(i64 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @splx(i32 %84)
  %86 = load i64, i64* %6, align 8
  store i64 %86, i64* %2, align 8
  br label %178

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %54
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @THREAD_NULL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %144

94:                                               ; preds = %88
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @THREAD_NULL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %144

100:                                              ; preds = %94
  %101 = load i64, i64* @processor_start_thread, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @MAXPRI_KERNEL, align 4
  %104 = call i64 @kernel_thread_create(i32 %102, i32* null, i32 %103, %struct.TYPE_16__** %5)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @KERN_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %100
  %109 = call i32 (...) @splsched()
  store i32 %109, i32* %7, align 4
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @pset_lock(i64 %110)
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = load i64, i64* @PROCESSOR_OFF_LINE, align 8
  %115 = call i32 @pset_update_processor_state(i64 %112, %struct.TYPE_17__* %113, i64 %114)
  %116 = load i64, i64* %4, align 8
  %117 = call i32 @pset_unlock(i64 %116)
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @splx(i32 %118)
  %120 = load i64, i64* %6, align 8
  store i64 %120, i64* %2, align 8
  br label %178

121:                                              ; preds = %100
  %122 = call i32 (...) @splsched()
  store i32 %122, i32* %7, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = call i32 @thread_lock(%struct.TYPE_16__* %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  store %struct.TYPE_17__* %125, %struct.TYPE_17__** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = ptrtoint %struct.TYPE_16__* %128 to i64
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* @TH_RUN, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = call i32 (...) @mach_absolute_time()
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = call i32 @thread_unlock(%struct.TYPE_16__* %138)
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @splx(i32 %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = call i32 @thread_deallocate(%struct.TYPE_16__* %142)
  br label %144

144:                                              ; preds = %121, %94, %88
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @IP_NULL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %152 = call i32 @ipc_processor_init(%struct.TYPE_17__* %151)
  br label %153

153:                                              ; preds = %150, %144
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @cpu_start(i32 %156)
  store i64 %157, i64* %6, align 8
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* @KERN_SUCCESS, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %153
  %162 = call i32 (...) @splsched()
  store i32 %162, i32* %7, align 4
  %163 = load i64, i64* %4, align 8
  %164 = call i32 @pset_lock(i64 %163)
  %165 = load i64, i64* %4, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = load i64, i64* @PROCESSOR_OFF_LINE, align 8
  %168 = call i32 @pset_update_processor_state(i64 %165, %struct.TYPE_17__* %166, i64 %167)
  %169 = load i64, i64* %4, align 8
  %170 = call i32 @pset_unlock(i64 %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @splx(i32 %171)
  %173 = load i64, i64* %6, align 8
  store i64 %173, i64* %2, align 8
  br label %178

174:                                              ; preds = %153
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %176 = call i32 @ipc_processor_enable(%struct.TYPE_17__* %175)
  %177 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %177, i64* %2, align 8
  br label %178

178:                                              ; preds = %174, %161, %108, %74, %48, %24, %18
  %179 = load i64, i64* %2, align 8
  ret i64 %179
}

declare dso_local %struct.TYPE_17__* @thread_bind(%struct.TYPE_17__*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i64 @cpu_start(i32) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @pset_lock(i64) #1

declare dso_local i32 @pset_unlock(i64) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @pset_update_processor_state(i64, %struct.TYPE_17__*, i64) #1

declare dso_local i64 @idle_thread_create(%struct.TYPE_17__*) #1

declare dso_local i64 @kernel_thread_create(i32, i32*, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @thread_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_16__*) #1

declare dso_local i32 @ipc_processor_init(%struct.TYPE_17__*) #1

declare dso_local i32 @ipc_processor_enable(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
