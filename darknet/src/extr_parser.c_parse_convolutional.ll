; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_convolutional.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_convolutional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"activation\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"logistic\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Layer before convolutional layer must output image.\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"batch_normalize\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"xnor\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"flipped\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i8* } @parse_convolutional(i32* %0, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @option_find_int(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @option_find_int(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @option_find_int(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @option_find_int_quiet(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @option_find_int_quiet(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @option_find_int_quiet(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @option_find_str(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @get_activation(i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %14, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %16, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %55, %40
  %62 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @option_find_int_quiet(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %17, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @option_find_int_quiet(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %18, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i8* @option_find_int_quiet(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call { i32, i8* } @make_convolutional_layer(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %89)
  %91 = bitcast %struct.TYPE_9__* %3 to { i32, i8* }*
  %92 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %91, i32 0, i32 0
  %93 = extractvalue { i32, i8* } %90, 0
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %91, i32 0, i32 1
  %95 = extractvalue { i32, i8* } %90, 1
  store i8* %95, i8** %94, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i8* @option_find_int_quiet(i32* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @option_find_float_quiet(i32* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = bitcast %struct.TYPE_9__* %3 to { i32, i8* }*
  %103 = load { i32, i8* }, { i32, i8* }* %102, align 8
  ret { i32, i8* } %103
}

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8* @option_find_int_quiet(i32*, i8*, i32) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @get_activation(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local { i32, i8* } @make_convolutional_layer(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @option_find_float_quiet(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
