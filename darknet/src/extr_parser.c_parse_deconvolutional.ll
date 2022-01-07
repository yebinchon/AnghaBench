; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_deconvolutional.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_deconvolutional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"logistic\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Layer before deconvolutional layer must output image.\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"batch_normalize\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"padding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_deconvolutional(i32* %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @option_find_int(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @option_find_int(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @option_find_int(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @option_find_str(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @get_activation(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40, %37, %2
  %44 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @option_find_int_quiet(i32* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @option_find_int_quiet(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @option_find_int_quiet(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @make_deconvolutional_layer(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  ret i32 %73
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i32 @make_deconvolutional_layer(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
