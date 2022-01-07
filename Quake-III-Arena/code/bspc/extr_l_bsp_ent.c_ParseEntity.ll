; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_ent.c_ParseEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_ent.c_ParseEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ParseEntity: { not found\00", align 1
@num_entities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"num_entities == MAX_MAP_ENTITIES\00", align 1
@entities = common dso_local global %struct.TYPE_9__* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ParseEntity: EOF without closing brace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseEntity(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @PS_ReadToken(i32* %7, %struct.TYPE_7__* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i64, i64* @num_entities, align 8
  %20 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @entities, align 8
  %26 = load i64, i64* @num_entities, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %5, align 8
  %28 = load i64, i64* @num_entities, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @num_entities, align 8
  br label %30

30:                                               ; preds = %55, %24
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @PS_ReadToken(i32* %31, %struct.TYPE_7__* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %56

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @PS_UnreadLastToken(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_8__* @ParseEpair(i32* %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %4, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %54, align 8
  br label %55

55:                                               ; preds = %42
  br i1 true, label %30, label %56

56:                                               ; preds = %55, %41
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @PS_ReadToken(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @PS_UnreadLastToken(i32*) #1

declare dso_local %struct.TYPE_8__* @ParseEpair(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
