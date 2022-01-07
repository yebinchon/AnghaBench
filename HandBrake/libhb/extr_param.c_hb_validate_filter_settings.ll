; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_validate_filter_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_validate_filter_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [56 x i8] c"hb_validate_filter_settings: Unrecognized filter (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"hb_validate_filter_settings: invalid template!\00", align 1
@HB_DICT_ITER_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid filter key (%s) for filter %s\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid filter value (%s) for key %s filter %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_validate_filter_settings(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_3__* @hb_filter_get(i32 %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 1, i32* %3, align 4
  br label %99

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %99

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @hb_parse_filter_settings(i32* %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %99

39:                                               ; preds = %30
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @hb_dict_iter_init(i32* %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %93, %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @HB_DICT_ITER_DONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = call i8* @hb_dict_iter_key(i64 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32* @hb_dict_get(i32* %49, i8* %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %58)
  store i32 1, i32* %3, align 4
  br label %99

60:                                               ; preds = %46
  %61 = load i32*, i32** %10, align 8
  %62 = call i8* @hb_value_get_string(i32* %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32* @hb_dict_get(i32* %72, i8* %73)
  %75 = call i8* @hb_value_get_string_xform(i32* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @hb_validate_param_string(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %82, i32 %85)
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @free(i8* %87)
  store i32 1, i32* %3, align 4
  br label %99

89:                                               ; preds = %71
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %65, %60
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @hb_dict_iter_next(i32* %94, i64 %95)
  store i64 %96, i64* %8, align 8
  br label %42

97:                                               ; preds = %42
  %98 = call i32 @hb_value_free(i32** %7)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %80, %54, %37, %29, %21, %15
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_3__* @hb_filter_get(i32) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32* @hb_parse_filter_settings(i32*) #1

declare dso_local i64 @hb_dict_iter_init(i32*) #1

declare dso_local i8* @hb_dict_iter_key(i64) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

declare dso_local i64 @hb_validate_param_string(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @hb_dict_iter_next(i32*, i64) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
