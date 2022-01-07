; ModuleID = '/home/carl/AnghaBench/disque/src/extr_util.c_memtoll.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_util.c_memtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"kb\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mb\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"gb\00", align 1
@LLONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memtoll(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  br label %25

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %40
  store i64 1, i64* %8, align 8
  br label %92

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcasecmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i64 1000, i64* %8, align 8
  br label %91

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i64 1024, i64* %8, align 8
  br label %90

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i64 1000000, i64* %8, align 8
  br label %89

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strcasecmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i64 1048576, i64* %8, align 8
  br label %88

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strcasecmp(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i64 1000000000, i64* %8, align 8
  br label %87

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcasecmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i64 1073741824, i64* %8, align 8
  br label %86

80:                                               ; preds = %75
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %5, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %80
  store i64 1, i64* %8, align 8
  br label %86

86:                                               ; preds = %85, %79
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %54
  br label %92

92:                                               ; preds = %91, %49
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = icmp uge i64 %100, 128
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load i32*, i32** %5, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32*, i32** %5, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i64, i64* @LLONG_MAX, align 8
  store i64 %108, i64* %3, align 8
  br label %122

109:                                              ; preds = %92
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @memcpy(i8* %110, i8* %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %115
  store i8 0, i8* %116, align 1
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %118 = call i64 @strtoll(i8* %117, i32* null, i32 10)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %8, align 8
  %121 = mul nsw i64 %119, %120
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %109, %107
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
