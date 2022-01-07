; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_serialize_string.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_serialize_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @json_serialize_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_serialize_string(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @StrLen(i8* %10)
  store i64 %11, i64* %6, align 8
  store i8 0, i8* %7, align 1
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %107, %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %110

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %94 [
    i32 34, label %24
    i32 92, label %26
    i32 47, label %28
    i32 8, label %30
    i32 12, label %32
    i32 10, label %34
    i32 13, label %36
    i32 9, label %38
    i32 0, label %40
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
    i32 4, label %48
    i32 5, label %50
    i32 6, label %52
    i32 7, label %54
    i32 11, label %56
    i32 14, label %58
    i32 15, label %60
    i32 16, label %62
    i32 17, label %64
    i32 18, label %66
    i32 19, label %68
    i32 20, label %70
    i32 21, label %72
    i32 22, label %74
    i32 23, label %76
    i32 24, label %78
    i32 25, label %80
    i32 26, label %82
    i32 27, label %84
    i32 28, label %86
    i32 29, label %88
    i32 30, label %90
    i32 31, label %92
  ]

24:                                               ; preds = %17
  %25 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %106

26:                                               ; preds = %17
  %27 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %106

28:                                               ; preds = %17
  %29 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %106

30:                                               ; preds = %17
  %31 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %106

32:                                               ; preds = %17
  %33 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %106

34:                                               ; preds = %17
  %35 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %106

36:                                               ; preds = %17
  %37 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %106

38:                                               ; preds = %17
  %39 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %106

40:                                               ; preds = %17
  %41 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %106

42:                                               ; preds = %17
  %43 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %106

44:                                               ; preds = %17
  %45 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %106

46:                                               ; preds = %17
  %47 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %106

48:                                               ; preds = %17
  %49 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %106

50:                                               ; preds = %17
  %51 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %106

52:                                               ; preds = %17
  %53 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %106

54:                                               ; preds = %17
  %55 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %106

56:                                               ; preds = %17
  %57 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %106

58:                                               ; preds = %17
  %59 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %106

60:                                               ; preds = %17
  %61 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %106

62:                                               ; preds = %17
  %63 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %106

64:                                               ; preds = %17
  %65 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  br label %106

66:                                               ; preds = %17
  %67 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  br label %106

68:                                               ; preds = %17
  %69 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %106

70:                                               ; preds = %17
  %71 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %106

72:                                               ; preds = %17
  %73 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %106

74:                                               ; preds = %17
  %75 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %106

76:                                               ; preds = %17
  %77 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %106

78:                                               ; preds = %17
  %79 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %106

80:                                               ; preds = %17
  %81 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  br label %106

82:                                               ; preds = %17
  %83 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  br label %106

84:                                               ; preds = %17
  %85 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  br label %106

86:                                               ; preds = %17
  %87 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  br label %106

88:                                               ; preds = %17
  %89 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  br label %106

90:                                               ; preds = %17
  %91 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  br label %106

92:                                               ; preds = %17
  %93 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  br label %106

94:                                               ; preds = %17
  %95 = load i8*, i8** %4, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i8, i8* %7, align 1
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  store i8 %98, i8* %100, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %97, %94
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %103, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %13

110:                                              ; preds = %13
  %111 = call i32 @APPEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @APPEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
