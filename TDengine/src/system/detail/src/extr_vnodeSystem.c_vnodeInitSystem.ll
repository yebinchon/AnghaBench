; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeSystem.c_vnodeInitSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeSystem.c_vnodeInitSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"failed to init query qhandle, exit\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to init timer, exit\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to init vnode storage\00", align 1
@tsRatioOfQueryThreads = common dso_local global double 0.000000e+00, align 8
@tsNumOfCores = common dso_local global double 0.000000e+00, align 8
@tsNumOfThreadsPerCore = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to init vnode peer communication\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to init communication to mgmt\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to init communication to shell\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"failed to init store\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"vnode is initialized successfully\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeInitSystem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @vnodeInitQueryHandle()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @dError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

7:                                                ; preds = %0
  %8 = call i32 (...) @vnodeInitTmrCtl()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 @dError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

12:                                               ; preds = %7
  %13 = call i64 (...) @vnodeInitStore()
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @dError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

17:                                               ; preds = %12
  %18 = load double, double* @tsRatioOfQueryThreads, align 8
  %19 = fsub double 1.000000e+00, %18
  %20 = load double, double* @tsNumOfCores, align 8
  %21 = fmul double %19, %20
  %22 = load double, double* @tsNumOfThreadsPerCore, align 8
  %23 = fmul double %21, %22
  %24 = fdiv double %23, 2.000000e+00
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @vnodeInitPeer(i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @dError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

35:                                               ; preds = %29
  %36 = call i64 (...) @vnodeInitMgmt()
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @dError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

40:                                               ; preds = %35
  %41 = call i64 (...) @vnodeInitShell()
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @dError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

45:                                               ; preds = %40
  %46 = call i64 (...) @vnodeInitVnodes()
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @dError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %52

50:                                               ; preds = %45
  %51 = call i32 @dPrint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %50, %48, %43, %38, %33, %15, %10, %5
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @vnodeInitQueryHandle(...) #1

declare dso_local i32 @dError(i8*) #1

declare dso_local i32 @vnodeInitTmrCtl(...) #1

declare dso_local i64 @vnodeInitStore(...) #1

declare dso_local i64 @vnodeInitPeer(i32) #1

declare dso_local i64 @vnodeInitMgmt(...) #1

declare dso_local i64 @vnodeInitShell(...) #1

declare dso_local i64 @vnodeInitVnodes(...) #1

declare dso_local i32 @dPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
