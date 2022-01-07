; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_AlwaysTriggered_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_AlwaysTriggered_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"spawnflags\00", align 1
@SPAWNFLAG_NOT_DEATHMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"trigger_always\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@mark_entities = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"entity %d, classname %s has recursive targetname %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"targetname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AlwaysTriggered_r(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %74, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @num_entities, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %77

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i32*, i32** @entities, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i8* @ValueForKey(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @strcmp(i8* %15, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %73, label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** @entities, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i8* @ValueForKey(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @atoi(i8* %28)
  %30 = load i32, i32* @SPAWNFLAG_NOT_DEATHMATCH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %23
  %34 = load i32*, i32** @entities, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i8* @ValueForKey(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %78

42:                                               ; preds = %33
  %43 = load i32*, i32** @mark_entities, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** @entities, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i8* @ValueForKey(i32* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @Warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %50, i8* %55, i8* %56)
  store i32 0, i32* %2, align 4
  br label %78

58:                                               ; preds = %42
  %59 = load i32*, i32** @mark_entities, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** @entities, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i8* @ValueForKey(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %68 = call i32 @AAS_AlwaysTriggered_r(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %78

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %23
  br label %73

73:                                               ; preds = %72, %14
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %10

77:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %70, %49, %41, %8
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @Warning(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
