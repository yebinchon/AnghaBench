; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_func_args.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_func_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@type_double = common dso_local global %struct.TYPE_15__* null, align 8
@type_int = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unexpected token: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @read_func_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_func_args(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = call i32* (...) @make_vector()
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %86, %1
  %10 = call i64 @next_token(i8 signext 41)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %87

13:                                               ; preds = %9
  %14 = call i32 (...) @read_assignment_expr()
  %15 = call %struct.TYPE_16__* @conv(i32 %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @vec_len(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = call %struct.TYPE_15__* @vec_get(i32* %21, i32 %22)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %6, align 8
  br label %49

25:                                               ; preds = %13
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call i64 @is_flotype(%struct.TYPE_15__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @type_double, align 8
  br label %47

33:                                               ; preds = %25
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = call i64 @is_inttype(%struct.TYPE_15__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @type_int, align 8
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi %struct.TYPE_15__* [ %40, %39 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi %struct.TYPE_15__* [ %32, %31 ], [ %46, %45 ]
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  br label %49

49:                                               ; preds = %47, %20
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = call i32 @ensure_assignable(%struct.TYPE_15__* %50, %struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = call %struct.TYPE_16__* @ast_conv(%struct.TYPE_15__* %65, %struct.TYPE_16__* %66)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %5, align 8
  br label %68

68:                                               ; preds = %64, %49
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = call i32 @vec_push(i32* %69, %struct.TYPE_16__* %70)
  %72 = call i32* (...) @get()
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @is_keyword(i32* %73, i8 signext 41)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %87

77:                                               ; preds = %68
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @is_keyword(i32* %78, i8 signext 44)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @tok2s(i32* %83)
  %85 = call i32 @errort(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %77
  br label %9

87:                                               ; preds = %76, %12
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local i32* @make_vector(...) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local %struct.TYPE_16__* @conv(i32) #1

declare dso_local i32 @read_assignment_expr(...) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local %struct.TYPE_15__* @vec_get(i32*, i32) #1

declare dso_local i64 @is_flotype(%struct.TYPE_15__*) #1

declare dso_local i64 @is_inttype(%struct.TYPE_15__*) #1

declare dso_local i32 @ensure_assignable(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ast_conv(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_16__*) #1

declare dso_local i32* @get(...) #1

declare dso_local i64 @is_keyword(i32*, i8 signext) #1

declare dso_local i32 @errort(i32*, i8*, i32) #1

declare dso_local i32 @tok2s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
