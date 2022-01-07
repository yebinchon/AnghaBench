; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osInit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PSP_MAX_TLS = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i64 0, align 8
@threadDataKey = common dso_local global i32 0, align 4
@globalTls = common dso_local global i32 0, align 4
@PTE_OS_NO_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"pthread_cancelSemGlobal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pte_osInit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = load i32, i32* @PSP_MAX_TLS, align 4
  %5 = call i64 @pteTlsGlobalInit(i32 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @PTE_OS_OK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %0
  %10 = call i64 @pteTlsAlloc(i32* @threadDataKey)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @PTE_OS_OK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = call i32 (...) @pteTlsThreadInit()
  store i32 %15, i32* @globalTls, align 4
  %16 = call i64 @malloc(i32 4)
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @PTE_OS_NO_RESOURCES, align 8
  store i64 %21, i64* %1, align 8
  br label %34

22:                                               ; preds = %14
  %23 = load i32, i32* @globalTls, align 4
  %24 = load i32, i32* @threadDataKey, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = call i32 @pteTlsSetValue(i32 %23, i32 %24, %struct.TYPE_3__* %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %28 = call i32 @snprintf(i8* %27, i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %30 = call i32 @sceKernelCreateSema(i8* %29, i32 0, i32 0, i32 255, i32 0)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @PTE_OS_OK, align 8
  store i64 %33, i64* %1, align 8
  br label %34

34:                                               ; preds = %22, %20
  br label %35

35:                                               ; preds = %34, %9
  br label %36

36:                                               ; preds = %35, %0
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

declare dso_local i64 @pteTlsGlobalInit(i32) #1

declare dso_local i64 @pteTlsAlloc(i32*) #1

declare dso_local i32 @pteTlsThreadInit(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pteTlsSetValue(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @sceKernelCreateSema(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
