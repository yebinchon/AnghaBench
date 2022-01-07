; ModuleID = '/home/carl/AnghaBench/ccv/site/_source/extr_section-001-002.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/site/_source/extr_section-001-002.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@CCV_IO_RGB_COLOR = common dso_local global i32 0, align 4
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@ccv_scd_default_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @CCV_IO_RGB_COLOR, align 4
  %15 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @ccv_read(i8* %13, i32** %6, i32 %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @ccv_scd_classifier_cascade_read(i8* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ccv_scd_default_params, align 4
  %24 = call %struct.TYPE_9__* @ccv_scd_detect_objects(i32* %22, i32** %7, i32 1, i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %53, %2
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @ccv_array_get(%struct.TYPE_9__* %32, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %10, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %25

56:                                               ; preds = %25
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = call i32 @ccv_array_free(%struct.TYPE_9__* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ccv_scd_classifier_cascade_free(i32* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ccv_matrix_free(i32* %61)
  ret i32 0
}

declare dso_local i32 @ccv_read(i8*, i32**, i32) #1

declare dso_local i32* @ccv_scd_classifier_cascade_read(i8*) #1

declare dso_local %struct.TYPE_9__* @ccv_scd_detect_objects(i32*, i32**, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_9__*) #1

declare dso_local i32 @ccv_scd_classifier_cascade_free(i32*) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
