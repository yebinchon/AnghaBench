; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_primary_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_primary_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@KGENERIC = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [39 x i8] c"internal error: unknown token kind: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_primary_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_primary_expr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = call %struct.TYPE_6__* (...) @get()
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %68

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i64 @is_keyword(%struct.TYPE_6__* %9, i8 signext 40)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = call i64 @next_token(i8 signext 123)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32* (...) @read_stmt_expr()
  store i32* %16, i32** %1, align 8
  br label %68

17:                                               ; preds = %12
  %18 = call i32* (...) @read_expr()
  store i32* %18, i32** %3, align 8
  %19 = call i32 @expect(i8 signext 41)
  %20 = load i32*, i32** %3, align 8
  store i32* %20, i32** %1, align 8
  br label %68

21:                                               ; preds = %8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = load i8, i8* @KGENERIC, align 1
  %24 = call i64 @is_keyword(%struct.TYPE_6__* %22, i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32* (...) @read_generic()
  store i32* %27, i32** %1, align 8
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %63 [
    i32 131, label %32
    i32 129, label %37
    i32 132, label %40
    i32 128, label %49
    i32 130, label %60
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @read_var_or_func(i32 %35)
  store i32* %36, i32** %1, align 8
  br label %68

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i32* @read_number(%struct.TYPE_6__* %38)
  store i32* %39, i32** %1, align 8
  br label %68

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @char_type(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @ast_inttype(i32 %44, i32 %47)
  store i32* %48, i32** %1, align 8
  br label %68

49:                                               ; preds = %28
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @ast_string(i32 %52, i32 %55, i32 %58)
  store i32* %59, i32** %1, align 8
  br label %68

60:                                               ; preds = %28
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = call i32 @unget_token(%struct.TYPE_6__* %61)
  store i32* null, i32** %1, align 8
  br label %68

63:                                               ; preds = %28
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %7, %15, %17, %26, %32, %37, %40, %49, %60, %63
  %69 = load i32*, i32** %1, align 8
  ret i32* %69
}

declare dso_local %struct.TYPE_6__* @get(...) #1

declare dso_local i64 @is_keyword(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32* @read_stmt_expr(...) #1

declare dso_local i32* @read_expr(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_generic(...) #1

declare dso_local i32* @read_var_or_func(i32) #1

declare dso_local i32* @read_number(%struct.TYPE_6__*) #1

declare dso_local i32* @ast_inttype(i32, i32) #1

declare dso_local i32 @char_type(i32) #1

declare dso_local i32* @ast_string(i32, i32, i32) #1

declare dso_local i32 @unget_token(%struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
