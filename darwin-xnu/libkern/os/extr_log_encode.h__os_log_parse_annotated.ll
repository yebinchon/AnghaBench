; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log_encode.h__os_log_parse_annotated.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log_encode.h__os_log_parse_annotated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c", {}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c": {}\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8**, i8**)* @_os_log_parse_annotated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_os_log_parse_annotated(i8* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %15 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %30, %29, %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %36

24:                                               ; preds = %19
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %16

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %34
  store i8* %31, i8** %35, align 8
  br label %16

36:                                               ; preds = %23, %16
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %41 = load i8*, i8** %40, align 16
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %46 = load i8*, i8** %45, align 16
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44, %39
  %50 = load i8**, i8*** %6, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %54 = load i8*, i8** %53, align 16
  %55 = load i8**, i8*** %6, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %44, %36
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %59
  %64 = load i8**, i8*** %7, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %66, label %113

66:                                               ; preds = %63
  %67 = load i8**, i8*** %8, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %113

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %88, %87, %69
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %78, i8** %14, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %94

82:                                               ; preds = %77
  %83 = load i8*, i8** %14, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %74

88:                                               ; preds = %82
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %92
  store i8* %89, i8** %93, align 8
  br label %74

94:                                               ; preds = %81, %74
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %99 = load i8*, i8** %98, align 16
  %100 = load i8**, i8*** %7, align 8
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %8, align 8
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %94
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %108, align 8
  %109 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %110 = load i8*, i8** %109, align 16
  %111 = load i8**, i8*** %8, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %104
  br label %113

113:                                              ; preds = %112, %66, %63, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
