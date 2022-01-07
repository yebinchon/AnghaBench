; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_stringify_array.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_stringify_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @stringify_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stringify_array(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @hb_value_array_len(i32* %13)
  store i32 %14, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @hb_value_array_len(i32* %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %76

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %71, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @hb_value_array_get(i32* %26, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i8* @hb_filter_settings_string(i32 %29, i32* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @append_string(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @hb_value_type(i32* %41)
  %43 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i8* @append_string(i8* %46, i8* %47)
  store i8* %48, i8** %6, align 8
  br label %67

49:                                               ; preds = %40
  %50 = load i32*, i32** %10, align 8
  %51 = call i64 @hb_value_type(i32* %50)
  %52 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @append_string(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @append_string(i8* %57, i8* %58)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @append_string(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %61, i8** %6, align 8
  br label %66

62:                                               ; preds = %49
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @append_string(i8* %63, i8* %64)
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %62, %54
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %67, %25
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %21

74:                                               ; preds = %21
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %74, %18
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i8* @hb_filter_settings_string(i32, i32*) #1

declare dso_local i8* @append_string(i8*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
