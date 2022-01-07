; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_funcdef.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_funcdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@globalenv = common dso_local global i32 0, align 4
@localenv = common dso_local global i32* null, align 8
@gotos = common dso_local global i8* null, align 8
@labels = common dso_local global i32 0, align 4
@DECL_BODY = common dso_local global i32 0, align 4
@S_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @read_funcdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_funcdef() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %7 = call %struct.TYPE_7__* @read_decl_spec_opt(i32* %1)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %2, align 8
  %8 = load i32, i32* @globalenv, align 4
  %9 = call i32* @make_map_parent(i32 %8)
  store i32* %9, i32** @localenv, align 8
  %10 = call i8* (...) @make_vector()
  store i8* %10, i8** @gotos, align 8
  %11 = call i32 (...) @make_map()
  store i32 %11, i32* @labels, align 4
  %12 = call i8* (...) @make_vector()
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @DECL_BODY, align 4
  %17 = call %struct.TYPE_7__* @read_declarator(i8** %3, %struct.TYPE_7__* %14, i32* %15, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %0
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @vec_len(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @read_oldstyle_param_type(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @param_types(i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %0
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @S_STATIC, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @ast_gvar(%struct.TYPE_7__* %43, i8* %44)
  %46 = call i32 @expect(i8 signext 123)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @read_func_body(%struct.TYPE_7__* %47, i8* %48, i32* %49)
  store i32* %50, i32** %6, align 8
  %51 = call i32 (...) @backfill_labels()
  store i32* null, i32** @localenv, align 8
  %52 = load i32*, i32** %6, align 8
  ret i32* %52
}

declare dso_local %struct.TYPE_7__* @read_decl_spec_opt(i32*) #1

declare dso_local i32* @make_map_parent(i32) #1

declare dso_local i8* @make_vector(...) #1

declare dso_local i32 @make_map(...) #1

declare dso_local %struct.TYPE_7__* @read_declarator(i8**, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @vec_len(i32*) #1

declare dso_local i32 @read_oldstyle_param_type(i32*) #1

declare dso_local i32 @param_types(i32*) #1

declare dso_local i32 @ast_gvar(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_func_body(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @backfill_labels(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
