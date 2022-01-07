; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_for_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_for_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@localenv = common dso_local global i32* null, align 8
@type_bool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* ()* @read_for_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @read_for_stmt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = call i32 @expect(i8 signext 40)
  %11 = call i8* (...) @make_label()
  store i8* %11, i8** %1, align 8
  %12 = call i8* (...) @make_label()
  store i8* %12, i8** %2, align 8
  %13 = call i8* (...) @make_label()
  store i8* %13, i8** %3, align 8
  %14 = load i32*, i32** @localenv, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** @localenv, align 8
  %16 = call i32* @make_map_parent(i32* %15)
  store i32* %16, i32** @localenv, align 8
  %17 = call %struct.TYPE_15__* (...) @read_opt_decl_or_stmt()
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %5, align 8
  %18 = call %struct.TYPE_15__* (...) @read_expr_opt()
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_flotype(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @type_bool, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = call %struct.TYPE_15__* @ast_conv(i32 %28, %struct.TYPE_15__* %29)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %6, align 8
  br label %31

31:                                               ; preds = %27, %21, %0
  %32 = call i32 @expect(i8 signext 59)
  %33 = call %struct.TYPE_15__* (...) @read_expr_opt()
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %7, align 8
  %34 = call i32 @expect(i8 signext 41)
  %35 = load i8*, i8** %2, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @SET_JUMP_LABELS(i8* %35, i8* %36)
  %38 = call %struct.TYPE_15__* (...) @read_stmt()
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %8, align 8
  %39 = call i32 (...) @RESTORE_JUMP_LABELS()
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** @localenv, align 8
  %41 = call i32* (...) @make_vector()
  store i32* %41, i32** %9, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = call i32 @vec_push(i32* %45, %struct.TYPE_15__* %46)
  br label %48

48:                                               ; preds = %44, %31
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %1, align 8
  %51 = call %struct.TYPE_15__* @ast_dest(i8* %50)
  %52 = call i32 @vec_push(i32* %49, %struct.TYPE_15__* %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = icmp ne %struct.TYPE_15__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call %struct.TYPE_15__* @ast_jump(i8* %58)
  %60 = call %struct.TYPE_15__* @ast_if(%struct.TYPE_15__* %57, i32* null, %struct.TYPE_15__* %59)
  %61 = call i32 @vec_push(i32* %56, %struct.TYPE_15__* %60)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = icmp ne %struct.TYPE_15__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = call i32 @vec_push(i32* %66, %struct.TYPE_15__* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32*, i32** %9, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = call %struct.TYPE_15__* @ast_dest(i8* %71)
  %73 = call i32 @vec_push(i32* %70, %struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = icmp ne %struct.TYPE_15__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = call i32 @vec_push(i32* %77, %struct.TYPE_15__* %78)
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32*, i32** %9, align 8
  %82 = load i8*, i8** %1, align 8
  %83 = call %struct.TYPE_15__* @ast_jump(i8* %82)
  %84 = call i32 @vec_push(i32* %81, %struct.TYPE_15__* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = call %struct.TYPE_15__* @ast_dest(i8* %86)
  %88 = call i32 @vec_push(i32* %85, %struct.TYPE_15__* %87)
  %89 = load i32*, i32** %9, align 8
  %90 = call %struct.TYPE_15__* @ast_compound_stmt(i32* %89)
  ret %struct.TYPE_15__* %90
}

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i8* @make_label(...) #1

declare dso_local i32* @make_map_parent(i32*) #1

declare dso_local %struct.TYPE_15__* @read_opt_decl_or_stmt(...) #1

declare dso_local %struct.TYPE_15__* @read_expr_opt(...) #1

declare dso_local i64 @is_flotype(i32) #1

declare dso_local %struct.TYPE_15__* @ast_conv(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @SET_JUMP_LABELS(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @read_stmt(...) #1

declare dso_local i32 @RESTORE_JUMP_LABELS(...) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ast_dest(i8*) #1

declare dso_local %struct.TYPE_15__* @ast_if(%struct.TYPE_15__*, i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ast_jump(i8*) #1

declare dso_local %struct.TYPE_15__* @ast_compound_stmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
