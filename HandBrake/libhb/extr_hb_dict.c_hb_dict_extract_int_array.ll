; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_extract_int_array.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_extract_int_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_dict_extract_int_array(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %4
  store i32 0, i32* %5, align 4
  br label %60

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32* @hb_dict_get(i32* %23, i8* %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @hb_value_type(i32* %26)
  %28 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %60

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @hb_value_array_len(i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %56, %41
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @hb_value_array_get(i32* %48, i32 %49)
  %51 = call i32 @hb_value_get_int(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %43

59:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %30, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32 @hb_value_get_int(i32) #1

declare dso_local i32 @hb_value_array_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
