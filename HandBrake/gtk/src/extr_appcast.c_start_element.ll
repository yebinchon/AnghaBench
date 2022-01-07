; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_start_element.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_start_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }
%union.anon = type { i64 }

@TAG_MAP_SZ = common dso_local global i64 0, align 8
@tag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unrecognized start tag (%s)\00", align 1
@A_NONE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"sparkle:version\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sparkle:shortVersionString\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, i32**, i64, i32**)* @start_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_element(i32* %0, i32* %1, i32** %2, i32** %3, i64 %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca %union.anon, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32** %5, i32*** %12, align 8
  %18 = load i64, i64* %11, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %13, align 8
  store i64 0, i64* %15, align 8
  br label %20

20:                                               ; preds = %41, %6
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* @TAG_MAP_SZ, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %27 = load i64, i64* %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i32* %25, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %35 = load i64, i64* %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %union.anon* %14 to i64*
  store i64 %38, i64* %39, align 8
  br label %44

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %15, align 8
  br label %20

44:                                               ; preds = %33, %20
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @TAG_MAP_SZ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %49)
  %51 = load i64, i64* @A_NONE, align 8
  %52 = bitcast %union.anon* %14 to i64*
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.anon* %14 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @g_queue_push_head(i32 %56, i64 %58)
  %60 = bitcast %union.anon* %14 to i64*
  %61 = load i64, i64* %60, align 8
  switch i64 %61, label %89 [
    i64 128, label %62
    i64 129, label %66
  ]

62:                                               ; preds = %53
  %63 = load i32, i32* @TRUE, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %89

66:                                               ; preds = %53
  %67 = load i32**, i32*** %9, align 8
  %68 = load i32**, i32*** %10, align 8
  %69 = call i32* @lookup_attr_value(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32** %67, i32** %68)
  store i32* %69, i32** %16, align 8
  %70 = load i32**, i32*** %9, align 8
  %71 = load i32**, i32*** %10, align 8
  %72 = call i32* @lookup_attr_value(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32** %70, i32** %71)
  store i32* %72, i32** %17, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load i32*, i32** %16, align 8
  %77 = call i8* @g_strdup(i32* %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %66
  %81 = load i32*, i32** %17, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %17, align 8
  %85 = call i8* @g_strdup(i32* %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  br label %89

89:                                               ; preds = %53, %88, %62
  ret void
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @g_debug(i8*, i32*) #1

declare dso_local i32 @g_queue_push_head(i32, i64) #1

declare dso_local i32* @lookup_attr_value(i8*, i32**, i32**) #1

declare dso_local i8* @g_strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
