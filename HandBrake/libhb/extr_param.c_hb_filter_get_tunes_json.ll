; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_filter_get_tunes_json.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_filter_get_tunes_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"short_name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_filter_get_tunes_json(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i32* (...) @hb_value_array_init()
  store i32* %9, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.TYPE_3__* @filter_param_get_tunes_internal(i32 %10, i32* null)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %12

24:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = call i32* (...) @hb_dict_init()
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @hb_value_string(i32* %37)
  %39 = call i32 @hb_dict_set(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @hb_value_string(i32* %46)
  %48 = call i32 @hb_dict_set(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @hb_value_array_append(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @hb_value_get_json(i32* %56)
  store i8* %57, i8** %8, align 8
  %58 = call i32 @hb_value_free(i32** %3)
  %59 = load i8*, i8** %8, align 8
  ret i8* %59
}

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local %struct.TYPE_3__* @filter_param_get_tunes_internal(i32, i32*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

declare dso_local i8* @hb_value_get_json(i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
