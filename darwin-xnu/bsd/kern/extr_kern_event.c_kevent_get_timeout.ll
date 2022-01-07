; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i32 }
%struct.user64_timespec = type { i32 }
%struct.user32_timespec = type { i32 }

@KEVENT_FLAG_IMMEDIATE = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@KEVENT_FLAG_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i64, i32, %struct.timeval*)* @kevent_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_get_timeout(%struct.proc* %0, i64 %1, i32 %2, %struct.timeval* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca %struct.user64_timespec, align 4
  %15 = alloca %struct.user32_timespec, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.timeval* %3, %struct.timeval** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @KEVENT_FLAG_IMMEDIATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @getmicrouptime(%struct.timeval* %10)
  br label %78

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @USER_ADDR_NULL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @KEVENT_FLAG_KERNEL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to %struct.timespec*
  store %struct.timespec* %33, %struct.timespec** %13, align 8
  %34 = load %struct.timespec*, %struct.timespec** %13, align 8
  %35 = bitcast %struct.timespec* %34 to %struct.user64_timespec*
  %36 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %12, %struct.user64_timespec* %35)
  br label %61

37:                                               ; preds = %26
  %38 = load %struct.proc*, %struct.proc** %6, align 8
  %39 = call i64 @IS_64BIT_PROCESS(%struct.proc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @copyin(i64 %42, %struct.user64_timespec* %14, i32 4)
  store i32 %43, i32* %11, align 4
  %44 = getelementptr inbounds %struct.user64_timespec, %struct.user64_timespec* %14, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, -4294967296
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %11, align 4
  br label %53

51:                                               ; preds = %41
  %52 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %12, %struct.user64_timespec* %14)
  br label %53

53:                                               ; preds = %51, %49
  br label %60

54:                                               ; preds = %37
  %55 = load i64, i64* %7, align 8
  %56 = bitcast %struct.user32_timespec* %15 to %struct.user64_timespec*
  %57 = call i32 @copyin(i64 %55, %struct.user64_timespec* %56, i32 4)
  store i32 %57, i32* %11, align 4
  %58 = bitcast %struct.user32_timespec* %15 to %struct.user64_timespec*
  %59 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %12, %struct.user64_timespec* %58)
  br label %60

60:                                               ; preds = %54, %53
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %82

66:                                               ; preds = %61
  %67 = call i64 @itimerfix(%struct.timeval* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %5, align 4
  br label %82

71:                                               ; preds = %66
  %72 = call i32 @getmicrouptime(%struct.timeval* %10)
  %73 = call i32 @timevaladd(%struct.timeval* %10, %struct.timeval* %12)
  br label %77

74:                                               ; preds = %22
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %20
  %79 = load %struct.timeval*, %struct.timeval** %9, align 8
  %80 = bitcast %struct.timeval* %79 to i8*
  %81 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %69, %64
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @getmicrouptime(%struct.timeval*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.user64_timespec*) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i64, %struct.user64_timespec*, i32) #1

declare dso_local i64 @itimerfix(%struct.timeval*) #1

declare dso_local i32 @timevaladd(%struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
