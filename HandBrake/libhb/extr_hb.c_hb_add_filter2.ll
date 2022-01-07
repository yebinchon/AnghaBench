; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_add_filter2.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_add_filter2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hb_add_filter2: Invalid filter ID %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_add_filter2(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @hb_dict_get_int(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_3__* @hb_filter_get(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hb_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @hb_value_free(i32** %4)
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @hb_value_array_len(i32* %27)
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %55, %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @hb_value_array_get(i32* %34, i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @hb_dict_get_int(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @hb_value_array_insert(i32* %43, i32 %44, i32* %45)
  br label %63

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @hb_value_free(i32** %4)
  br label %63

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %29

58:                                               ; preds = %29
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @hb_value_array_append(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %51, %42, %17
  ret void
}

declare dso_local i32 @hb_dict_get_int(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @hb_filter_get(i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_value_array_insert(i32*, i32, i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
