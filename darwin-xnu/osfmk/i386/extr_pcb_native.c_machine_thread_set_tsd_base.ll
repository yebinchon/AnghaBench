; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb_native.c_machine_thread_set_tsd_base.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb_native.c_machine_thread_set_tsd_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.real_descriptor, i32 }
%struct.real_descriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@kernel_task = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@ACC_P = common dso_local global i32 0, align 4
@ACC_PL_U = common dso_local global i32 0, align 4
@ACC_DATA_W = common dso_local global i32 0, align 4
@SZ_32 = common dso_local global i32 0, align 4
@SZ_G = common dso_local global i32 0, align 4
@USER_CTHREAD = common dso_local global i32 0, align 4
@MSR_IA32_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_set_tsd_base(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.real_descriptor, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @kernel_task, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %15, i32* %3, align 4
  br label %123

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i64 @thread_is_64bit_addr(%struct.TYPE_13__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @IS_USERADDR64_CANONICAL(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %32

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UINT32_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = call %struct.TYPE_14__* @THREAD_TO_PCB(%struct.TYPE_13__* %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = call i64 @thread_is_64bit_addr(%struct.TYPE_13__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 65535
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 2
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 3
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  store i32 %53, i32* %50, align 4
  %54 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 4
  %55 = load i32, i32* @ACC_P, align 4
  %56 = load i32, i32* @ACC_PL_U, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ACC_DATA_W, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %54, align 4
  %60 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 5
  %61 = load i32, i32* @SZ_32, align 4
  %62 = load i32, i32* @SZ_G, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %60, align 4
  %64 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %7, i32 0, i32 6
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = bitcast %struct.real_descriptor* %66 to i8*
  %68 = bitcast %struct.real_descriptor* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 28, i1 false)
  %69 = load i32, i32* @USER_CTHREAD, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_16__* @saved_state32(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %41, %32
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call %struct.TYPE_13__* (...) @current_thread()
  %78 = icmp eq %struct.TYPE_13__* %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %75
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = call i64 @thread_is_64bit_addr(%struct.TYPE_13__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = call i32 (...) @mp_disable_preemption()
  %85 = call %struct.TYPE_15__* (...) @current_cpu_datap()
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %8, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MSR_IA32_KERNEL_GS_BASE, align 4
  %99 = call i32 @rdmsr64(i32 %98)
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94, %83
  %102 = load i32, i32* @MSR_IA32_KERNEL_GS_BASE, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @wrmsr64(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %94
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = call i32 (...) @mp_enable_preemption()
  br label %120

111:                                              ; preds = %79
  %112 = call i32 (...) @mp_disable_preemption()
  %113 = load i32, i32* @USER_CTHREAD, align 4
  %114 = call %struct.real_descriptor* @ldt_desc_p(i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = bitcast %struct.real_descriptor* %114 to i8*
  %118 = bitcast %struct.real_descriptor* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 28, i1 false)
  %119 = call i32 (...) @mp_enable_preemption()
  br label %120

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %75
  %122 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @thread_is_64bit_addr(%struct.TYPE_13__*) #1

declare dso_local i32 @IS_USERADDR64_CANONICAL(i32) #1

declare dso_local %struct.TYPE_14__* @THREAD_TO_PCB(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_16__* @saved_state32(i32) #1

declare dso_local %struct.TYPE_13__* @current_thread(...) #1

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local %struct.TYPE_15__* @current_cpu_datap(...) #1

declare dso_local i32 @rdmsr64(i32) #1

declare dso_local i32 @wrmsr64(i32, i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

declare dso_local %struct.real_descriptor* @ldt_desc_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
