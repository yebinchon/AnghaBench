; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_sanitize_filter_list.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_sanitize_filter_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }

@HB_FILTER_COMB_DETECT = common dso_local global i32 0, align 4
@HB_FILTER_DECOMB = common dso_local global i32 0, align 4
@HB_FILTER_DEINTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@MODE_DECOMB_SELECTIVE = common dso_local global i32 0, align 4
@HB_FILTER_DETELECINE = common dso_local global i32 0, align 4
@HB_FILTER_VFR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Skipping vfr filter\00", align 1
@HB_FILTER_CROP_SCALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"crop-top\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"crop-bottom\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"crop-left\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"crop-right\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Skipping crop/scale filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @sanitize_filter_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize_filter_list(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = bitcast %struct.TYPE_7__* %3 to i64*
  store i64 %1, i64* %20, align 4
  store i32* %0, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @HB_FILTER_COMB_DETECT, align 4
  %23 = call %struct.TYPE_8__* @hb_filter_find(i32* %21, i32 %22)
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* @HB_FILTER_DECOMB, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @HB_FILTER_DEINTERLACE, align 4
  store i32 %29, i32* %28, align 4
  store i32 2, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %58, %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_8__* @hb_filter_find(i32* %35, i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @hb_dict_get_int(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @MODE_DECOMB_SELECTIVE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @hb_value_int(i32 %54)
  %56 = call i32 @hb_dict_set(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %30

61:                                               ; preds = %43, %30
  br label %62

62:                                               ; preds = %61, %2
  store i32 0, i32* %10, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @HB_FILTER_DETELECINE, align 4
  %65 = call %struct.TYPE_8__* @hb_filter_find(i32* %63, i32 %64)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %11, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @HB_FILTER_VFR, align 4
  %72 = call %struct.TYPE_8__* @hb_filter_find(i32* %70, i32 %71)
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %11, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @hb_dict_get_int(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = call i32 @hb_list_rem(i32* %86, %struct.TYPE_8__* %87)
  %89 = call i32 @hb_filter_close(%struct.TYPE_8__** %11)
  %90 = call i32 @hb_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %82, %75
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @HB_FILTER_CROP_SCALE, align 4
  %95 = call %struct.TYPE_8__* @hb_filter_find(i32* %93, i32 %94)
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %11, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = icmp ne %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %146

98:                                               ; preds = %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %145

104:                                              ; preds = %98
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @hb_dict_get_int(i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %106, i32* %14, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @hb_dict_get_int(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %15, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @hb_dict_get_int(i32* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %110, i32* %16, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @hb_dict_get_int(i32* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %112, i32* %17, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @hb_dict_get_int(i32* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %114, i32* %18, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @hb_dict_get_int(i32* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 %116, i32* %19, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %104
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i32, i32* %18, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %19, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %141 = call i32 @hb_list_rem(i32* %139, %struct.TYPE_8__* %140)
  %142 = call i32 @hb_filter_close(%struct.TYPE_8__** %11)
  %143 = call i32 @hb_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %144

144:                                              ; preds = %138, %135, %132, %129, %126, %121, %104
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %92
  ret void
}

declare dso_local %struct.TYPE_8__* @hb_filter_find(i32*, i32) #1

declare dso_local i32 @hb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_list_rem(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @hb_filter_close(%struct.TYPE_8__**) #1

declare dso_local i32 @hb_log(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
