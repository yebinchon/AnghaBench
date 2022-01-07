; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c__start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c__start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i8*, i32, i8*, i32*, i32 }
%struct._iop_thread = type { i32, i32, i64, i8*, i32 }

@CachedDirInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@MAX_DIR_CACHE_SECTORS = common dso_local global i32 0, align 4
@cdReadMode = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SCECdSpinStm = common dso_local global i32 0, align 4
@SCECdSecS2048 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cdfs\00", align 1
@file_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IOP_DT_FS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CDVD Filedriver\00", align 1
@filedriver_ops = common dso_local global i32 0, align 4
@TH_C = common dso_local global i32 0, align 4
@CDVD_Thread = common dso_local global i64 0, align 8
@MODULE_RESIDENT_END = common dso_local global i32 0, align 4
@MODULE_NO_RESIDENT_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_start(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._iop_thread, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 7), align 4
  %10 = call i32 @strcpy(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 1), align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 0), align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @MAX_DIR_CACHE_SECTORS, align 4
  %16 = mul nsw i32 %15, 2048
  %17 = call i64 @AllocSysMemory(i32 0, i32 %16, i32* null)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CachedDirInfo, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %14, %2
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdReadMode, i32 0, i32 2), align 8
  %20 = load i32, i32* @SCECdSpinStm, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdReadMode, i32 0, i32 1), align 4
  %21 = load i32, i32* @SCECdSecS2048, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdReadMode, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @file_driver, i32 0, i32 0), align 8
  %22 = load i32, i32* @IOP_DT_FS, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @file_driver, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @file_driver, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @file_driver, i32 0, i32 2), align 8
  store i32* @filedriver_ops, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @file_driver, i32 0, i32 3), align 8
  %23 = call i32 @DelDrv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @AddDrv(%struct.TYPE_5__* @file_driver)
  %25 = load i32, i32* @TH_C, align 4
  %26 = getelementptr inbounds %struct._iop_thread, %struct._iop_thread* %7, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* @CDVD_Thread, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct._iop_thread, %struct._iop_thread* %7, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct._iop_thread, %struct._iop_thread* %7, i32 0, i32 0
  store i32 40, i32* %30, align 8
  %31 = getelementptr inbounds %struct._iop_thread, %struct._iop_thread* %7, i32 0, i32 1
  store i32 32768, i32* %31, align 4
  %32 = getelementptr inbounds %struct._iop_thread, %struct._iop_thread* %7, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = call i32 @CreateThread(%struct._iop_thread* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @StartThread(i32 %37, i32* null)
  %39 = load i32, i32* @MODULE_RESIDENT_END, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %19
  %41 = load i32, i32* @MODULE_NO_RESIDENT_END, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @AllocSysMemory(i32, i32, i32*) #1

declare dso_local i32 @DelDrv(i8*) #1

declare dso_local i32 @AddDrv(%struct.TYPE_5__*) #1

declare dso_local i32 @CreateThread(%struct._iop_thread*) #1

declare dso_local i32 @StartThread(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
