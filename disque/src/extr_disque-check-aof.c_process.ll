; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-check-aof.c_process.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-check-aof.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unexpected MULTI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Unexpected EXEC\00", align 1
@error = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Reached EOF before reading EXEC for MULTI\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %1, %75
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @ftello(i32* %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @readArgc(i32* %15, i64* %3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %76

19:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %3, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @readString(i32* %26, i8** %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %63

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

43:                                               ; preds = %37
  br label %56

44:                                               ; preds = %33
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %63

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %20

63:                                               ; preds = %52, %41, %29, %20
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %3, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %76

75:                                               ; preds = %63
  br label %8

76:                                               ; preds = %74, %18
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @feof(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** @error, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83, %80, %76
  %90 = load i8*, i8** @error, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** @error, align 8
  %95 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ftello(i32*) #1

declare dso_local i32 @readArgc(i32*, i64*) #1

declare dso_local i32 @readString(i32*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
