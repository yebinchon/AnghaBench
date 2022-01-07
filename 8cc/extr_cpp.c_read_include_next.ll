; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_include_next.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_include_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@std_include_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot find header file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @read_include_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_include_next(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @read_cpp_header_name(i32* %10, i32* %5)
  store i8* %11, i8** %6, align 8
  %12 = call i32 (...) @expect_newline()
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @try_include(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %75

23:                                               ; preds = %18
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @fullpath(i32 %27)
  store i8* %28, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @std_include_path, align 4
  %32 = call i32 @vec_len(i32 %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32, i32* @std_include_path, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @vec_get(i32 %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @format(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  %42 = call i8* @fullpath(i32 %41)
  %43 = call i32 @strcmp(i8* %38, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %45, %29
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %67, %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @std_include_path, align 4
  %56 = call i32 @vec_len(i32 %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i32, i32* @std_include_path, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @vec_get(i32 %59, i32 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @try_include(i8* %61, i8* %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %75

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %53

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i32*, i32** %3, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @errort(i32* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %65, %22
  ret void
}

declare dso_local i8* @read_cpp_header_name(i32*, i32*) #1

declare dso_local i32 @expect_newline(...) #1

declare dso_local i64 @try_include(i8*, i8*, i32) #1

declare dso_local i8* @fullpath(i32) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local i8* @vec_get(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @format(i8*, i8*, i8*) #1

declare dso_local i32 @errort(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
