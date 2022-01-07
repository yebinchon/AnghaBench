; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_goto_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_goto_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32 }

@KIND_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"pointer expected for computed goto, but got %s\00", align 1
@TIDENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"identifier expected, but got %s\00", align 1
@gotos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* ()* @read_goto_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @read_goto_stmt() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = call i64 @next_token(i8 signext 42)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %0
  %9 = call %struct.TYPE_16__* (...) @peek()
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %2, align 8
  %10 = call %struct.TYPE_17__* (...) @read_cast_expr()
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KIND_PTR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @node2s(%struct.TYPE_17__* %20)
  %22 = call i32 @errort(%struct.TYPE_16__* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = call %struct.TYPE_17__* @ast_computed_goto(%struct.TYPE_17__* %24)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %1, align 8
  br label %51

26:                                               ; preds = %0
  %27 = call %struct.TYPE_16__* (...) @get()
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TIDENT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %26
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call i32 @tok2s(%struct.TYPE_16__* %38)
  %40 = call i32 @errort(%struct.TYPE_16__* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = call i32 @expect(i8 signext 59)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_17__* @ast_goto(i32 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %5, align 8
  %47 = load i32, i32* @gotos, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = call i32 @vec_push(i32 %47, %struct.TYPE_17__* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %1, align 8
  br label %51

51:                                               ; preds = %41, %23
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  ret %struct.TYPE_17__* %52
}

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local %struct.TYPE_16__* @peek(...) #1

declare dso_local %struct.TYPE_17__* @read_cast_expr(...) #1

declare dso_local i32 @errort(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @node2s(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ast_computed_goto(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @get(...) #1

declare dso_local i32 @tok2s(%struct.TYPE_16__*) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local %struct.TYPE_17__* @ast_goto(i32) #1

declare dso_local i32 @vec_push(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
