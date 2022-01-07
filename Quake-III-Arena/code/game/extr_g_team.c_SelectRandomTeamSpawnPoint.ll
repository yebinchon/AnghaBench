; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_SelectRandomTeamSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_team.c_SelectRandomTeamSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TEAM_SPAWN_POINTS = common dso_local global i32 0, align 4
@TEAM_BEGIN = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"team_CTF_redplayer\00", align 1
@TEAM_BLUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"team_CTF_blueplayer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"team_CTF_redspawn\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"team_CTF_bluespawn\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SelectRandomTeamSpawnPoint(i32 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @MAX_TEAM_SPAWN_POINTS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32*, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TEAM_BEGIN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @TEAM_RED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %32

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @TEAM_BLUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %31

30:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %86

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %24
  br label %46

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @TEAM_RED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %45

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @TEAM_BLUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %44

43:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %86

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %32
  store i32 0, i32* %7, align 4
  store i32* null, i32** %6, align 8
  br label %47

47:                                               ; preds = %69, %58, %46
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @FOFS(i8* %49)
  %51 = load i8*, i8** %11, align 8
  %52 = call i32* @G_Find(i32* %48, i32 %50, i8* %51)
  store i32* %52, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @SpotWouldTelefrag(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %47

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %16, i64 %62
  store i32* %60, i32** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @MAX_TEAM_SPAWN_POINTS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %59
  br label %47

70:                                               ; preds = %68, %47
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @FOFS(i8* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = call i32* @G_Find(i32* null, i32 %75, i8* %76)
  store i32* %77, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %86

78:                                               ; preds = %70
  %79 = call i32 (...) @rand()
  %80 = load i32, i32* %7, align 4
  %81 = srem i32 %79, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %16, i64 %83
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %3, align 8
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %78, %73, %43, %30
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @G_Find(i32*, i32, i8*) #2

declare dso_local i32 @FOFS(i8*) #2

declare dso_local i64 @SpotWouldTelefrag(i32*) #2

declare dso_local i32 @rand(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
