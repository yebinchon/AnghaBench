; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_filter_settings_string.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_filter_settings_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_filter_settings_string(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @hb_value_type(i32* %9)
  %11 = load i64, i64* @HB_VALUE_TYPE_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %2
  %14 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  br label %36

15:                                               ; preds = %8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @hb_value_type(i32* %16)
  %18 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @stringify_dict(i32 %21, i32* %22)
  store i8* %23, i8** %3, align 8
  br label %36

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @hb_value_type(i32* %25)
  %27 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @stringify_array(i32 %30, i32* %31)
  store i8* %32, i8** %3, align 8
  br label %36

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @hb_value_get_string_xform(i32* %34)
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %33, %29, %20, %13
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @stringify_dict(i32, i32*) #1

declare dso_local i8* @stringify_array(i32, i32*) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
