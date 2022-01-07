; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_find_queue_job.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_find_queue_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"job_unique_id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ghb_find_queue_job(i32* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load i32**, i32*** %7, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32**, i32*** %7, align 8
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 -1, i64* %4, align 8
  br label %52

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @ghb_array_len(i32* %22)
  store i64 %23, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %48, %21
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32* @ghb_array_get(i32* %29, i64 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @ghb_dict_get(i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @ghb_dict_get_int(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load i32**, i32*** %7, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %4, align 8
  br label %52

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %24

51:                                               ; preds = %24
  store i64 -1, i64* %4, align 8
  br label %52

52:                                               ; preds = %51, %45, %20
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
