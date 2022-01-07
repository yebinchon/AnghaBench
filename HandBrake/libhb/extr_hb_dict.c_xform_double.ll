; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_xform_double.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_xform_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @xform_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xform_double(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call double @json_real_value(i32* %9)
  store double %10, double* %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %12 [
    i32 129, label %13
    i32 132, label %15
    i32 130, label %21
    i32 131, label %24
    i32 128, label %27
  ]

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12
  %14 = call i32* (...) @json_null()
  store i32* %14, i32** %3, align 8
  br label %35

15:                                               ; preds = %2
  %16 = load double, double* %6, align 8
  %17 = fptosi double %16 to i32
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32* @json_boolean(i32 %19)
  store i32* %20, i32** %3, align 8
  br label %35

21:                                               ; preds = %2
  %22 = load double, double* %6, align 8
  %23 = call i32* @json_integer(double %22)
  store i32* %23, i32** %3, align 8
  br label %35

24:                                               ; preds = %2
  %25 = load double, double* %6, align 8
  %26 = call i32* @json_real(double %25)
  store i32* %26, i32** %3, align 8
  br label %35

27:                                               ; preds = %2
  %28 = load double, double* %6, align 8
  %29 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32* @json_string(i8* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32*, i32** %8, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %27, %24, %21, %15, %13
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local double @json_real_value(i32*) #1

declare dso_local i32* @json_null(...) #1

declare dso_local i32* @json_boolean(i32) #1

declare dso_local i32* @json_integer(double) #1

declare dso_local i32* @json_real(double) #1

declare dso_local i8* @hb_strdup_printf(i8*, double) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
