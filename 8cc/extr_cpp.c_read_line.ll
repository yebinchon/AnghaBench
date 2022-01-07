; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_line.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32, i8* }

@TNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"number expected after #line, but got %s\00", align 1
@TSTRING = common dso_local global i64 0, align 8
@TNEWLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"newline or a source name are expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_line() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = call %struct.TYPE_7__* (...) @read_expand_newline()
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TNUMBER, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @is_digit_sequence(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11, %0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = call i32 @tok2s(%struct.TYPE_7__* %19)
  %21 = call i32 @errort(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %2, align 4
  %27 = call %struct.TYPE_7__* (...) @read_expand_newline()
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %1, align 8
  store i8* null, i8** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TSTRING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %3, align 8
  %37 = call i32 (...) @expect_newline()
  br label %50

38:                                               ; preds = %22
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TNEWLINE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %47 = call i32 @tok2s(%struct.TYPE_7__* %46)
  %48 = call i32 @errort(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %33
  %51 = call %struct.TYPE_8__* (...) @current_file()
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %4, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i8*, i8** %3, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %50
  ret void
}

declare dso_local %struct.TYPE_7__* @read_expand_newline(...) #1

declare dso_local i32 @is_digit_sequence(i8*) #1

declare dso_local i32 @errort(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_7__*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @expect_newline(...) #1

declare dso_local %struct.TYPE_8__* @current_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
