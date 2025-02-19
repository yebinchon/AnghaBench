; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_get_dvd_volume_name.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_get_dvd_volume_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@volname_mutex = common dso_local global i32 0, align 4
@volname_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_dvd_volume_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dvd_volume_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32* @get_dvd_device_name(i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* @volname_mutex, align 4
  %9 = call i32 @g_mutex_lock(i32 %8)
  %10 = load i32, i32* @volname_hash, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @g_hash_table_lookup(i32 %10, i32* %11)
  %13 = call i32* @g_strdup(i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* @volname_mutex, align 4
  %15 = call i32 @g_mutex_unlock(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @uppers_and_unders(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @camel_convert(i32* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* (i8*, i32*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %26, i32* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @g_free(i32* %29)
  br label %34

31:                                               ; preds = %1
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* (i8*, i32*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @g_free(i32* %35)
  %37 = load i32*, i32** %4, align 8
  ret i32* %37
}

declare dso_local i32* @get_dvd_device_name(i32) #1

declare dso_local i32 @g_mutex_lock(i32) #1

declare dso_local i32* @g_strdup(i32) #1

declare dso_local i32 @g_hash_table_lookup(i32, i32*) #1

declare dso_local i32 @g_mutex_unlock(i32) #1

declare dso_local i64 @uppers_and_unders(i32*) #1

declare dso_local i32 @camel_convert(i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*, ...) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
