; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_icfoptimize.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_icfoptimize.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_11__ }

@main.icf_options = internal global [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0, i32 0 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"positive-list\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"classifier-cascade\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"acceptance\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"base-dir\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optarg = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"positive-list doesn't exists\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s %f %f %f %f %f %f %f\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"classifier cascade doesn't exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store double 0.000000e+00, double* %9, align 8
  br label %20

20:                                               ; preds = %38, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt_long_only(i32 %21, i8** %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @main.icf_options, i64 0, i64 0), i32* %11)
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %38 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %31
    i32 3, label %33
    i32 4, label %36
  ]

27:                                               ; preds = %25
  %28 = call i32 (...) @exit_with_help()
  br label %29

29:                                               ; preds = %25, %27
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %6, align 8
  br label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %7, align 8
  br label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** @optarg, align 8
  %35 = call double @atof(i8* %34)
  store double %35, double* %9, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %25, %36, %33, %31, %29
  br label %20

39:                                               ; preds = %20
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = call i32 @ccv_enable_cache(i32 536870912)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %39
  %55 = phi i1 [ false, %39 ], [ true, %53 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = call i64 @malloc(i32 1024)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %13, align 8
  %60 = call %struct.TYPE_12__* @ccv_array_new(i32 40, i32 32, i32 0)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %15, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %65, 1
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 0, %67 ]
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %100, %68
  %71 = load i32*, i32** %12, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %80 = call i64 @fscanf(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %72, i32* %73, i32* %74, i32* %75, i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = load i64, i64* @EOF, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %70
  %84 = call i64 @ccmalloc(i32 1024)
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strncpy(i8* %91, i8* %92, i32 1024)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 47, i8* %99, align 1
  br label %100

100:                                              ; preds = %89, %83
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 1024, %107
  %109 = call i32 @strncpy(i8* %105, i8* %106, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %111 = bitcast %struct.TYPE_11__* %110 to i8*
  %112 = bitcast %struct.TYPE_11__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 4 %112, i64 28, i1 false)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %114 = call i32 @ccv_array_push(%struct.TYPE_12__* %113, %struct.TYPE_10__* %17)
  br label %70

115:                                              ; preds = %70
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @fclose(i32* %116)
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %7, align 8
  %121 = call i32* @ccv_icf_read_classifier_cascade(i8* %120)
  store i32* %121, i32** %18, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %115
  %126 = phi i1 [ false, %115 ], [ true, %124 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32*, i32** %18, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %131 = load double, double* %9, align 8
  %132 = call i32 @ccv_icf_classifier_cascade_soft(i32* %129, %struct.TYPE_12__* %130, double %131)
  %133 = load i32*, i32** %18, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @ccv_icf_write_classifier_cascade(i32* %133, i8* %134)
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %151, %125
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @ccv_array_get(%struct.TYPE_12__* %143, i32 %144)
  %146 = inttoptr i64 %145 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %19, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @free(i8* %149)
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %136

154:                                              ; preds = %136
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %156 = call i32 @ccv_array_free(%struct.TYPE_12__* %155)
  %157 = call i32 (...) @ccv_disable_cache()
  ret i32 0
}

declare dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @exit_with_help(...) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_enable_cache(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_12__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @fscanf(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_array_push(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @ccv_icf_read_classifier_cascade(i8*) #1

declare dso_local i32 @ccv_icf_classifier_cascade_soft(i32*, %struct.TYPE_12__*, double) #1

declare dso_local i32 @ccv_icf_write_classifier_cascade(i32*, i8*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_12__*) #1

declare dso_local i32 @ccv_disable_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
