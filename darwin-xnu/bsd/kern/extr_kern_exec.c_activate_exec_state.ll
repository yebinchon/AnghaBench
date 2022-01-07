; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_activate_exec_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_activate_exec_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i64*, i64, i32 }

@MACH_VM_MIN_ADDRESS = common dso_local global i32 0, align 4
@P_LP64 = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__*)* @activate_exec_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_exec_state(i32 %0, %struct.TYPE_5__* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MACH_VM_MIN_ADDRESS, align 4
  %17 = call i32 @task_set_dyld_info(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @task_set_64bit(i32 %18, i64 %21, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i64, i64* @P_LP64, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @OSBitOrAtomic(i64 %31, i32* %33)
  br label %41

35:                                               ; preds = %4
  %36 = load i64, i64* @P_LP64, align 8
  %37 = xor i64 %36, -1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @OSBitAndAtomic(i64 %37, i32* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @thread_state_initialize(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @KERN_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %98

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %81, %54
  %62 = load i64, i64* %12, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %11, align 8
  %67 = load i64, i64* %65, align 8
  store i64 %67, i64* %13, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %11, align 8
  %70 = load i64, i64* %68, align 8
  store i64 %70, i64* %14, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* %13, align 8
  %73 = load i64*, i64** %11, align 8
  %74 = ptrtoint i64* %73 to i32
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @thread_setstatus(i32 %71, i64 %72, i32 %74, i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %98

81:                                               ; preds = %64
  %82 = load i64, i64* %14, align 8
  %83 = load i64*, i64** %11, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 %82
  store i64* %84, i64** %11, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add nsw i64 %85, 2
  %87 = mul i64 %86, 8
  %88 = load i64, i64* %12, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %12, align 8
  br label %61

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @thread_setentrypoint(i32 %92, i32 %95)
  %97 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %79, %47
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @task_set_dyld_info(i32, i32, i32) #1

declare dso_local i32 @task_set_64bit(i32, i64, i32) #1

declare dso_local i32 @OSBitOrAtomic(i64, i32*) #1

declare dso_local i32 @OSBitAndAtomic(i64, i32*) #1

declare dso_local i32 @thread_state_initialize(i32) #1

declare dso_local i32 @thread_setstatus(i32, i64, i32, i64) #1

declare dso_local i32 @thread_setentrypoint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
