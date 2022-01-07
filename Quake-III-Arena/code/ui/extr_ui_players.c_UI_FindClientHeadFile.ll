; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_FindClientHeadFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_FindClientHeadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"heads/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"models/players/%s%s/%s/%s%s_%s.%s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"models/players/%s%s/%s/%s_%s.%s\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"models/players/%s%s/%s%s_%s.%s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"models/players/%s%s/%s_%s.%s\00", align 1
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*)* @UI_FindClientHeadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_FindClientHeadFile(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  br label %28

27:                                               ; preds = %7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %125
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %116, %29
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %119

33:                                               ; preds = %30
  %34 = load i32, i32* %18, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %48, i8* %49, i8* %50, i8* %51, i8* %52, i8* %53)
  br label %65

55:                                               ; preds = %39, %36, %33
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %58, i8* %59, i8* %60, i8* %61, i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %55, %44
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @UI_FileExists(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @qtrue, align 4
  store i32 %70, i32* %8, align 4
  br label %128

71:                                               ; preds = %65
  %72 = load i32, i32* %18, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i8*, i8** %17, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %85, i8* %86, i8* %87, i8* %88, i8* %89, i8* %90)
  br label %101

92:                                               ; preds = %77, %74, %71
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) @Com_sprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %95, i8* %96, i8* %97, i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %92, %82
  %102 = load i8*, i8** %9, align 8
  %103 = call i64 @UI_FileExists(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @qtrue, align 4
  store i32 %106, i32* %8, align 4
  br label %128

107:                                              ; preds = %101
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** %11, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %107
  br label %119

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %30

119:                                              ; preds = %114, %30
  %120 = load i8*, i8** %17, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %126

125:                                              ; preds = %119
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %29

126:                                              ; preds = %124
  %127 = load i32, i32* @qfalse, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %126, %105, %69
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @UI_FileExists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
