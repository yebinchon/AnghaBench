; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_cpp_header_name.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_cpp_header_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8* }

@TNEWLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"expected filename, but got newline\00", align 1
@TSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"< expected, but got %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"premature end of header name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32*)* @read_cpp_header_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_cpp_header_name(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @read_header_file_name(i32* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %71

16:                                               ; preds = %2
  %17 = call %struct.TYPE_8__* (...) @read_expand_newline()
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TNEWLINE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i32 (%struct.TYPE_8__*, i8*, ...) @errort(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TSTRING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %3, align 8
  br label %71

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = call i64 @is_keyword(%struct.TYPE_8__* %38, i8 signext 60)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = call i32 @tok2s(%struct.TYPE_8__* %43)
  %45 = call i32 (%struct.TYPE_8__*, i8*, ...) @errort(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  %47 = call i32* (...) @make_vector()
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %63, %46
  %49 = call %struct.TYPE_8__* (...) @read_expand_newline()
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %9, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TNEWLINE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 (%struct.TYPE_8__*, i8*, ...) @errort(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = call i64 @is_keyword(%struct.TYPE_8__* %59, i8 signext 62)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = call i32 @vec_push(i32* %64, %struct.TYPE_8__* %65)
  br label %48

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  store i32 1, i32* %68, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i8* @join_paths(i32* %69)
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %67, %32, %14
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i8* @read_header_file_name(i32*) #1

declare dso_local %struct.TYPE_8__* @read_expand_newline(...) #1

declare dso_local i32 @errort(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @is_keyword(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @tok2s(%struct.TYPE_8__*) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_8__*) #1

declare dso_local i8* @join_paths(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
