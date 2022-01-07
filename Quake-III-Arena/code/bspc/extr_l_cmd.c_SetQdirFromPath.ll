; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_cmd.c_SetQdirFromPath.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_cmd.c_SetQdirFromPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASEDIRNAME = common dso_local global i8* null, align 8
@qdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"qdir: %s\0A\00", align 1
@gamedir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"gamedir: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No gamedir in %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SetQdirFromPath: no '%s' in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetQdirFromPath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 47
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 92
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %25 = call i32 @Q_getwd(i8* %24)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @strcat(i8* %26, i8* %27)
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %23, %17, %11, %1
  %31 = load i8*, i8** @BASEDIRNAME, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %104, %30
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** @BASEDIRNAME, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @Q_strncasecmp(i8* %44, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %103, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @qdir, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8*, i8** %2, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @strncpy(i32 %50, i8* %51, i32 %61)
  %63 = load i32, i32* @qdir, align 4
  %64 = call i32 @qprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i8*, i8** %4, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %97, %49
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 92
  br i1 %83, label %84, label %97

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @gamedir, align 4
  %86 = load i8*, i8** %2, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8*, i8** %2, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @strncpy(i32 %85, i8* %86, i32 %93)
  %95 = load i32, i32* @gamedir, align 4
  %96 = call i32 @qprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %111

97:                                               ; preds = %79
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  br label %70

100:                                              ; preds = %70
  %101 = load i8*, i8** %2, align 8
  %102 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %111

103:                                              ; preds = %43
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %4, align 8
  br label %39

107:                                              ; preds = %39
  %108 = load i8*, i8** @BASEDIRNAME, align 8
  %109 = load i8*, i8** %2, align 8
  %110 = call i32 (i8*, i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %108, i8* %109)
  br label %111

111:                                              ; preds = %107, %100, %84
  ret void
}

declare dso_local i32 @Q_getwd(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Q_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i32 @Error(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
