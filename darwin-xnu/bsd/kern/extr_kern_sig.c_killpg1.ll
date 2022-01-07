; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_killpg1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_killpg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32 }
%struct.killpg1_iterargs = type { i64, i32, i32, i32 }
%struct.killpg1_filtargs = type { i32, i32 }

@PROC_ALLPROCLIST = common dso_local global i32 0, align 4
@PROC_ZOMBPROCLIST = common dso_local global i32 0, align 4
@killpg1_callback = common dso_local global i32 0, align 4
@killpg1_allfilt = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PGRP_DROPREF = common dso_local global i32 0, align 4
@killpg1_pgrpfilt = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @killpg1(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pgrp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.killpg1_iterargs, align 8
  %15 = alloca %struct.killpg1_filtargs, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @kauth_cred_proc_ref(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %14, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %14, i32 0, i32 1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %14, i32 0, i32 2
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %14, i32 0, i32 3
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.killpg1_filtargs, %struct.killpg1_filtargs* %15, i32 0, i32 0
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.killpg1_filtargs, %struct.killpg1_filtargs* %15, i32 0, i32 1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %30, align 4
  %32 = load i32, i32* @PROC_ALLPROCLIST, align 4
  %33 = load i32, i32* @PROC_ZOMBPROCLIST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @killpg1_callback, align 4
  %36 = load i32, i32* @killpg1_allfilt, align 4
  %37 = call i32 @proc_iterate(i32 %34, i32 %35, %struct.killpg1_iterargs* %14, i32 %36, %struct.killpg1_filtargs* %15)
  br label %58

38:                                               ; preds = %5
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.pgrp* @proc_pgrp(i32 %42)
  store %struct.pgrp* %43, %struct.pgrp** %12, align 8
  br label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.pgrp* @pgfind(i32 %45)
  store %struct.pgrp* %46, %struct.pgrp** %12, align 8
  %47 = load %struct.pgrp*, %struct.pgrp** %12, align 8
  %48 = icmp eq %struct.pgrp* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ESRCH, align 4
  store i32 %50, i32* %13, align 4
  br label %74

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %41
  %53 = load %struct.pgrp*, %struct.pgrp** %12, align 8
  %54 = load i32, i32* @PGRP_DROPREF, align 4
  %55 = load i32, i32* @killpg1_callback, align 4
  %56 = load i32, i32* @killpg1_pgrpfilt, align 4
  %57 = call i32 @pgrp_iterate(%struct.pgrp* %53, i32 %54, i32 %55, %struct.killpg1_iterargs* %14, i32 %56, i32* null)
  br label %58

58:                                               ; preds = %52, %27
  %59 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %14, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %72

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EPERM, align 4
  br label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ESRCH, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %62
  %73 = phi i32 [ 0, %62 ], [ %71, %70 ]
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %72, %49
  %75 = call i32 @kauth_cred_unref(i32* %11)
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i32 @proc_iterate(i32, i32, %struct.killpg1_iterargs*, i32, %struct.killpg1_filtargs*) #1

declare dso_local %struct.pgrp* @proc_pgrp(i32) #1

declare dso_local %struct.pgrp* @pgfind(i32) #1

declare dso_local i32 @pgrp_iterate(%struct.pgrp*, i32, i32, %struct.killpg1_iterargs*, i32, i32*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
