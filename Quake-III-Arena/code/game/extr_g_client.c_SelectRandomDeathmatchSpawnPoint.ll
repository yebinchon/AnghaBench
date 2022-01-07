; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_SelectRandomDeathmatchSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_SelectRandomDeathmatchSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SPAWN_POINTS = common dso_local global i32 0, align 4
@classname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"info_player_deathmatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SelectRandomDeathmatchSpawnPoint() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_SPAWN_POINTS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32*, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %2, align 8
  br label %12

12:                                               ; preds = %23, %22, %0
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @classname, align 4
  %15 = call i32 @FOFS(i32 %14)
  %16 = call i32* @G_Find(i32* %13, i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @SpotWouldTelefrag(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %12

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %11, i64 %26
  store i32* %24, i32** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @classname, align 4
  %35 = call i32 @FOFS(i32 %34)
  %36 = call i32* @G_Find(i32* null, i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** %1, align 8
  store i32 1, i32* %7, align 4
  br label %45

37:                                               ; preds = %30
  %38 = call i32 (...) @rand()
  %39 = load i32, i32* %3, align 4
  %40 = srem i32 %38, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %11, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %1, align 8
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32*, i32** %1, align 8
  ret i32* %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @G_Find(i32*, i32, i8*) #2

declare dso_local i32 @FOFS(i32) #2

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
