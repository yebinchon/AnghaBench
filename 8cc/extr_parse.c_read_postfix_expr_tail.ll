; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_postfix_expr_tail.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_postfix_expr_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_19__* }

@KIND_PTR = common dso_local global i64 0, align 8
@KIND_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"function expected, but got %s\00", align 1
@OP_ARROW = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"pointer type expected, but got %s %s\00", align 1
@AST_DEREF = common dso_local global i32 0, align 4
@OP_INC = common dso_local global i8 0, align 1
@OP_DEC = common dso_local global i8 0, align 1
@OP_POST_INC = common dso_local global i32 0, align 4
@OP_POST_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_20__*)* @read_postfix_expr_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @read_postfix_expr_tail(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = icmp ne %struct.TYPE_20__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %116

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %75, %52, %46, %40, %11
  %13 = call i64 @next_token(i8 signext 40)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = call i32* (...) @peek()
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = call %struct.TYPE_20__* @conv(%struct.TYPE_20__* %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %5, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KIND_PTR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %15
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KIND_FUNC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27, %15
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i8* @node2s(%struct.TYPE_20__* %37)
  %39 = call i32 @errort(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = call %struct.TYPE_20__* @read_funcall(%struct.TYPE_20__* %41)
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %3, align 8
  br label %12

43:                                               ; preds = %12
  %44 = call i64 @next_token(i8 signext 91)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = call %struct.TYPE_20__* @read_subscript_expr(%struct.TYPE_20__* %47)
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %3, align 8
  br label %12

49:                                               ; preds = %43
  %50 = call i64 @next_token(i8 signext 46)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = call %struct.TYPE_20__* @read_struct_field(%struct.TYPE_20__* %53)
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %3, align 8
  br label %12

55:                                               ; preds = %49
  %56 = load i8, i8* @OP_ARROW, align 1
  %57 = call i64 @next_token(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KIND_PTR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = call i32 @ty2s(%struct.TYPE_19__* %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = call i8* @node2s(%struct.TYPE_20__* %72)
  %74 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i32, i32* @AST_DEREF, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = call %struct.TYPE_20__* @ast_uop(i32 %76, %struct.TYPE_19__* %81, %struct.TYPE_20__* %82)
  store %struct.TYPE_20__* %83, %struct.TYPE_20__** %3, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = call %struct.TYPE_20__* @read_struct_field(%struct.TYPE_20__* %84)
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %3, align 8
  br label %12

86:                                               ; preds = %55
  %87 = call i32* (...) @peek()
  store i32* %87, i32** %6, align 8
  %88 = load i8, i8* @OP_INC, align 1
  %89 = call i64 @next_token(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i8, i8* @OP_DEC, align 1
  %93 = call i64 @next_token(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %91, %86
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = call i32 @ensure_lvalue(%struct.TYPE_20__* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i8, i8* @OP_INC, align 1
  %100 = call i64 @is_keyword(i32* %98, i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @OP_POST_INC, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @OP_POST_DEC, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = call %struct.TYPE_20__* @ast_uop(i32 %108, %struct.TYPE_19__* %111, %struct.TYPE_20__* %112)
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %2, align 8
  br label %116

114:                                              ; preds = %91
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %2, align 8
  br label %116

116:                                              ; preds = %114, %106, %10
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %117
}

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32* @peek(...) #1

declare dso_local %struct.TYPE_20__* @conv(%struct.TYPE_20__*) #1

declare dso_local i32 @errort(i32*, i8*, i8*) #1

declare dso_local i8* @node2s(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @read_funcall(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @read_subscript_expr(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @read_struct_field(%struct.TYPE_20__*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @ty2s(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @ast_uop(i32, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ensure_lvalue(%struct.TYPE_20__*) #1

declare dso_local i64 @is_keyword(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
