; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_set_names.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_set_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@g_extern = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RARCH_OVERRIDE_SETTING_SAVE_PATH = common dso_local global i32 0, align 4
@path_main_basename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".srm\00", align 1
@RARCH_OVERRIDE_SETTING_STATE_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c".state\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".cht\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @path_set_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_set_names(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_5__* @g_extern, %struct.TYPE_5__** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @path_set_basename(i8* %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load i32, i32* @RARCH_OVERRIDE_SETTING_SAVE_PATH, align 4
  %10 = call i32 @retroarch_override_setting_is_set(i32 %9, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @path_main_basename, align 4
  %18 = call i32 @fill_pathname_noext(i32 %16, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %19

19:                                               ; preds = %12, %8
  %20 = load i32, i32* @RARCH_OVERRIDE_SETTING_STATE_PATH, align 4
  %21 = call i32 @retroarch_override_setting_is_set(i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @path_main_basename, align 4
  %29 = call i32 @fill_pathname_noext(i32 %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %30

30:                                               ; preds = %23, %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @path_main_basename, align 4
  %36 = call i32 @fill_pathname_noext(i32 %34, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %37

37:                                               ; preds = %30, %1
  %38 = call i32 (...) @path_set_redirect()
  ret void
}

declare dso_local i32 @path_set_basename(i8*) #1

declare dso_local i32 @retroarch_override_setting_is_set(i32, i32*) #1

declare dso_local i32 @fill_pathname_noext(i32, i32, i8*, i32) #1

declare dso_local i32 @path_set_redirect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
