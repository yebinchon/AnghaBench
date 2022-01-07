; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_ConfigDevice.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_ConfigDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Quiz King Buzzer #%d\00", align 1
@QuizKingButtons = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Hyper Shot %d: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"JUMP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@HyperShotButtons = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"PowerPad %d: %d\00", align 1
@powerpadsc = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Rapid A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Rapid B\00", align 1
@__const.ConfigDevice.str = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [16 x i8] c"GamePad #%d: %s\00", align 1
@GamePadConfig = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConfigDevice(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @ButtonConfigBegin()
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %110 [
    i32 128, label %10
    i32 130, label %29
    i32 129, label %55
    i32 131, label %82
  ]

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 (i32*, i8*, i32, ...) @sprintf(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %20 = load i32*, i32** @QuizKingButtons, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @subcon(i32* %19, i32* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %11
  br label %110

29:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 2
  %37 = ashr i32 %36, 1
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 (i32*, i8*, i32, ...) @sprintf(i32* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %43)
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %46 = load i32*, i32** @HyperShotButtons, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @subcon(i32* %45, i32* %49)
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %30

54:                                               ; preds = %30
  br label %110

55:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %78, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 1
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 11
  %66 = call i32 (i32*, i8*, i32, ...) @sprintf(i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %65)
  %67 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %68 = load i32**, i32*** @powerpadsc, align 8
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @subcon(i32* %67, i32* %76)
  br label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %56

81:                                               ; preds = %56
  br label %110

82:                                               ; preds = %2
  %83 = bitcast [10 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %83, i8* align 16 bitcast ([10 x i8*]* @__const.ConfigDevice.str to i8*), i64 80, i1 false)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %106, %82
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 10
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i8*], [10 x i8*]* %7, i64 0, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32*, i8*, i32, ...) @sprintf(i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %90, i8* %94)
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %97 = load i32**, i32*** @GamePadConfig, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @subcon(i32* %96, i32* %104)
  br label %106

106:                                              ; preds = %87
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %84

109:                                              ; preds = %84
  br label %110

110:                                              ; preds = %2, %109, %81, %54, %28
  %111 = call i32 (...) @ButtonConfigEnd()
  ret void
}

declare dso_local i32 @ButtonConfigBegin(...) #1

declare dso_local i32 @sprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @subcon(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ButtonConfigEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
