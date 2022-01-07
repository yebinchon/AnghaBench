; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_print_board.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_print_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@noi = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@inverted = common dso_local global i64 0, align 8
@nind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" O\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" .\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_board(i32* %0, float* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %34, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 19
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 65, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* @noi, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = mul nsw i32 1, %30
  %32 = add nsw i32 %22, %31
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %123, %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 19
  br i1 %42, label %43, label %126

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* @inverted, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 19, %48
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %117, %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 19
  br i1 %58, label %59, label %120

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 19
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @nind, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  store i32 1, i32* %13, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %67

88:                                               ; preds = %67
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %117

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %59
  %94 = load float*, float** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @occupied(float* %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %116

102:                                              ; preds = %93
  %103 = load float*, float** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @occupied(float* %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %115

112:                                              ; preds = %102
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %56

120:                                              ; preds = %56
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %40

126:                                              ; preds = %40
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @occupied(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
