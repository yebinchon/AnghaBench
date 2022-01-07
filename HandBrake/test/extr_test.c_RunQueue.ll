; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_RunQueue.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_RunQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"Job\00", align 1
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@die = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: Invalid queue file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RunQueue(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @hb_value_read_json(i8* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @hb_value_type(i32* %14)
  %16 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @hb_dict_get(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @RunQueueJob(i32* %19, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @hb_value_type(i32* %24)
  %26 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @hb_value_array_len(i32* %29)
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %52, %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32* @hb_value_array_get(i32* %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @hb_dict_get(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @RunQueueJob(i32* %39, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i64, i64* @die, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %31

55:                                               ; preds = %50, %31
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %23
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 -1, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %55, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32* @hb_value_read_json(i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @RunQueueJob(i32*, i32) #1

declare dso_local i32 @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
