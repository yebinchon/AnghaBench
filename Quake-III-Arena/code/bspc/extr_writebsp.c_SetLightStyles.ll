; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_writebsp.c_SetLightStyles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_writebsp.c_SetLightStyles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SWITCHED_LIGHTS = common dso_local global i32 0, align 4
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"targetname\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"stylenum == MAX_SWITCHED_LIGHTS\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"style\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetLightStyles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @MAX_SWITCHED_LIGHTS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca [64 x i8], i64 %10, align 16
  store i64 %10, i64* %8, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %13

13:                                               ; preds = %81, %0
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @num_entities, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %13
  %18 = load i32*, i32** @entities, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @ValueForKey(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @Q_strncasecmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %81

28:                                               ; preds = %17
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @ValueForKey(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %81

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 %43
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %44, i64 0, i64 0
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @strcmp(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %37

54:                                               ; preds = %49, %37
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @MAX_SWITCHED_LIGHTS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 %66
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %67, i64 0, i64 0
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %64, %54
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 32, %75
  %77 = call i32 @sprintf(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %80 = call i32 @SetKeyValue(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %73, %35, %27
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %13

84:                                               ; preds = %13
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ValueForKey(i32*, i8*) #2

declare dso_local i64 @Q_strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @SetKeyValue(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
