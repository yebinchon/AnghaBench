; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_iter_next_ex.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_iter_next_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_dict_iter_next_ex(i32* %0, i32** %1, i8** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %10 = load i32**, i32*** %7, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

14:                                               ; preds = %4
  %15 = load i8**, i8*** %8, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i8* @json_object_iter_key(i32* %19)
  %21 = load i8**, i8*** %8, align 8
  store i8* %20, i8** %21, align 8
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i32**, i32*** %9, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @json_object_iter_value(i32* %27)
  %29 = load i32**, i32*** %9, align 8
  store i32* %28, i32** %29, align 8
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @json_object_iter_next(i32* %31, i32* %33)
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %13
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i8* @json_object_iter_key(i32*) #1

declare dso_local i32* @json_object_iter_value(i32*) #1

declare dso_local i32* @json_object_iter_next(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
