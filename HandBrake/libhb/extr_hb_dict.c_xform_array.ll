; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_xform_array.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_xform_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%s,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @xform_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xform_array(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @hb_value_array_len(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @hb_value_array_get(i32* %21, i32 0)
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %25 [
    i32 129, label %26
    i32 132, label %26
    i32 130, label %26
    i32 131, label %26
    i32 128, label %30
  ]

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %23, %23, %23, %23, %25
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @hb_value_xform(i32* %27, i32 %28)
  store i32* %29, i32** %3, align 8
  br label %80

30:                                               ; preds = %23
  %31 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %30
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32* @hb_value_array_get(i32* %37, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @hb_value_xform(i32* %40, i32 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i8* @hb_value_get_string(i32* %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @free(i8* %52)
  br label %54

54:                                               ; preds = %47, %36
  %55 = call i32 @hb_value_free(i32** %11)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strlen(i8* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = call i32* @json_string(i8* %70)
  store i32* %71, i32** %15, align 8
  br label %76

72:                                               ; preds = %59
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @free(i8* %73)
  store i8* null, i8** %8, align 8
  %75 = call i32* (...) @json_null()
  store i32* %75, i32** %15, align 8
  br label %76

76:                                               ; preds = %72, %64
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32*, i32** %15, align 8
  store i32* %79, i32** %3, align 8
  br label %80

80:                                               ; preds = %76, %26
  %81 = load i32*, i32** %3, align 8
  ret i32* %81
}

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32* @hb_value_xform(i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i32* @json_null(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
