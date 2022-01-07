; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_var_or_func.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_var_or_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"undefined variable: %s\00", align 1
@type_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"assume returning int: %s()\00", align 1
@KIND_FUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*)* @read_var_or_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @read_var_or_func(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @env()
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.TYPE_9__* @map_get(i32 %7, i8* %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %1
  %13 = call i32* (...) @peek()
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @is_keyword(i32* %14, i8 signext 40)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @errort(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @type_int, align 4
  %23 = call i32 (...) @make_vector()
  %24 = call %struct.TYPE_8__* @make_func_type(i32 %22, i32 %23, i32 1, i32 0)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @warnt(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call %struct.TYPE_9__* @ast_funcdesg(%struct.TYPE_8__* %28, i8* %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %2, align 8
  br label %47

31:                                               ; preds = %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @KIND_FUNC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call %struct.TYPE_9__* @ast_funcdesg(%struct.TYPE_8__* %42, i8* %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %2, align 8
  br label %47

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %2, align 8
  br label %47

47:                                               ; preds = %45, %39, %21
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %48
}

declare dso_local %struct.TYPE_9__* @map_get(i32, i8*) #1

declare dso_local i32 @env(...) #1

declare dso_local i32* @peek(...) #1

declare dso_local i32 @is_keyword(i32*, i8 signext) #1

declare dso_local i32 @errort(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @make_func_type(i32, i32, i32, i32) #1

declare dso_local i32 @make_vector(...) #1

declare dso_local i32 @warnt(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @ast_funcdesg(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
