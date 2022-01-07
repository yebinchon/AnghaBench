; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_unix_signal.c_sendsig_get_state32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_unix_signal.c_sendsig_get_state32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ARM_THREAD_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_THREAD_STATE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARM_EXCEPTION_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_EXCEPTION_STATE = common dso_local global i32 0, align 4
@ARM_VFP_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_VFP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_3__*)* @sendsig_get_state32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendsig_get_state32(i32 %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = call i32 (...) @current_proc()
  %11 = call i32 @proc_is64bit_data(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ARM_THREAD_STATE, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = call i64 @thread_getstatus(i32 %19, i32 %20, i32 %22, i32* %9)
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ARM_THREAD_STATE, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = call i64 @machine_thread_state_convert_to_user(i32 %37, i32 %38, i32 %40, i32* %9)
  %42 = load i64, i64* @KERN_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %75

46:                                               ; preds = %28
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to i8*
  store i8* %49, i8** %8, align 8
  %50 = load i32, i32* @ARM_EXCEPTION_STATE_COUNT, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ARM_EXCEPTION_STATE, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = call i64 @thread_getstatus(i32 %51, i32 %52, i32 %54, i32* %9)
  %56 = load i64, i64* @KERN_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  br label %75

60:                                               ; preds = %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %8, align 8
  %64 = load i32, i32* @ARM_VFP_STATE_COUNT, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ARM_VFP_STATE, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = call i64 @thread_getstatus_to_user(i32 %65, i32 %66, i32 %68, i32* %9)
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %72, %58, %44, %26
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_is64bit_data(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @thread_getstatus(i32, i32, i32, i32*) #1

declare dso_local i64 @machine_thread_state_convert_to_user(i32, i32, i32, i32*) #1

declare dso_local i64 @thread_getstatus_to_user(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
