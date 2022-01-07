; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_add_internal.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_add_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@hb_presets = common dso_local global i32* null, align 8
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hb_presets_add_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_presets_add_internal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_4__* @lookup_default_index(i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @hb_presets_clear_default()
  br label %25

25:                                               ; preds = %23, %18, %13
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @free(%struct.TYPE_4__* %26)
  %28 = load i32*, i32** @hb_presets, align 8
  %29 = call i32 @hb_value_array_len(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @hb_value_type(i32* %30)
  %32 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32*, i32** @hb_presets, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @hb_value_dup(i32* %36)
  %38 = call i32 @hb_value_array_append(i32* %35, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %25
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @hb_value_type(i32* %42)
  %44 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @hb_value_array_len(i32* %47)
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %63, %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32* @hb_value_array_get(i32* %54, i32 %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** @hb_presets, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @hb_value_dup(i32* %58)
  %60 = call i32 @hb_value_array_append(i32* %57, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %49

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %34
  %69 = call i32 @hb_value_free(i32** %3)
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %72, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_4__* @lookup_default_index(i32*) #1

declare dso_local i32 @hb_presets_clear_default(...) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32) #1

declare dso_local i32 @hb_value_dup(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
