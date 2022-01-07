; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_convertgen.c_BitConv.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_convertgen.c_BitConv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c" tmp%s-=128;\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" tmp%s-=32768;\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" tmp%s-=(1<<23);\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" tmp%s+=128;\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" tmp%s+=32768;\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" tmp%s+=(1<<23);\0A\00", align 1
@bitss = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c" tmp%s >>= %d;\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" tmp%s <<= %d;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BitConv(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = xor i32 %8, %9
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %44

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %43

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %32
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %20
  br label %73

45:                                               ; preds = %13
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %72

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %71

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  br label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %3
  %75 = load i32, i32* %4, align 4
  %76 = ashr i32 %75, 1
  %77 = load i32, i32* %5, align 4
  %78 = ashr i32 %77, 1
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = load i32*, i32** @bitss, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @bitss, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %85, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %95, i32 %96)
  br label %103

98:                                               ; preds = %80
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %99, i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %74
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
