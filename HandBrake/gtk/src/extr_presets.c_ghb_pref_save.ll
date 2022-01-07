; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_pref_save.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_pref_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prefsDict = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Preferences\00", align 1
@FALSE = common dso_local global i32 0, align 4
@prefs_modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_pref_save(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @ghb_dict_get_value(i32* %8, i8* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load i32*, i32** @prefsDict, align 8
  %15 = call i8* @ghb_dict_get(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %38

20:                                               ; preds = %13
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @ghb_dict_get(i32* %21, i8* %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @ghb_value_cmp(i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ghb_value_dup(i32* %32)
  %34 = call i32 @ghb_dict_set(i32* %30, i8* %31, i32 %33)
  %35 = call i32 (...) @store_prefs()
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* @prefs_modified, align 4
  br label %37

37:                                               ; preds = %29, %20
  br label %38

38:                                               ; preds = %19, %37, %2
  ret void
}

declare dso_local i32* @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i8* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_value_cmp(i32*, i32*) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @ghb_value_dup(i32*) #1

declare dso_local i32 @store_prefs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
