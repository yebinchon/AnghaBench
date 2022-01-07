; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_internal_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_internal_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }

@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i32 0, align 4
@HOST_BASIC_INFO_COUNT = common dso_local global i32 0, align 4
@HOST_BASIC_INFO = common dso_local global i32 0, align 4
@vm_pageout_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"vmcomp_threads\00", align 1
@MAX_COMPRESSOR_THREAD_COUNT = common dso_local global i32 0, align 4
@VM_PAGE_LAUNDRY_MAX = common dso_local global i32 0, align 4
@vm_pageout_queue_internal = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"vmpgoi_maxlaundry\00", align 1
@ciq = common dso_local global %struct.TYPE_8__* null, align 8
@COMPRESSOR_SCRATCH_BUF_SIZE = common dso_local global i32 0, align 4
@vm_pageout_iothread_internal = common dso_local global i64 0, align 8
@BASEPRI_VM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@BSD_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_pageout_internal_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 4
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @HOST_BASIC_INFO_COUNT, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @HOST_BASIC_INFO, align 4
  %9 = ptrtoint %struct.TYPE_5__* %3 to i32
  %10 = call i32 @host_info(i32 1, i32 %8, i32 %9, i32* %4)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  br label %21

20:                                               ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = call i32 @PE_parse_boot_argn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), i32 4)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  br label %42

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  %37 = load i32, i32* @MAX_COMPRESSOR_THREAD_COUNT, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MAX_COMPRESSOR_THREAD_COUNT, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  %44 = mul nsw i32 %43, 4
  %45 = load i32, i32* @VM_PAGE_LAUNDRY_MAX, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vm_pageout_queue_internal, i32 0, i32 0), align 4
  %47 = call i32 @PE_parse_boot_argn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vm_pageout_queue_internal, i32 0, i32 0), i32 4)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %93, %42
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 0), align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ciq, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ciq, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  store %struct.TYPE_7__* @vm_pageout_queue_internal, %struct.TYPE_7__** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ciq, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @COMPRESSOR_SCRATCH_BUF_SIZE, align 4
  %70 = call i32 @kalloc(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ciq, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 4
  %76 = load i64, i64* @vm_pageout_iothread_internal, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ciq, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = bitcast %struct.TYPE_8__* %81 to i8*
  %83 = load i32, i32* @BASEPRI_VM, align 4
  %84 = call i64 @kernel_thread_start_priority(i32 %77, i8* %82, i32 %83, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 1))
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @KERN_SUCCESS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %52
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vm_pageout_state, i32 0, i32 1), align 4
  %90 = call i32 @thread_deallocate(i32 %89)
  br label %92

91:                                               ; preds = %52
  br label %96

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %48

96:                                               ; preds = %91, %48
  %97 = load i64, i64* %1, align 8
  ret i64 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @host_info(i32, i32, i32, i32*) #1

declare dso_local i32 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i32 @kalloc(i32) #1

declare dso_local i64 @kernel_thread_start_priority(i32, i8*, i32, i32*) #1

declare dso_local i32 @thread_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
