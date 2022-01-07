; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_assignment_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_assignment_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* ()* @read_assignment_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @read_assignment_expr() #0 {
  %1 = alloca %struct.TYPE_20__*, align 8
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = call %struct.TYPE_20__* (...) @read_logor_expr()
  store %struct.TYPE_20__* %7, %struct.TYPE_20__** %2, align 8
  %8 = call i32* (...) @get()
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %1, align 8
  br label %88

13:                                               ; preds = %0
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @is_keyword(i32* %14, i8 signext 63)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = call %struct.TYPE_20__* @do_read_conditional_expr(%struct.TYPE_20__* %18)
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %1, align 8
  br label %88

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @get_compound_assign_op(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @is_keyword(i32* %23, i8 signext 61)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %26, %20
  %30 = call %struct.TYPE_20__* @read_assignment_expr()
  %31 = call %struct.TYPE_20__* @conv(%struct.TYPE_20__* %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @is_keyword(i32* %32, i8 signext 61)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %29
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %40 = call i32 @ensure_lvalue(%struct.TYPE_20__* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %47 = call %struct.TYPE_20__* @conv(%struct.TYPE_20__* %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = call %struct.TYPE_20__* @binop(i32 %45, %struct.TYPE_20__* %47, %struct.TYPE_20__* %48)
  br label %52

50:                                               ; preds = %41
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi %struct.TYPE_20__* [ %49, %44 ], [ %51, %50 ]
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %6, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = call i64 @is_arithtype(%struct.TYPE_21__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = call %struct.TYPE_20__* @ast_conv(%struct.TYPE_21__* %74, %struct.TYPE_20__* %75)
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %6, align 8
  br label %77

77:                                               ; preds = %71, %59, %52
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %83 = call %struct.TYPE_20__* @ast_binop(%struct.TYPE_21__* %80, i8 signext 61, %struct.TYPE_20__* %81, %struct.TYPE_20__* %82)
  store %struct.TYPE_20__* %83, %struct.TYPE_20__** %1, align 8
  br label %88

84:                                               ; preds = %26
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @unget_token(i32* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %1, align 8
  br label %88

88:                                               ; preds = %84, %77, %17, %11
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  ret %struct.TYPE_20__* %89
}

declare dso_local %struct.TYPE_20__* @read_logor_expr(...) #1

declare dso_local i32* @get(...) #1

declare dso_local i64 @is_keyword(i32*, i8 signext) #1

declare dso_local %struct.TYPE_20__* @do_read_conditional_expr(%struct.TYPE_20__*) #1

declare dso_local i32 @get_compound_assign_op(i32*) #1

declare dso_local %struct.TYPE_20__* @conv(%struct.TYPE_20__*) #1

declare dso_local i32 @ensure_lvalue(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @binop(i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @is_arithtype(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @ast_conv(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @ast_binop(%struct.TYPE_21__*, i8 signext, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @unget_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
