; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_linemarker.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_linemarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_9__ = type { i32, i8* }

@.str = private unnamed_addr constant [33 x i8] c"line number expected, but got %s\00", align 1
@TSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"filename expected, but got %s\00", align 1
@TNEWLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @read_linemarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_linemarker(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @is_digit_sequence(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i32 @tok2s(%struct.TYPE_8__* %13)
  %15 = call i32 @errort(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* %19)
  store i32 %20, i32* %3, align 4
  %21 = call %struct.TYPE_8__* (...) @lex()
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TSTRING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = call i32 @tok2s(%struct.TYPE_8__* %29)
  %31 = call i32 @errort(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %38, %32
  %37 = call %struct.TYPE_8__* (...) @lex()
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %2, align 8
  br label %38

38:                                               ; preds = %36
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TNEWLINE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %36, label %44

44:                                               ; preds = %38
  %45 = call %struct.TYPE_9__* (...) @current_file()
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  ret void
}

declare dso_local i32 @is_digit_sequence(i8*) #1

declare dso_local i32 @errort(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_8__*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_8__* @lex(...) #1

declare dso_local %struct.TYPE_9__* @current_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
