; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_switch_stmt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_switch_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }

@cases = common dso_local global i32 0, align 4
@defaultcase = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* ()* @read_switch_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @read_switch_stmt() #0 {
  %1 = alloca %struct.TYPE_16__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @expect(i8 signext 40)
  %8 = call i32 (...) @read_expr()
  %9 = call %struct.TYPE_16__* @conv(i32 %8)
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %1, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %11 = call i32 @ensure_inttype(%struct.TYPE_16__* %10)
  %12 = call i32 @expect(i8 signext 41)
  %13 = call i8* (...) @make_label()
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @SET_SWITCH_CONTEXT(i8* %14)
  %16 = call %struct.TYPE_16__* (...) @read_stmt()
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %3, align 8
  %17 = call i32* (...) @make_vector()
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (...) @make_tempname()
  %22 = call %struct.TYPE_16__* @ast_lvar(i32 %20, i32 %21)
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %29 = call %struct.TYPE_16__* @ast_binop(i32 %26, i8 signext 61, %struct.TYPE_16__* %27, %struct.TYPE_16__* %28)
  %30 = call i32 @vec_push(i32* %23, %struct.TYPE_16__* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %44, %0
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @cases, align 4
  %34 = call i32 @vec_len(i32 %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = load i32, i32* @cases, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @vec_get(i32 %39, i32 %40)
  %42 = call %struct.TYPE_16__* @make_switch_jump(%struct.TYPE_16__* %38, i32 %41)
  %43 = call i32 @vec_push(i32* %37, %struct.TYPE_16__* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** @defaultcase, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i8*, i8** @defaultcase, align 8
  br label %55

53:                                               ; preds = %47
  %54 = load i8*, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i8* [ %52, %51 ], [ %54, %53 ]
  %57 = call %struct.TYPE_16__* @ast_jump(i8* %56)
  %58 = call i32 @vec_push(i32* %48, %struct.TYPE_16__* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = icmp ne %struct.TYPE_16__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = call i32 @vec_push(i32* %62, %struct.TYPE_16__* %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = call %struct.TYPE_16__* @ast_dest(i8* %67)
  %69 = call i32 @vec_push(i32* %66, %struct.TYPE_16__* %68)
  %70 = call i32 (...) @RESTORE_SWITCH_CONTEXT()
  %71 = load i32*, i32** %4, align 8
  %72 = call %struct.TYPE_16__* @ast_compound_stmt(i32* %71)
  ret %struct.TYPE_16__* %72
}

declare dso_local i32 @expect(i8 signext) #1

declare dso_local %struct.TYPE_16__* @conv(i32) #1

declare dso_local i32 @read_expr(...) #1

declare dso_local i32 @ensure_inttype(%struct.TYPE_16__*) #1

declare dso_local i8* @make_label(...) #1

declare dso_local i32 @SET_SWITCH_CONTEXT(i8*) #1

declare dso_local %struct.TYPE_16__* @read_stmt(...) #1

declare dso_local i32* @make_vector(...) #1

declare dso_local %struct.TYPE_16__* @ast_lvar(i32, i32) #1

declare dso_local i32 @make_tempname(...) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ast_binop(i32, i8 signext, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local %struct.TYPE_16__* @make_switch_jump(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vec_get(i32, i32) #1

declare dso_local %struct.TYPE_16__* @ast_jump(i8*) #1

declare dso_local %struct.TYPE_16__* @ast_dest(i8*) #1

declare dso_local i32 @RESTORE_SWITCH_CONTEXT(...) #1

declare dso_local %struct.TYPE_16__* @ast_compound_stmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
