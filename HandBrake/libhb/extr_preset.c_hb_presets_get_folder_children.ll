; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_get_folder_children.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_get_folder_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@hb_presets = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ChildrenArray\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_presets_get_folder_children(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** @hb_presets, align 8
  store i32* %12, i32** %2, align 8
  br label %65

13:                                               ; preds = %1
  %14 = load i32*, i32** @hb_presets, align 8
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %53, %13
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @hb_value_array_len(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %65

34:                                               ; preds = %21
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @hb_value_array_get(i32* %35, i32 %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @hb_dict_get(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @hb_value_get_bool(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %56

50:                                               ; preds = %34
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @hb_dict_get(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %15

56:                                               ; preds = %49, %15
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32* null, i32** %2, align 8
  br label %65

63:                                               ; preds = %56
  %64 = load i32*, i32** %8, align 8
  store i32* %64, i32** %2, align 8
  br label %65

65:                                               ; preds = %63, %62, %33, %11
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_value_get_bool(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
