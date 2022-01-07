; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_value_xform.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_value_xform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_value_xform(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @hb_value_type(i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @json_incref(i32* %16)
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %3, align 8
  br label %49

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %21 [
    i32 129, label %22
    i32 133, label %25
    i32 130, label %29
    i32 131, label %33
    i32 128, label %37
    i32 134, label %41
    i32 132, label %45
  ]

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @xform_null(i32 %23)
  store i32* %24, i32** %3, align 8
  br label %49

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32* @xform_bool(i32* %26, i32 %27)
  store i32* %28, i32** %3, align 8
  br label %49

29:                                               ; preds = %19
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @xform_int(i32* %30, i32 %31)
  store i32* %32, i32** %3, align 8
  br label %49

33:                                               ; preds = %19
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32* @xform_double(i32* %34, i32 %35)
  store i32* %36, i32** %3, align 8
  br label %49

37:                                               ; preds = %19
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32* @xform_string(i32* %38, i32 %39)
  store i32* %40, i32** %3, align 8
  br label %49

41:                                               ; preds = %19
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32* @xform_array(i32* %42, i32 %43)
  store i32* %44, i32** %3, align 8
  br label %49

45:                                               ; preds = %19
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32* @xform_dict(i32* %46, i32 %47)
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %45, %41, %37, %33, %29, %25, %22, %15
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i32 @hb_value_type(i32*) #1

declare dso_local i32 @json_incref(i32*) #1

declare dso_local i32* @xform_null(i32) #1

declare dso_local i32* @xform_bool(i32*, i32) #1

declare dso_local i32* @xform_int(i32*, i32) #1

declare dso_local i32* @xform_double(i32*, i32) #1

declare dso_local i32* @xform_string(i32*, i32) #1

declare dso_local i32* @xform_array(i32*, i32) #1

declare dso_local i32* @xform_dict(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
