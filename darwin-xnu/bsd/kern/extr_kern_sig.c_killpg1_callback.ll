; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_killpg1_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_killpg1_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.killpg1_iterargs = type { i32, i32, i32, i32 }

@P_LIST_EXITED = common dso_local global i32 0, align 4
@PROC_RETURNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @killpg1_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @killpg1_callback(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.killpg1_iterargs*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.killpg1_iterargs*
  store %struct.killpg1_iterargs* %8, %struct.killpg1_iterargs** %5, align 8
  %9 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %10 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @P_LIST_EXITED, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @P_LIST_EXITED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %21 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %24 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @cansignal_nomac(i32 %22, i32 %25, %struct.TYPE_6__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %32 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %19
  br label %60

36:                                               ; preds = %2
  %37 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %38 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %41 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @cansignal(i32 %39, i32 %42, %struct.TYPE_6__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load %struct.killpg1_iterargs*, %struct.killpg1_iterargs** %5, align 8
  %49 = getelementptr inbounds %struct.killpg1_iterargs, %struct.killpg1_iterargs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @psignal(%struct.TYPE_6__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* @PROC_RETURNED, align 4
  ret i32 %61
}

declare dso_local i64 @cansignal_nomac(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @cansignal(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @psignal(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
