; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_detection.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"coords\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rescore\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"softmax\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"coord_scale\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"object_scale\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"noobject_scale\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"class_scale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"jitter\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reorg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_detection(%struct.TYPE_7__* noalias sret %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_6__* %4 to i64*
  store i64 %2, i64* %11, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @option_find_int(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i8* @option_find_int(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @option_find_int(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @option_find_int(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @option_find_int(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  call void @make_detection_layer(%struct.TYPE_7__* sret %0, i32 %28, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @option_find_int(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 10
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @option_find_int(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 9
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @option_find_int_quiet(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 90)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 8
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @option_find_float(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), double 1.000000e+00)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @option_find_int(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @option_find_float(i32* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), double 1.000000e+00)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @option_find_float(i32* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), double 1.000000e+00)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  store i8* %55, i8** %56, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i8* @option_find_float(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), double 1.000000e+00)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @option_find_float(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), double 2.000000e-01)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i8* @option_find_int_quiet(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i8* @option_find_int_quiet(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  ret void
}

declare dso_local i8* @option_find_int(i32*, i8*, i32) #1

declare dso_local void @make_detection_layer(%struct.TYPE_7__* sret, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i8* @option_find_float(i32*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
