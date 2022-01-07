; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osThreadCreate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osThreadCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@pte_osThreadCreate.threadNum = internal global i32 1, align 4
@MAX_PSP_UID = common dso_local global i32 0, align 4
@DEFAULT_STACK_SIZE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pteTlsThreadInit: PTE_OS_NO_RESOURCES\0A\00", align 1
@PTE_OS_NO_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"malloc(pspThreadData): PTE_OS_NO_RESOURCES\0A\00", align 1
@threadDataKey = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"pthread_cancelSem%04d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pthread%04d__%x\00", align 1
@pspStubThreadEntry = common dso_local global i32 0, align 4
@SCE_KERNEL_ERROR_NO_MEMORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"sceKernelCreateThread: PTE_OS_NO_RESOURCES\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"sceKernelCreateThread: PTE_OS_GENERAL_FAILURE\0A\00", align 1
@PTE_OS_GENERAL_FAILURE = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_osThreadCreate(i32 %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %18 = load i32, i32* @pte_osThreadCreate.threadNum, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @pte_osThreadCreate.threadNum, align 4
  %20 = load i32, i32* @MAX_PSP_UID, align 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* @pte_osThreadCreate.threadNum, align 4
  br label %23

23:                                               ; preds = %22, %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DEFAULT_STACK_SIZE_BYTES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @DEFAULT_STACK_SIZE_BYTES, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i8* (...) @pteTlsThreadInit()
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @PSP_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @PTE_OS_NO_RESOURCES, align 4
  store i32 %35, i32* %16, align 4
  br label %101

36:                                               ; preds = %29
  %37 = call i64 @malloc(i32 24)
  %38 = inttoptr i64 %37 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %17, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %40 = icmp eq %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @pteTlsThreadDestroy(i8* %42)
  %44 = call i32 @PSP_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @PTE_OS_NO_RESOURCES, align 4
  store i32 %45, i32* %16, align 4
  br label %101

46:                                               ; preds = %36
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* @threadDataKey, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %50 = call i32 @pteTlsSetValue(i8* %47, i32 %48, %struct.TYPE_4__* %49)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %58 = load i32, i32* @pte_osThreadCreate.threadNum, align 4
  %59 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %57, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %61 = call i32 @sceKernelCreateSema(i8* %60, i32 0, i32 0, i32 255, i32 0)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %65 = load i32, i32* @pte_osThreadCreate.threadNum, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %64, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %67)
  store i32 0, i32* %13, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %70 = load i32, i32* @pspStubThreadEntry, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @sceKernelCreateThread(i8* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32* null)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @SCE_KERNEL_ERROR_NO_MEMORY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %46
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %80 = call i32 @free(%struct.TYPE_4__* %79)
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @pteTlsThreadDestroy(i8* %81)
  %83 = call i32 @PSP_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @PTE_OS_NO_RESOURCES, align 4
  store i32 %84, i32* %16, align 4
  br label %100

85:                                               ; preds = %46
  %86 = load i64, i64* %15, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %90 = call i32 @free(%struct.TYPE_4__* %89)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @pteTlsThreadDestroy(i8* %91)
  %93 = call i32 @PSP_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @PTE_OS_GENERAL_FAILURE, align 4
  store i32 %94, i32* %16, align 4
  br label %99

95:                                               ; preds = %85
  %96 = load i64, i64* %15, align 8
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* @PTE_OS_OK, align 4
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %95, %88
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %41, %33
  %102 = load i32, i32* %16, align 4
  ret i32 %102
}

declare dso_local i8* @pteTlsThreadInit(...) #1

declare dso_local i32 @PSP_DEBUG(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pteTlsThreadDestroy(i8*) #1

declare dso_local i32 @pteTlsSetValue(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @sceKernelCreateSema(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @sceKernelCreateThread(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
