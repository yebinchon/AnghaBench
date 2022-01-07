; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_spawn.c_G_ParseSpawnVars.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_spawn.c_G_ParseSpawnVars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8***, i64 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"G_ParseSpawnVars: found %s when expecting {\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"G_ParseSpawnVars: EOF without closing brace\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"G_ParseSpawnVars: closing brace without data\00", align 1
@MAX_SPAWN_VARS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"G_ParseSpawnVars: MAX_SPAWN_VARS\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_ParseSpawnVars() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %13 = trunc i64 %11 to i32
  %14 = call i32 @trap_GetEntityToken(i8* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %75

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, i8* %12, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 123
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @G_Error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %58, %25
  br label %27

27:                                               ; preds = %26
  %28 = trunc i64 %7 to i32
  %29 = call i32 @trap_GetEntityToken(i8* %9, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @G_Error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds i8, i8* %9, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 125
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %73

39:                                               ; preds = %33
  %40 = trunc i64 %11 to i32
  %41 = call i32 @trap_GetEntityToken(i8* %12, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @G_Error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds i8, i8* %12, i64 0
  %47 = load i8, i8* %46, align 16
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 125
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @G_Error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %54 = load i64, i64* @MAX_SPAWN_VARS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @G_Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = call i8* @G_AddSpawnVarToken(i8* %9)
  %60 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %62 = getelementptr inbounds i8**, i8*** %60, i64 %61
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %59, i8** %64, align 8
  %65 = call i8* @G_AddSpawnVarToken(i8* %12)
  %66 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i8**, i8*** %66, i64 %67
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %65, i8** %70, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  br label %26

73:                                               ; preds = %38
  %74 = load i32, i32* @qtrue, align 4
  store i32 %74, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %16
  %76 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetEntityToken(i8*, i32) #2

declare dso_local i32 @G_Error(i8*, ...) #2

declare dso_local i8* @G_AddSpawnVarToken(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
