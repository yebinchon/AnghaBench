; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_sys.c_sys_sem_wait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_sys.c_sys_sem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_timeouts = type { %struct.sys_timeout* }
%struct.sys_timeout = type { i64, i8*, i32 (i8*)*, %struct.sys_timeout* }

@SYS_ARCH_TIMEOUT = common dso_local global i64 0, align 8
@MEMP_SYS_TIMEOUT = common dso_local global i32 0, align 4
@SYS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ssw h=%p(%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_sem_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.sys_timeouts*, align 8
  %5 = alloca %struct.sys_timeout*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  br label %8

8:                                                ; preds = %70, %1
  %9 = call %struct.sys_timeouts* (...) @sys_arch_timeouts()
  store %struct.sys_timeouts* %9, %struct.sys_timeouts** %4, align 8
  %10 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %11 = icmp ne %struct.sys_timeouts* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %14 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %13, i32 0, i32 0
  %15 = load %struct.sys_timeout*, %struct.sys_timeout** %14, align 8
  %16 = icmp ne %struct.sys_timeout* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %8
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @sys_arch_sem_wait(i32 %18, i64 0)
  br label %94

20:                                               ; preds = %12
  %21 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %22 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %21, i32 0, i32 0
  %23 = load %struct.sys_timeout*, %struct.sys_timeout** %22, align 8
  %24 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %30 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %29, i32 0, i32 0
  %31 = load %struct.sys_timeout*, %struct.sys_timeout** %30, align 8
  %32 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @sys_arch_sem_wait(i32 %28, i64 %33)
  store i64 %34, i64* %3, align 8
  br label %37

35:                                               ; preds = %20
  %36 = load i64, i64* @SYS_ARCH_TIMEOUT, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @SYS_ARCH_TIMEOUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %43 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %42, i32 0, i32 0
  %44 = load %struct.sys_timeout*, %struct.sys_timeout** %43, align 8
  store %struct.sys_timeout* %44, %struct.sys_timeout** %5, align 8
  %45 = load %struct.sys_timeout*, %struct.sys_timeout** %5, align 8
  %46 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %45, i32 0, i32 3
  %47 = load %struct.sys_timeout*, %struct.sys_timeout** %46, align 8
  %48 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %49 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %48, i32 0, i32 0
  store %struct.sys_timeout* %47, %struct.sys_timeout** %49, align 8
  %50 = load %struct.sys_timeout*, %struct.sys_timeout** %5, align 8
  %51 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %50, i32 0, i32 2
  %52 = load i32 (i8*)*, i32 (i8*)** %51, align 8
  store i32 (i8*)* %52, i32 (i8*)** %6, align 8
  %53 = load %struct.sys_timeout*, %struct.sys_timeout** %5, align 8
  %54 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %7, align 8
  %56 = load i32, i32* @MEMP_SYS_TIMEOUT, align 4
  %57 = load %struct.sys_timeout*, %struct.sys_timeout** %5, align 8
  %58 = call i32 @memp_free(i32 %56, %struct.sys_timeout* %57)
  %59 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %60 = icmp ne i32 (i8*)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %41
  %62 = load i32, i32* @SYS_DEBUG, align 4
  %63 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %64 = bitcast i32 (i8*)* %63 to i8*
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @LWIP_DEBUGF(i32 %62, i8* %65)
  %67 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 %67(i8* %68)
  br label %70

70:                                               ; preds = %61, %41
  br label %8

71:                                               ; preds = %37
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %74 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %73, i32 0, i32 0
  %75 = load %struct.sys_timeout*, %struct.sys_timeout** %74, align 8
  %76 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %72, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %82 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %81, i32 0, i32 0
  %83 = load %struct.sys_timeout*, %struct.sys_timeout** %82, align 8
  %84 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %80
  store i64 %86, i64* %84, align 8
  br label %92

87:                                               ; preds = %71
  %88 = load %struct.sys_timeouts*, %struct.sys_timeouts** %4, align 8
  %89 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %88, i32 0, i32 0
  %90 = load %struct.sys_timeout*, %struct.sys_timeout** %89, align 8
  %91 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %87, %79
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %17
  ret void
}

declare dso_local %struct.sys_timeouts* @sys_arch_timeouts(...) #1

declare dso_local i64 @sys_arch_sem_wait(i32, i64) #1

declare dso_local i32 @memp_free(i32, %struct.sys_timeout*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
