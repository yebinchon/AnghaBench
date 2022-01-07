; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_sin.c_Sin_ParseBSPEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_sin.c_Sin_ParseBSPEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i64, i8* }

@nummapbrushes = common dso_local global i8* null, align 8
@nummapbrushsides = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"worldspawn\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"func_areaportal\00", align 1
@c_areaportals = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sin_ParseBSPEntity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i8*, i8** @nummapbrushes, align 8
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @nummapbrushsides, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entities, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load i8*, i8** @nummapbrushes, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i8* @ValueForKey(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @atoi(i8* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %31, %26, %1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @GetVectorForKey(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call i8* @ValueForKey(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = call i32 @Sin_ParseBSPBrushes(%struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i8* @ValueForKey(%struct.TYPE_6__* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @c_areaportals, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* @c_areaportals, align 8
  %66 = load i64, i64* @c_areaportals, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  store i32 1, i32* %2, align 4
  br label %70

69:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @ValueForKey(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Sin_ParseBSPBrushes(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
