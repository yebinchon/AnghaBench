; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_generate_filter_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_generate_filter_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"hb_generate_filter_settings: Unrecognized filter (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_generate_filter_settings(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %41 [
    i32 133, label %12
    i32 130, label %12
    i32 142, label %12
    i32 128, label %12
    i32 131, label %12
    i32 137, label %12
    i32 132, label %12
    i32 134, label %15
    i32 144, label %20
    i32 135, label %25
    i32 129, label %30
    i32 141, label %35
    i32 143, label %35
    i32 140, label %35
    i32 138, label %35
    i32 136, label %35
    i32 139, label %35
  ]

12:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %13 = load i8*, i8** %9, align 8
  %14 = call i32* @hb_parse_filter_settings(i8* %13)
  store i32* %14, i32** %10, align 8
  br label %45

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32* @generate_nlmeans_settings(i8* %16, i8* %17, i8* %18)
  store i32* %19, i32** %10, align 8
  br label %45

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32* @generate_chroma_smooth_settings(i8* %21, i8* %22, i8* %23)
  store i32* %24, i32** %10, align 8
  br label %45

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32* @generate_lapsharp_settings(i8* %26, i8* %27, i8* %28)
  store i32* %29, i32** %10, align 8
  br label %45

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32* @generate_unsharp_settings(i8* %31, i8* %32, i8* %33)
  store i32* %34, i32** %10, align 8
  br label %45

35:                                               ; preds = %4, %4, %4, %4, %4, %4
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32* @generate_generic_settings(i32 %36, i8* %37, i8* %38, i8* %39)
  store i32* %40, i32** %10, align 8
  br label %45

41:                                               ; preds = %4
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %35, %30, %25, %20, %15, %12
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @check_filter_status(i32 %46, i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @hb_validate_filter_settings(i32 %52, i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32*, i32** %10, align 8
  store i32* %57, i32** %5, align 8
  br label %60

58:                                               ; preds = %51, %45
  %59 = call i32 @hb_value_free(i32** %10)
  store i32* null, i32** %5, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local i32* @hb_parse_filter_settings(i8*) #1

declare dso_local i32* @generate_nlmeans_settings(i8*, i8*, i8*) #1

declare dso_local i32* @generate_chroma_smooth_settings(i8*, i8*, i8*) #1

declare dso_local i32* @generate_lapsharp_settings(i8*, i8*, i8*) #1

declare dso_local i32* @generate_unsharp_settings(i8*, i8*, i8*) #1

declare dso_local i32* @generate_generic_settings(i32, i8*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @check_filter_status(i32, i32*) #1

declare dso_local i64 @hb_validate_filter_settings(i32, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
