; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_add_to_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_add_to_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No subtitle list!\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @subtitle_add_to_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_add_to_settings(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @ghb_get_job_subtitle_list(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @g_warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %95

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @ghb_dict_get_string(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call %struct.TYPE_3__* @ghb_lookup_container_by_name(i8* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %12, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @get_sub_source(i32* %24, i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @ghb_dict_get_bool(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @hb_subtitle_can_burn(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ghb_dict_set_bool(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %35, %31, %19
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hb_subtitle_can_pass(i64 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %7, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ghb_dict_set_bool(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @FALSE, align 8
  %57 = call i32 @ghb_dict_set_bool(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %50, %43, %40
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @ghb_dict_get_bool(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i64 %60, i64* %9, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @ghb_dict_get_bool(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @hb_subtitle_can_force(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %8, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @ghb_dict_set_bool(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %69, %65, %58
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @ghb_array_append(i32* %75, i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @ghb_array_len(i32* %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32*, i32** %3, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @subtitle_exclusive_burn_settings(i32* %83, i64 %85)
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32*, i32** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = sub nsw i64 %92, 1
  %94 = call i32 @subtitle_exclusive_default_settings(i32* %91, i64 %93)
  br label %95

95:                                               ; preds = %17, %90, %87
  ret void
}

declare dso_local i32* @ghb_get_job_subtitle_list(i32*) #1

declare dso_local i32 @g_warning(i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i64 @get_sub_source(i32*, i32*) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32 @hb_subtitle_can_burn(i64) #1

declare dso_local i32 @ghb_dict_set_bool(i32*, i8*, i64) #1

declare dso_local i32 @hb_subtitle_can_pass(i64, i32) #1

declare dso_local i32 @hb_subtitle_can_force(i64) #1

declare dso_local i32 @ghb_array_append(i32*, i32*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32 @subtitle_exclusive_burn_settings(i32*, i64) #1

declare dso_local i32 @subtitle_exclusive_default_settings(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
