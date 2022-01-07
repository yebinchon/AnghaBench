; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_generic_opt_get.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_generic_opt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32)* @generic_opt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generic_opt_get(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 131, label %18
    i32 130, label %24
    i32 128, label %30
  ]

18:                                               ; preds = %4, %4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @lookup_generic_int(i32* %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32* @ghb_int_value_new(i32 %22)
  store i32* %23, i32** %5, align 8
  br label %38

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call double @lookup_generic_double(i32* %25, i32* %26)
  store double %27, double* %13, align 8
  %28 = load double, double* %13, align 8
  %29 = call i32* @ghb_double_value_new(double %28)
  store i32* %29, i32** %5, align 8
  br label %38

30:                                               ; preds = %4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @lookup_generic_option(i32* %31, i32* %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32* @ghb_string_value_new(i8* %34)
  store i32* %35, i32** %5, align 8
  br label %38

36:                                               ; preds = %4
  %37 = load i32*, i32** %11, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %36, %30, %24, %18
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32 @lookup_generic_int(i32*, i32*) #1

declare dso_local i32* @ghb_int_value_new(i32) #1

declare dso_local double @lookup_generic_double(i32*, i32*) #1

declare dso_local i32* @ghb_double_value_new(double) #1

declare dso_local i8* @lookup_generic_option(i32*, i32*) #1

declare dso_local i32* @ghb_string_value_new(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
