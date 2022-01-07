; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_xform_dict.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_xform_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_DICT_ITER_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%s%s%s:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @xform_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xform_dict(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @hb_dict_iter_init(i32* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @HB_DICT_ITER_DONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = call i32* @hb_dict_iter_value(i64 %23)
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %27 [
    i32 129, label %28
    i32 132, label %28
    i32 130, label %28
    i32 131, label %28
    i32 128, label %32
  ]

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %25, %25, %25, %25, %27
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32* @hb_value_xform(i32* %29, i32 %30)
  store i32* %31, i32** %3, align 8
  br label %93

32:                                               ; preds = %25
  %33 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %8, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @hb_dict_iter_init(i32* %34)
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %68, %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @HB_DICT_ITER_DONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = call i8* @hb_dict_iter_key(i64 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @hb_dict_iter_value(i64 %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32* @hb_value_xform(i32* %45, i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i8* @hb_value_get_string(i32* %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = load i8*, i8** %13, align 8
  br label %62

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %61 ]
  %64 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %52, i8* %56, i8* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @free(i8* %65)
  %67 = call i32 @hb_value_free(i32** %12)
  br label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @hb_dict_iter_next(i32* %69, i64 %70)
  store i64 %71, i64* %9, align 8
  br label %36

72:                                               ; preds = %36
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = call i32* @json_string(i8* %83)
  store i32* %84, i32** %16, align 8
  br label %89

85:                                               ; preds = %72
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @free(i8* %86)
  store i8* null, i8** %8, align 8
  %88 = call i32* (...) @json_null()
  store i32* %88, i32** %16, align 8
  br label %89

89:                                               ; preds = %85, %77
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32*, i32** %16, align 8
  store i32* %92, i32** %3, align 8
  br label %93

93:                                               ; preds = %89, %28
  %94 = load i32*, i32** %3, align 8
  ret i32* %94
}

declare dso_local i64 @hb_dict_iter_init(i32*) #1

declare dso_local i32* @hb_dict_iter_value(i64) #1

declare dso_local i32* @hb_value_xform(i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @hb_dict_iter_key(i64) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i64 @hb_dict_iter_next(i32*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i32* @json_null(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
