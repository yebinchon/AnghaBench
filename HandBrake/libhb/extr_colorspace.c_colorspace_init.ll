; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_colorspace.c_colorspace_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_colorspace.c_colorspace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"primaries\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"trc\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"colorspace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**)* @colorspace_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @colorspace_init(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %15 = call %struct.TYPE_5__* @calloc(i32 1, i32 4)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %103

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @hb_dict_extract_string(i8** %8, i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @hb_dict_extract_string(i8** %9, i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @hb_dict_extract_string(i8** %10, i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @hb_dict_extract_string(i8** %11, i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @hb_dict_extract_string(i8** %12, i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %22
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %103

55:                                               ; preds = %51, %48, %45, %42, %22
  %56 = call i32* (...) @hb_dict_init()
  store i32* %56, i32** %13, align 8
  %57 = call i32* (...) @hb_dict_init()
  store i32* %57, i32** %14, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32*, i32** %14, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @hb_dict_set_string(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32*, i32** %14, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @hb_dict_set_string(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %14, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @hb_dict_set_string(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32*, i32** %14, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @hb_dict_set_string(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32*, i32** %14, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @hb_dict_set_string(i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @hb_dict_set(i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %94)
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %92, %54, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @hb_dict_extract_string(i8**, i32*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
