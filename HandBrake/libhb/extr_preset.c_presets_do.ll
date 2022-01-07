; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_presets_do.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_presets_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@PRESET_DO_DELETE = common dso_local global i32 0, align 4
@PRESET_DO_SKIP = common dso_local global i32 0, align 4
@PRESET_DO_NEXT = common dso_local global i32 0, align 4
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"VersionMajor\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PresetList\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ChildrenArray\00", align 1
@PRESET_DO_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Error: invalid preset format in presets_do()\00", align 1
@PRESET_DO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32*, %struct.TYPE_7__*)*, i32*, %struct.TYPE_7__*)* @presets_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @presets_do(i32 (i32*, %struct.TYPE_7__*)* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32*, %struct.TYPE_7__*)*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 (i32*, %struct.TYPE_7__*)* %0, i32 (i32*, %struct.TYPE_7__*)** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @hb_value_type(i32* %11)
  %13 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %62, %44, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @hb_value_array_len(i32* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  store i32 %22, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32* @hb_value_array_get(i32* %34, i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = call i32 @presets_do(i32 (i32*, %struct.TYPE_7__*)* %37, i32* %38, %struct.TYPE_7__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @PRESET_DO_DELETE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %21
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @hb_value_array_remove(i32* %45, i32 %46)
  br label %16

48:                                               ; preds = %21
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PRESET_DO_SKIP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @PRESET_DO_NEXT, align 4
  store i32 %55, i32* %4, align 4
  br label %142

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PRESET_DO_NEXT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %142

62:                                               ; preds = %56
  br label %16

63:                                               ; preds = %16
  %64 = load i32, i32* @PRESET_DO_NEXT, align 4
  store i32 %64, i32* %4, align 4
  br label %142

65:                                               ; preds = %3
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @hb_value_type(i32* %66)
  %68 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = call i32* @hb_dict_get(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32*, i32** %6, align 8
  %76 = call i32* @hb_dict_get(i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %76, i32** %9, align 8
  %77 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %5, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = call i32 @presets_do(i32 (i32*, %struct.TYPE_7__*)* %77, i32* %78, %struct.TYPE_7__* %79)
  store i32 %80, i32* %4, align 4
  br label %142

81:                                               ; preds = %70, %65
  %82 = load i32*, i32** %6, align 8
  %83 = call i64 @hb_value_type(i32* %82)
  %84 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = call i32* @hb_dict_get(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i64 @hb_value_get_bool(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %86
  %92 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = call i32 %92(i32* %93, %struct.TYPE_7__* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @PRESET_DO_NEXT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %142

101:                                              ; preds = %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i32* @hb_dict_get(i32* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %108, i32** %9, align 8
  %109 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %5, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = call i32 @presets_do(i32 (i32*, %struct.TYPE_7__*)* %109, i32* %110, %struct.TYPE_7__* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PRESET_DO_SUCCESS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %142

118:                                              ; preds = %101
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %142

125:                                              ; preds = %86, %81
  %126 = load i32*, i32** %6, align 8
  %127 = call i64 @hb_value_type(i32* %126)
  %128 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = call i32* @hb_dict_get(i32* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32 (i32*, %struct.TYPE_7__*)*, i32 (i32*, %struct.TYPE_7__*)** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = call i32 %135(i32* %136, %struct.TYPE_7__* %137)
  store i32 %138, i32* %4, align 4
  br label %142

139:                                              ; preds = %130, %125
  %140 = call i32 @hb_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @PRESET_DO_DELETE, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %134, %118, %116, %99, %74, %63, %60, %54
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_value_array_remove(i32*, i32) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32 @hb_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
