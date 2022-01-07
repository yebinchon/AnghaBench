; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_sys.c_sys_mbox_fetch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_sys.c_sys_mbox_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_timeouts = type { %struct.sys_timeout* }
%struct.sys_timeout = type { i64, i8*, i32 (i8*)*, %struct.sys_timeout* }

@SYS_ARCH_TIMEOUT = common dso_local global i64 0, align 8
@MEMP_SYS_TIMEOUT = common dso_local global i32 0, align 4
@SYS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"smf calling h=%p(%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_mbox_fetch(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_timeouts*, align 8
  %7 = alloca %struct.sys_timeout*, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %10

10:                                               ; preds = %74, %2
  %11 = call %struct.sys_timeouts* (...) @sys_arch_timeouts()
  store %struct.sys_timeouts* %11, %struct.sys_timeouts** %6, align 8
  %12 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %13 = icmp ne %struct.sys_timeouts* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %16 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %15, i32 0, i32 0
  %17 = load %struct.sys_timeout*, %struct.sys_timeout** %16, align 8
  %18 = icmp ne %struct.sys_timeout* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = call i64 @sys_arch_mbox_fetch(i32 %20, i8** %21, i64 0)
  br label %98

23:                                               ; preds = %14
  %24 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %25 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %24, i32 0, i32 0
  %26 = load %struct.sys_timeout*, %struct.sys_timeout** %25, align 8
  %27 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = load i8**, i8*** %4, align 8
  %33 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %34 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %33, i32 0, i32 0
  %35 = load %struct.sys_timeout*, %struct.sys_timeout** %34, align 8
  %36 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @sys_arch_mbox_fetch(i32 %31, i8** %32, i64 %37)
  store i64 %38, i64* %5, align 8
  br label %41

39:                                               ; preds = %23
  %40 = load i64, i64* @SYS_ARCH_TIMEOUT, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @SYS_ARCH_TIMEOUT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %47 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %46, i32 0, i32 0
  %48 = load %struct.sys_timeout*, %struct.sys_timeout** %47, align 8
  store %struct.sys_timeout* %48, %struct.sys_timeout** %7, align 8
  %49 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %50 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %49, i32 0, i32 3
  %51 = load %struct.sys_timeout*, %struct.sys_timeout** %50, align 8
  %52 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %53 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %52, i32 0, i32 0
  store %struct.sys_timeout* %51, %struct.sys_timeout** %53, align 8
  %54 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %55 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %54, i32 0, i32 2
  %56 = load i32 (i8*)*, i32 (i8*)** %55, align 8
  store i32 (i8*)* %56, i32 (i8*)** %8, align 8
  %57 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %58 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  %60 = load i32, i32* @MEMP_SYS_TIMEOUT, align 4
  %61 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %62 = call i32 @memp_free(i32 %60, %struct.sys_timeout* %61)
  %63 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %64 = icmp ne i32 (i8*)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %45
  %66 = load i32, i32* @SYS_DEBUG, align 4
  %67 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %68 = bitcast i32 (i8*)* %67 to i8*
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @LWIP_DEBUGF(i32 %66, i8* %69)
  %71 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 %71(i8* %72)
  br label %74

74:                                               ; preds = %65, %45
  br label %10

75:                                               ; preds = %41
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %78 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %77, i32 0, i32 0
  %79 = load %struct.sys_timeout*, %struct.sys_timeout** %78, align 8
  %80 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %76, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %86 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %85, i32 0, i32 0
  %87 = load %struct.sys_timeout*, %struct.sys_timeout** %86, align 8
  %88 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, %84
  store i64 %90, i64* %88, align 8
  br label %96

91:                                               ; preds = %75
  %92 = load %struct.sys_timeouts*, %struct.sys_timeouts** %6, align 8
  %93 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %92, i32 0, i32 0
  %94 = load %struct.sys_timeout*, %struct.sys_timeout** %93, align 8
  %95 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %83
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %19
  ret void
}

declare dso_local %struct.sys_timeouts* @sys_arch_timeouts(...) #1

declare dso_local i64 @sys_arch_mbox_fetch(i32, i8**, i64) #1

declare dso_local i32 @memp_free(i32, %struct.sys_timeout*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
