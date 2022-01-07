; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_glib.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_glib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"the glib header are too old, need at least 2.6.0, got: %d.%d.%d\00", align 1
@GLIB_MAJOR_VERSION = common dso_local global i32 0, align 4
@GLIB_MINOR_VERSION = common dso_local global i32 0, align 4
@GLIB_MICRO_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s, got: lib=%d.%d.%d, headers=%d.%d.%d\00", align 1
@glib_major_version = common dso_local global i32 0, align 4
@glib_minor_version = common dso_local global i32 0, align 4
@glib_micro_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"loading modules is not supported on this platform\00", align 1
@glib_mem_profiler_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_frontend_init_glib() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = call i32 @GLIB_CHECK_VERSION(i32 2, i32 6, i32 0)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GLIB_MAJOR_VERSION, align 4
  %7 = load i32, i32* @GLIB_MINOR_VERSION, align 4
  %8 = load i32, i32* @GLIB_MICRO_VERSION, align 4
  %9 = call i32 (i8*, ...) @g_critical(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32 %8)
  store i32 -1, i32* %1, align 4
  br label %33

10:                                               ; preds = %0
  %11 = load i32, i32* @GLIB_MAJOR_VERSION, align 4
  %12 = load i32, i32* @GLIB_MINOR_VERSION, align 4
  %13 = load i32, i32* @GLIB_MICRO_VERSION, align 4
  %14 = call i32* @glib_check_version(i32 %11, i32 %12, i32 %13)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @glib_major_version, align 4
  %20 = load i32, i32* @glib_minor_version, align 4
  %21 = load i32, i32* @glib_micro_version, align 4
  %22 = load i32, i32* @GLIB_MAJOR_VERSION, align 4
  %23 = load i32, i32* @GLIB_MINOR_VERSION, align 4
  %24 = load i32, i32* @GLIB_MICRO_VERSION, align 4
  %25 = call i32 (i8*, ...) @g_critical(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 -1, i32* %1, align 4
  br label %33

26:                                               ; preds = %10
  %27 = call i32 (...) @g_module_supported()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @g_critical(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %33

31:                                               ; preds = %26
  %32 = call i32 @g_thread_init(i32* null)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %29, %17, %5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @GLIB_CHECK_VERSION(i32, i32, i32) #1

declare dso_local i32 @g_critical(i8*, ...) #1

declare dso_local i32* @glib_check_version(i32, i32, i32) #1

declare dso_local i32 @g_module_supported(...) #1

declare dso_local i32 @g_thread_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
