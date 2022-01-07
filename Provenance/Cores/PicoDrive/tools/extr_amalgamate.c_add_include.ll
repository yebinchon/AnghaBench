; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_amalgamate.c_add_include.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_amalgamate.c_add_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@includes = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"add_include: includes overflowed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"already have: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"adding: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"add_include: OOM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @add_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_include(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [132 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 60
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @snprintf(i8* %6, i32 132, i8* %13, i8* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i8**, i8*** @includes, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 128
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i1 [ false, %16 ], [ %25, %23 ]
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 0
  %30 = load i8**, i8*** @includes, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %29, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %16

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i8**, i8*** @includes, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 0
  %56 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  store i8* null, i8** %2, align 8
  br label %80

57:                                               ; preds = %47
  %58 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 0
  %59 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 0
  %61 = call i8* @strdup(i8* %60)
  %62 = load i8**, i8*** @includes, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i8**, i8*** @includes, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %57
  %75 = load i8**, i8*** @includes, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %74, %54
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
