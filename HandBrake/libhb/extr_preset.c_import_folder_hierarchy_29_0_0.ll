; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_folder_hierarchy_29_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_folder_hierarchy_29_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"ChildrenArray\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @import_folder_hierarchy_29_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_folder_hierarchy_29_0_0(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @hb_dict_get(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @hb_value_array_len(i32* %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %77, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32* @hb_value_array_get(i32* %26, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @hb_dict_get_bool(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @hb_value_array_len(i32* %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i8* @hb_dict_get_string(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %10, align 8
  call void @import_folder_hierarchy_29_0_0(i8* %41, i32* %42, i32* %43)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @hb_dict_get(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i64 @hb_value_array_len(i32* %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %32
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @fix_name_collisions(i32* %50, i8* %51)
  store i8* %52, i8** %15, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @hb_dict_set_string(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @hb_value_incref(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @hb_value_array_remove(i32* %58, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @hb_value_array_insert(i32* %61, i32 %62, i32* %63)
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @free(i8* %65)
  br label %71

67:                                               ; preds = %32
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @hb_value_array_remove(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %49
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @free(i8* %72)
  br label %77

74:                                               ; preds = %25
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %21

78:                                               ; preds = %21
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i64 @hb_dict_get_bool(i32*, i8*) #1

declare dso_local i8* @hb_dict_get_string(i32*, i8*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i8* @fix_name_collisions(i32*, i8*) #1

declare dso_local i32 @hb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @hb_value_incref(i32*) #1

declare dso_local i32 @hb_value_array_remove(i32*, i32) #1

declare dso_local i32 @hb_value_array_insert(i32*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
