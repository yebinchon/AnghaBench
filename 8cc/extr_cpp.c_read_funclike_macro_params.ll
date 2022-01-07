; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_funclike_macro_params.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_funclike_macro_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8* }

@.str = private unnamed_addr constant [23 x i8] c", expected, but got %s\00", align 1
@TNEWLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"missing ')' in macro parameter list\00", align 1
@KELLIPSIS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1
@TIDENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"identifier expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @read_funclike_macro_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_funclike_macro_params(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %76, %2
  %10 = call %struct.TYPE_7__* (...) @lex()
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = call i64 @is_keyword(%struct.TYPE_7__* %11, i8 signext 41)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %83

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = call i64 @is_keyword(%struct.TYPE_7__* %19, i8 signext 44)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = call i32 @tok2s(%struct.TYPE_7__* %24)
  %26 = call i32 (%struct.TYPE_7__*, i8*, ...) @errort(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = call %struct.TYPE_7__* (...) @lex()
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %7, align 8
  br label %29

29:                                               ; preds = %27, %15
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TNEWLINE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = call i32 (%struct.TYPE_7__*, i8*, ...) @errort(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = load i8, i8* @KELLIPSIS, align 1
  %41 = call i64 @is_keyword(%struct.TYPE_7__* %39, i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = call i32 @make_macro_token(i32 %45, i32 1)
  %48 = call i32 @map_put(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = call i32 @expect(i8 signext 41)
  store i32 1, i32* %3, align 4
  br label %83

50:                                               ; preds = %38
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TIDENT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = call i32 @tok2s(%struct.TYPE_7__* %58)
  %60 = call i32 (%struct.TYPE_7__*, i8*, ...) @errort(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i8, i8* @KELLIPSIS, align 1
  %66 = call i64 @next(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = call i32 @expect(i8 signext 41)
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = call i32 @make_macro_token(i32 %72, i32 1)
  %75 = call i32 @map_put(i32* %70, i8* %71, i32 %74)
  store i32 1, i32* %3, align 4
  br label %83

76:                                               ; preds = %61
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = call i32 @make_macro_token(i32 %79, i32 0)
  %82 = call i32 @map_put(i32* %77, i8* %78, i32 %81)
  br label %9

83:                                               ; preds = %68, %43, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_7__* @lex(...) #1

declare dso_local i64 @is_keyword(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @errort(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @tok2s(%struct.TYPE_7__*) #1

declare dso_local i32 @map_put(i32*, i8*, i32) #1

declare dso_local i32 @make_macro_token(i32, i32) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i64 @next(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
