; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_end_element.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_end_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%union.anon = type { i64 }

@TAG_MAP_SZ = common dso_local global i64 0, align 8
@tag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unrecognized end tag (%s)\00", align 1
@A_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"start tag != end tag: (%s %d) %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32**)* @end_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_element(i32* %0, i32* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32** %3, i32*** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %35, %4
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @TAG_MAP_SZ, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i32* %20, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  br label %38

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %15

38:                                               ; preds = %28, %15
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @TAG_MAP_SZ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @g_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %43)
  %45 = load i64, i64* @A_NONE, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @g_queue_pop_head(i32 %49)
  %51 = bitcast %union.anon* %11 to i64*
  store i64 %50, i64* %51, align 8
  %52 = bitcast %union.anon* %11 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load i32*, i32** %6, align 8
  %58 = bitcast %union.anon* %11 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %57, i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %46
  %63 = load i64, i64* %10, align 8
  switch i64 %63, label %68 [
    i64 128, label %64
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @FALSE, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %64
  ret void
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @g_debug(i8*, i32*) #1

declare dso_local i64 @g_queue_pop_head(i32) #1

declare dso_local i32 @g_warning(i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
