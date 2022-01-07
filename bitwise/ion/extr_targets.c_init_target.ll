; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_targets.c_init_target.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_targets.c_init_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@type_metrics = common dso_local global %struct.TYPE_6__* null, align 8
@target_os = common dso_local global i32 0, align 4
@target_arch = common dso_local global i32 0, align 4
@win32_x86_metrics = common dso_local global %struct.TYPE_6__* null, align 8
@win32_x64_metrics = common dso_local global %struct.TYPE_6__* null, align 8
@ilp32_metrics = common dso_local global %struct.TYPE_6__* null, align 8
@lp64_metrics = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unsupported os/arch combination: %s/%s\0A\00", align 1
@os_names = common dso_local global i8** null, align 8
@arch_names = common dso_local global i8** null, align 8
@TYPE_PTR = common dso_local global i64 0, align 8
@type_uint = common dso_local global i8* null, align 8
@type_uintptr = common dso_local global i8* null, align 8
@type_usize = common dso_local global i8* null, align 8
@type_int = common dso_local global i32 0, align 4
@type_ssize = common dso_local global i32 0, align 4
@type_ullong = common dso_local global i8* null, align 8
@type_llong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_target() #0 {
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @type_metrics, align 8
  %1 = load i32, i32* @target_os, align 4
  switch i32 %1, label %24 [
    i32 128, label %2
    i32 130, label %10
    i32 129, label %18
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @target_arch, align 4
  switch i32 %3, label %8 [
    i32 131, label %4
    i32 132, label %6
  ]

4:                                                ; preds = %2
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @win32_x86_metrics, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** @type_metrics, align 8
  br label %9

6:                                                ; preds = %2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @win32_x64_metrics, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** @type_metrics, align 8
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %6, %4
  br label %25

10:                                               ; preds = %0
  %11 = load i32, i32* @target_arch, align 4
  switch i32 %11, label %16 [
    i32 131, label %12
    i32 132, label %14
  ]

12:                                               ; preds = %10
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ilp32_metrics, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** @type_metrics, align 8
  br label %17

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lp64_metrics, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** @type_metrics, align 8
  br label %17

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %14, %12
  br label %25

18:                                               ; preds = %0
  %19 = load i32, i32* @target_arch, align 4
  switch i32 %19, label %22 [
    i32 132, label %20
  ]

20:                                               ; preds = %18
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lp64_metrics, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** @type_metrics, align 8
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %20
  br label %25

24:                                               ; preds = %0
  br label %25

25:                                               ; preds = %24, %23, %17, %9
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @type_metrics, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = load i8**, i8*** @os_names, align 8
  %30 = load i32, i32* @target_os, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** @arch_names, align 8
  %35 = load i32, i32* @target_arch, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %25
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @type_metrics, align 8
  %43 = load i64, i64* @TYPE_PTR, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** @type_uint, align 8
  store i8* %49, i8** @type_uintptr, align 8
  %50 = load i8*, i8** @type_uint, align 8
  store i8* %50, i8** @type_usize, align 8
  %51 = load i32, i32* @type_int, align 4
  store i32 %51, i32* @type_ssize, align 4
  br label %64

52:                                               ; preds = %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @type_metrics, align 8
  %54 = load i64, i64* @TYPE_PTR, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i8*, i8** @type_ullong, align 8
  store i8* %61, i8** @type_uintptr, align 8
  %62 = load i8*, i8** @type_ullong, align 8
  store i8* %62, i8** @type_usize, align 8
  %63 = load i32, i32* @type_llong, align 4
  store i32 %63, i32* @type_ssize, align 4
  br label %64

64:                                               ; preds = %52, %48
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
