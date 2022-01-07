; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_FreeMayaqua.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_FreeMayaqua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_mayaqua_counter = common dso_local global i64 0, align 8
@g_debug = common dso_local global i64 0, align 8
@g_memcheck = common dso_local global i64 0, align 8
@tick_manual_lock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeMayaqua() #0 {
  %1 = load i64, i64* @init_mayaqua_counter, align 8
  %2 = add nsw i64 %1, -1
  store i64 %2, i64* @init_mayaqua_counter, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %38

5:                                                ; preds = %0
  %6 = call i32 (...) @FreePrivateIPFile()
  %7 = call i32 (...) @FreeProbe()
  %8 = call i32 (...) @FreeTable()
  %9 = call i32 (...) @FreeSecure()
  %10 = call i32 (...) @FreeOsInfo()
  %11 = call i32 (...) @FreeHamcore()
  %12 = call i32 (...) @FreeCommandLineStr()
  %13 = call i32 (...) @FreeCommandLineTokens()
  %14 = call i32 (...) @FreeNetwork()
  %15 = call i32 (...) @FreeTick64()
  %16 = call i32 (...) @FreeStringLibrary()
  %17 = call i32 (...) @FreeThreading()
  %18 = call i32 (...) @FreeCryptLibrary()
  %19 = call i64 (...) @IsTrackingEnabled()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %5
  %22 = load i64, i64* @g_debug, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @PrintKernelStatus()
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* @g_memcheck, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @PrintDebugInformation()
  br label %31

31:                                               ; preds = %29, %26
  %32 = call i32 (...) @FreeTracking()
  br label %33

33:                                               ; preds = %31, %5
  %34 = call i32 (...) @FreeKernelStatus()
  %35 = load i32*, i32** @tick_manual_lock, align 8
  %36 = call i32 @DeleteLock(i32* %35)
  store i32* null, i32** @tick_manual_lock, align 8
  %37 = call i32 (...) @OSFree()
  br label %38

38:                                               ; preds = %33, %4
  ret void
}

declare dso_local i32 @FreePrivateIPFile(...) #1

declare dso_local i32 @FreeProbe(...) #1

declare dso_local i32 @FreeTable(...) #1

declare dso_local i32 @FreeSecure(...) #1

declare dso_local i32 @FreeOsInfo(...) #1

declare dso_local i32 @FreeHamcore(...) #1

declare dso_local i32 @FreeCommandLineStr(...) #1

declare dso_local i32 @FreeCommandLineTokens(...) #1

declare dso_local i32 @FreeNetwork(...) #1

declare dso_local i32 @FreeTick64(...) #1

declare dso_local i32 @FreeStringLibrary(...) #1

declare dso_local i32 @FreeThreading(...) #1

declare dso_local i32 @FreeCryptLibrary(...) #1

declare dso_local i64 @IsTrackingEnabled(...) #1

declare dso_local i32 @PrintKernelStatus(...) #1

declare dso_local i32 @PrintDebugInformation(...) #1

declare dso_local i32 @FreeTracking(...) #1

declare dso_local i32 @FreeKernelStatus(...) #1

declare dso_local i32 @DeleteLock(i32*) #1

declare dso_local i32 @OSFree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
