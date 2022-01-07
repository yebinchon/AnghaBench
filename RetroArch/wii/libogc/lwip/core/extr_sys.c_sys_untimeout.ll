; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_sys.c_sys_untimeout.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_sys.c_sys_untimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_timeouts = type { %struct.sys_timeout* }
%struct.sys_timeout = type { i64, i8*, i64, %struct.sys_timeout* }

@MEMP_SYS_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sys_untimeout(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sys_timeouts*, align 8
  %6 = alloca %struct.sys_timeout*, align 8
  %7 = alloca %struct.sys_timeout*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call %struct.sys_timeouts* (...) @sys_arch_timeouts()
  store %struct.sys_timeouts* %8, %struct.sys_timeouts** %5, align 8
  %9 = load %struct.sys_timeouts*, %struct.sys_timeouts** %5, align 8
  %10 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %9, i32 0, i32 0
  %11 = load %struct.sys_timeout*, %struct.sys_timeout** %10, align 8
  %12 = icmp eq %struct.sys_timeout* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %74

14:                                               ; preds = %2
  %15 = load %struct.sys_timeouts*, %struct.sys_timeouts** %5, align 8
  %16 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %15, i32 0, i32 0
  %17 = load %struct.sys_timeout*, %struct.sys_timeout** %16, align 8
  store %struct.sys_timeout* %17, %struct.sys_timeout** %7, align 8
  store %struct.sys_timeout* null, %struct.sys_timeout** %6, align 8
  br label %18

18:                                               ; preds = %68, %14
  %19 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %20 = icmp ne %struct.sys_timeout* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %23 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %29 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.sys_timeout*, %struct.sys_timeout** %6, align 8
  %35 = icmp eq %struct.sys_timeout* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %38 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %37, i32 0, i32 3
  %39 = load %struct.sys_timeout*, %struct.sys_timeout** %38, align 8
  %40 = load %struct.sys_timeouts*, %struct.sys_timeouts** %5, align 8
  %41 = getelementptr inbounds %struct.sys_timeouts, %struct.sys_timeouts* %40, i32 0, i32 0
  store %struct.sys_timeout* %39, %struct.sys_timeout** %41, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %44 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %43, i32 0, i32 3
  %45 = load %struct.sys_timeout*, %struct.sys_timeout** %44, align 8
  %46 = load %struct.sys_timeout*, %struct.sys_timeout** %6, align 8
  %47 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %46, i32 0, i32 3
  store %struct.sys_timeout* %45, %struct.sys_timeout** %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %50 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %49, i32 0, i32 3
  %51 = load %struct.sys_timeout*, %struct.sys_timeout** %50, align 8
  %52 = icmp ne %struct.sys_timeout* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %55 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %58 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %57, i32 0, i32 3
  %59 = load %struct.sys_timeout*, %struct.sys_timeout** %58, align 8
  %60 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %56
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %53, %48
  %64 = load i32, i32* @MEMP_SYS_TIMEOUT, align 4
  %65 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %66 = call i32 @memp_free(i32 %64, %struct.sys_timeout* %65)
  br label %74

67:                                               ; preds = %27, %21
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  store %struct.sys_timeout* %69, %struct.sys_timeout** %6, align 8
  %70 = load %struct.sys_timeout*, %struct.sys_timeout** %7, align 8
  %71 = getelementptr inbounds %struct.sys_timeout, %struct.sys_timeout* %70, i32 0, i32 3
  %72 = load %struct.sys_timeout*, %struct.sys_timeout** %71, align 8
  store %struct.sys_timeout* %72, %struct.sys_timeout** %7, align 8
  br label %18

73:                                               ; preds = %18
  br label %74

74:                                               ; preds = %73, %63, %13
  ret void
}

declare dso_local %struct.sys_timeouts* @sys_arch_timeouts(...) #1

declare dso_local i32 @memp_free(i32, %struct.sys_timeout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
