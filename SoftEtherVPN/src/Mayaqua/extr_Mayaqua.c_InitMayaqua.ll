; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_InitMayaqua.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_InitMayaqua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@init_mayaqua_counter = common dso_local global i32 0, align 4
@g_memcheck = common dso_local global i32 0, align 4
@g_debug = common dso_local global i32 0, align 4
@cmdline = common dso_local global i32* null, align 8
@dot_net_mode = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@g_foreground = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tick_manual_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"OpenSSL Library Init Failed. (too old?)\0APlease install the latest version of OpenSSL.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RsaCheck()\00", align 1
@exename = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 69, i32 120, i32 101, i32 99, i32 117, i32 116, i32 97, i32 98, i32 108, i32 101, i32 32, i32 98, i32 105, i32 110, i32 97, i32 114, i32 121, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 34, i32 37, i32 115, i32 34, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 46, i32 13, i32 10, i32 13, i32 10, i32 80, i32 108, i32 101, i32 97, i32 115, i32 101, i32 32, i32 101, i32 120, i32 101, i32 99, i32 117, i32 116, i32 101, i32 32, i32 112, i32 114, i32 111, i32 103, i32 114, i32 97, i32 109, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 102, i32 117, i32 108, i32 108, i32 32, i32 112, i32 97, i32 116, i32 104, i32 46, i32 13, i32 10, i32 0], align 4
@UNIX_SVC_ARG_FOREGROUND = common dso_local global i32 0, align 4
@_DISABLE_PER_THREAD_LOCALE = common dso_local global i32 0, align 4
@is_nt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitMayaqua(i32 %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @SHA1_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load i32, i32* @init_mayaqua_counter, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @init_mayaqua_counter, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %111

26:                                               ; preds = %4
  %27 = call i32 (...) @InitProcessCallOnce()
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* @g_memcheck, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* @g_debug, align 4
  store i32* null, i32** @cmdline, align 8
  %30 = load i32, i32* @dot_net_mode, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @setbuf(i32 %33, i32* null)
  br label %35

35:                                               ; preds = %32, %26
  store i32 0, i32* @g_foreground, align 4
  %36 = call i32 (...) @CheckEndian()
  %37 = load i32, i32* @LC_ALL, align 4
  %38 = call i32 @setlocale(i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (...) @OSInit()
  %40 = call i64 (...) @SystemTime64()
  %41 = trunc i64 %40 to i32
  %42 = call i32 @srand(i32 %41)
  %43 = call i32 (...) @NewLock()
  store i32 %43, i32* @tick_manual_lock, align 4
  %44 = call i32 (...) @InitCrc32()
  %45 = call i32 (...) @InitFifo()
  %46 = call i32 (...) @InitKernelStatus()
  %47 = call i64 (...) @IsTrackingEnabled()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = call i32 (...) @InitTracking()
  br label %51

51:                                               ; preds = %49, %35
  %52 = call i32 (...) @InitThreading()
  %53 = call i32 (...) @InitStringLibrary()
  %54 = call i32 @SetLocale(i32* null)
  %55 = call i32 (...) @InitCryptLibrary()
  %56 = call i32 (...) @InitTick64()
  %57 = call i32 (...) @InitNetwork()
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i8**, i8*** %8, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i8* [ %63, %60 ], [ null, %64 ]
  %67 = call i32 @InitGetExeName(i8* %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i8**, i8*** %8, align 8
  %70 = call i32 @InitCommandLineStr(i32 %68, i8** %69)
  %71 = call i32 (...) @InitOsInfo()
  %72 = call i32 (...) @InitSecure()
  %73 = call i32 (...) @OSIsSupportedOs()
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = call i32 @exit(i32 0) #4
  unreachable

77:                                               ; preds = %65
  %78 = call i32 (...) @RsaCheckEx()
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = call i32 @Alert(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @exit(i32 0) #4
  unreachable

83:                                               ; preds = %77
  %84 = call i32 (...) @InitHamcore()
  %85 = call i32 (...) @InitTable()
  %86 = load i32*, i32** @exename, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32* @CopyStr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %89, i32** @exename, align 8
  br label %90

90:                                               ; preds = %88, %83
  %91 = mul nuw i64 4, %16
  %92 = trunc i64 %91 to i32
  %93 = call i32 @GetExeNameW(i32* %18, i32 %92)
  %94 = call i32 @IsFileExistsW(i32* %18)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load i32, i32* @MAX_SIZE, align 4
  %98 = zext i32 %97 to i64
  %99 = call i8* @llvm.stacksave()
  store i8* %99, i8** %13, align 8
  %100 = alloca i32, i64 %98, align 16
  store i64 %98, i64* %14, align 8
  %101 = mul nuw i64 4, %98
  %102 = trunc i64 %101 to i32
  %103 = call i32 @UniFormat(i32* %100, i32 %102, i8* bitcast ([90 x i32]* @.str.4 to i8*), i32* %18)
  %104 = call i32 @AlertW(i32* %100, i32* null)
  %105 = call i32 @_exit(i32 0) #4
  unreachable

106:                                              ; preds = %90
  %107 = call i32 (...) @CheckUnixTempDir()
  %108 = call i32 (...) @InitProbe()
  %109 = call i32 @GetCurrentMachineIpProcessHash(i32* %21)
  %110 = call i32 (...) @LoadPrivateIPFile()
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %106, %25
  %112 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %12, align 4
  switch i32 %113, label %115 [
    i32 0, label %114
    i32 1, label %114
  ]

114:                                              ; preds = %111, %111
  ret void

115:                                              ; preds = %111
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @InitProcessCallOnce(...) #2

declare dso_local i32 @setbuf(i32, i32*) #2

declare dso_local i32 @CheckEndian(...) #2

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @OSInit(...) #2

declare dso_local i32 @srand(i32) #2

declare dso_local i64 @SystemTime64(...) #2

declare dso_local i32 @NewLock(...) #2

declare dso_local i32 @InitCrc32(...) #2

declare dso_local i32 @InitFifo(...) #2

declare dso_local i32 @InitKernelStatus(...) #2

declare dso_local i64 @IsTrackingEnabled(...) #2

declare dso_local i32 @InitTracking(...) #2

declare dso_local i32 @InitThreading(...) #2

declare dso_local i32 @InitStringLibrary(...) #2

declare dso_local i32 @SetLocale(i32*) #2

declare dso_local i32 @InitCryptLibrary(...) #2

declare dso_local i32 @InitTick64(...) #2

declare dso_local i32 @InitNetwork(...) #2

declare dso_local i32 @InitGetExeName(i8*) #2

declare dso_local i32 @InitCommandLineStr(i32, i8**) #2

declare dso_local i32 @InitOsInfo(...) #2

declare dso_local i32 @InitSecure(...) #2

declare dso_local i32 @OSIsSupportedOs(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @RsaCheckEx(...) #2

declare dso_local i32 @Alert(i8*, i8*) #2

declare dso_local i32 @InitHamcore(...) #2

declare dso_local i32 @InitTable(...) #2

declare dso_local i32* @CopyStr(i8*) #2

declare dso_local i32 @GetExeNameW(i32*, i32) #2

declare dso_local i32 @IsFileExistsW(i32*) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*) #2

declare dso_local i32 @AlertW(i32*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @CheckUnixTempDir(...) #2

declare dso_local i32 @InitProbe(...) #2

declare dso_local i32 @GetCurrentMachineIpProcessHash(i32*) #2

declare dso_local i32 @LoadPrivateIPFile(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
