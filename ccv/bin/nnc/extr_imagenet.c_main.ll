; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/extr_imagenet.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/extr_imagenet.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@main.imagenet_options = internal global [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"train-list\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"test-list\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"base-dir\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i32 (...) @ccv_nnc_init()
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt_long_only(i32 %17, i8** %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @main.imagenet_options, i64 0, i64 0), i32* %6)
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
    i32 3, label %29
  ]

23:                                               ; preds = %21
  %24 = call i32 @exit(i32 0) #3
  unreachable

25:                                               ; preds = %21
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %7, align 8
  br label %31

27:                                               ; preds = %21
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %8, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %21, %29, %27, %25
  br label %16

32:                                               ; preds = %16
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call %struct.TYPE_11__* @_array_from_disk_new(i8* %33, i8* %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %10, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = call i32* @ccv_cnnp_dataframe_from_array_new(%struct.TYPE_11__* %36)
  store i32* %37, i32** %11, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call %struct.TYPE_11__* @_array_from_disk_new(i8* %38, i8* %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %12, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = call i32* @ccv_cnnp_dataframe_from_array_new(%struct.TYPE_11__* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = call i32 @train_imagenet(i32 128, i32* %43, i32* %44, %struct.TYPE_11__* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @ccv_cnnp_dataframe_free(i32* %47)
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @ccv_cnnp_dataframe_free(i32* %49)
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %66, %32
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @ccv_array_get(%struct.TYPE_11__* %58, i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_10__*
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ccfree(i32 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = call i32 @ccv_array_free(%struct.TYPE_11__* %70)
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %87, %69
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @ccv_array_get(%struct.TYPE_11__* %79, i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ccfree(i32 %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %72

90:                                               ; preds = %72
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = call i32 @ccv_array_free(%struct.TYPE_11__* %91)
  ret i32 0
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_11__* @_array_from_disk_new(i8*, i8*) #1

declare dso_local i32* @ccv_cnnp_dataframe_from_array_new(%struct.TYPE_11__*) #1

declare dso_local i32 @train_imagenet(i32, i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ccv_cnnp_dataframe_free(i32*) #1

declare dso_local i32 @ccfree(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
