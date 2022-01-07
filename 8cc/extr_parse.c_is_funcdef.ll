; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_is_funcdef.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_is_funcdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@TEOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"premature end of input\00", align 1
@TIDENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_funcdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_funcdef() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = call i32* (...) @make_vector()
  store i32* %4, i32** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %45, %40, %31, %26, %0
  %6 = call %struct.TYPE_7__* (...) @get()
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @vec_push(i32* %7, %struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TEOF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i64 @is_keyword(%struct.TYPE_7__* %18, i8 signext 59)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %62

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i64 @is_type(%struct.TYPE_7__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %5

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i64 @is_keyword(%struct.TYPE_7__* %28, i8 signext 40)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @skip_parentheses(i32* %32)
  br label %5

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TIDENT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %5

41:                                               ; preds = %34
  %42 = call %struct.TYPE_7__* (...) @peek()
  %43 = call i64 @is_keyword(%struct.TYPE_7__* %42, i8 signext 40)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %5

46:                                               ; preds = %41
  %47 = load i32*, i32** %1, align 8
  %48 = call %struct.TYPE_7__* (...) @get()
  %49 = call i32 @vec_push(i32* %47, %struct.TYPE_7__* %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @skip_parentheses(i32* %50)
  %52 = call %struct.TYPE_7__* (...) @peek()
  %53 = call i64 @is_keyword(%struct.TYPE_7__* %52, i8 signext 123)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = call %struct.TYPE_7__* (...) @peek()
  %57 = call i64 @is_type(%struct.TYPE_7__* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %46
  %60 = phi i1 [ true, %46 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %21
  br label %63

63:                                               ; preds = %67, %62
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @vec_len(i32* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @vec_pop(i32* %68)
  %70 = call i32 @unget_token(i32 %69)
  br label %63

71:                                               ; preds = %63
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32* @make_vector(...) #1

declare dso_local %struct.TYPE_7__* @get(...) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @is_keyword(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i64 @is_type(%struct.TYPE_7__*) #1

declare dso_local i32 @skip_parentheses(i32*) #1

declare dso_local %struct.TYPE_7__* @peek(...) #1

declare dso_local i64 @vec_len(i32*) #1

declare dso_local i32 @unget_token(i32) #1

declare dso_local i32 @vec_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
