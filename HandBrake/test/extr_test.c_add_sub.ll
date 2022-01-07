; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_add_sub.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_add_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Warning: Could not find subtitle track %d, skipped\0A\00", align 1
@subburn = common dso_local global i32 0, align 4
@subdefault = common dso_local global i32 0, align 4
@subforce = common dso_local global i32 0, align 4
@mux = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Warning: Skipping subtitle track %d, can't have more than one track burnt in\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32, i32*)* @add_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sub(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_6__* @hb_list_item(i32 %19, i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %12, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %6, align 4
  br label %98

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @subburn, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @hb_subtitle_can_burn(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %33, %29
  %44 = phi i1 [ false, %33 ], [ false, %29 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @subdefault, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @subforce, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @test_sub_list(i32 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @mux, align 4
  %64 = call i32 @hb_subtitle_can_pass(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  store i32 -1, i32* %6, align 4
  br label %98

75:                                               ; preds = %66
  %76 = load i32*, i32** %11, align 8
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %59, %43
  %78 = call i32* (...) @hb_dict_init()
  store i32* %78, i32** %16, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @hb_value_int(i32 %80)
  %82 = call i32 @hb_dict_set(i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @hb_value_bool(i32 %84)
  %86 = call i32 @hb_dict_set(i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @hb_value_bool(i32 %88)
  %90 = call i32 @hb_dict_set(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @hb_value_bool(i32 %92)
  %94 = call i32 @hb_dict_set(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @hb_value_array_append(i32* %95, i32* %96)
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %77, %70, %24
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_6__* @hb_list_item(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @hb_subtitle_can_burn(i32) #1

declare dso_local i32 @test_sub_list(i32, i32) #1

declare dso_local i32 @hb_subtitle_can_pass(i32, i32) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_value_bool(i32) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
