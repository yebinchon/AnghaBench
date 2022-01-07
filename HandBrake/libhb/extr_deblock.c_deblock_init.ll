; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deblock.c_deblock_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deblock.c_deblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**)* @deblock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deblock_init(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %17 = call %struct.TYPE_5__* @calloc(i32 1, i32 4)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 8, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @hb_dict_extract_string(i8** %10, i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @hb_dict_extract_int(i32* %8, i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @hb_dict_extract_int(i32* %9, i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32* (...) @hb_dict_init()
  store i32* %38, i32** %11, align 8
  %39 = call i32* (...) @hb_dict_init()
  store i32* %39, i32** %12, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load i32*, i32** %12, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @hb_dict_set_string(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  br label %48

48:                                               ; preds = %42, %24
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @hb_dict_set_int(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = sitofp i32 %55 to double
  %57 = fmul double %56, 1.000000e-02
  store double %57, double* %13, align 8
  %58 = load double, double* %13, align 8
  %59 = fdiv double %58, 2.000000e+00
  store double %59, double* %16, align 8
  store double %59, double* %15, align 8
  store double %59, double* %14, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load double, double* %13, align 8
  %62 = call i32 @hb_dict_set_double(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load double, double* %14, align 8
  %65 = call i32 @hb_dict_set_double(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), double %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load double, double* %15, align 8
  %68 = call i32 @hb_dict_set_double(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %67)
  %69 = load i32*, i32** %12, align 8
  %70 = load double, double* %16, align 8
  %71 = call i32 @hb_dict_set_double(i32* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), double %70)
  br label %72

72:                                               ; preds = %54, %48
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @hb_dict_set(i32* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @hb_dict_extract_string(i8**, i32*, i8*) #1

declare dso_local i32 @hb_dict_extract_int(i32*, i32*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @hb_dict_set_double(i32*, i8*, double) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
