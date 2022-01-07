; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_expand_newline.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_expand_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32 (%struct.TYPE_13__*)* }

@TIDENT = common dso_local global i64 0, align 8
@macros = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* ()* @read_expand_newline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @read_expand_newline() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = call %struct.TYPE_13__* (...) @lex()
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %2, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TIDENT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %1, align 8
  br label %95

19:                                               ; preds = %0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %3, align 8
  %23 = load i32, i32* @macros, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.TYPE_14__* @map_get(i32 %23, i8* %24)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @set_has(i32 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %19
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %1, align 8
  br label %95

37:                                               ; preds = %28
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %93 [
    i32 129, label %41
    i32 130, label %56
    i32 128, label %86
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32* @set_add(i32 %44, i8* %45)
  store i32* %46, i32** %5, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @subst(%struct.TYPE_14__* %47, i32* null, i32* %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call i32 @propagate_space(i32* %50, %struct.TYPE_13__* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @unget_all(i32* %53)
  %55 = call %struct.TYPE_13__* (...) @read_expand()
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %1, align 8
  br label %95

56:                                               ; preds = %37
  %57 = call i32 @next(i8 signext 40)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %1, align 8
  br label %95

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = call i32* @read_args(%struct.TYPE_13__* %62, %struct.TYPE_14__* %63)
  store i32* %64, i32** %7, align 8
  %65 = call %struct.TYPE_13__* (...) @peek_token()
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %8, align 8
  %66 = call i32 @expect(i8 signext 41)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @set_intersection(i32 %69, i32 %72)
  %74 = load i8*, i8** %3, align 8
  %75 = call i32* @set_add(i32 %73, i8* %74)
  store i32* %75, i32** %9, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32* @subst(%struct.TYPE_14__* %76, i32* %77, i32* %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call i32 @propagate_space(i32* %80, %struct.TYPE_13__* %81)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @unget_all(i32* %83)
  %85 = call %struct.TYPE_13__* (...) @read_expand()
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %1, align 8
  br label %95

86:                                               ; preds = %37
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = call i32 %89(%struct.TYPE_13__* %90)
  %92 = call %struct.TYPE_13__* (...) @read_expand()
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %1, align 8
  br label %95

93:                                               ; preds = %37
  %94 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %17, %35, %41, %59, %61, %86, %93
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  ret %struct.TYPE_13__* %96
}

declare dso_local %struct.TYPE_13__* @lex(...) #1

declare dso_local %struct.TYPE_14__* @map_get(i32, i8*) #1

declare dso_local i64 @set_has(i32, i8*) #1

declare dso_local i32* @set_add(i32, i8*) #1

declare dso_local i32* @subst(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @propagate_space(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @unget_all(i32*) #1

declare dso_local %struct.TYPE_13__* @read_expand(...) #1

declare dso_local i32 @next(i8 signext) #1

declare dso_local i32* @read_args(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @peek_token(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @set_intersection(i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
