; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_parseUriList.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_parseUriList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32*)* @parseUriList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @parseUriList(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8** null, i8*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %102, %21, %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strtok(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %103

15:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %11

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = call i64 @strncmp(i8* %23, i8* %24, i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %39, 1
  %41 = call i8* @calloc(i64 %40, i32 1)
  store i8* %41, i8** %8, align 8
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i8** @realloc(i8** %42, i32 %47)
  store i8** %48, i8*** %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %50, i64 %54
  store i8* %49, i8** %55, align 8
  br label %56

56:                                               ; preds = %97, %34
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %93

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %79, align 1
  %83 = getelementptr inbounds i8, i8* %79, i64 1
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %83, align 1
  %87 = getelementptr inbounds i8, i8* %83, i64 1
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %89 = call signext i8 @strtol(i8* %88, i32* null, i32 16)
  %90 = load i8*, i8** %8, align 8
  store i8 %89, i8* %90, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %7, align 8
  br label %97

93:                                               ; preds = %72, %66, %60
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %8, align 8
  store i8 %95, i8* %96, align 1
  br label %97

97:                                               ; preds = %93, %78
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  br label %56

102:                                              ; preds = %56
  br label %11

103:                                              ; preds = %11
  %104 = load i8**, i8*** %6, align 8
  ret i8** %104
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local signext i8 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
