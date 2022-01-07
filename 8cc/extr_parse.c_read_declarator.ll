; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_declarator.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }

@TIDENT = common dso_local global i64 0, align 8
@DECL_CAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"identifier is not expected, but got %s\00", align 1
@DECL_BODY = common dso_local global i32 0, align 4
@DECL_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"identifier, ( or * are expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32)* @read_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_declarator(i8** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i64 @next_token(i8 signext 40)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = call i32 (...) @peek()
  %17 = call i64 @is_type(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @read_declarator_func(i32* %20, i32* %21)
  store i32* %22, i32** %5, align 8
  br label %91

23:                                               ; preds = %15
  %24 = call i32* (...) @make_stub_type()
  store i32* %24, i32** %10, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32* @read_declarator(i8** %25, i32* %26, i32* %27, i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = call i32 @expect(i8 signext 41)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @read_declarator_tail(i32* %31, i32* %32)
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %11, align 8
  store i32* %36, i32** %5, align 8
  br label %91

37:                                               ; preds = %4
  %38 = call i64 @next_token(i8 signext 42)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = call i32 (...) @skip_type_qualifiers()
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @make_ptr_type(i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @read_declarator(i8** %42, i32* %44, i32* %45, i32 %46)
  store i32* %47, i32** %5, align 8
  br label %91

48:                                               ; preds = %37
  %49 = call %struct.TYPE_6__* (...) @get()
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %12, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TIDENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @DECL_CAST, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = call i32 @tok2s(%struct.TYPE_6__* %61)
  %63 = call i32 @errort(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @read_declarator_tail(i32* %69, i32* %70)
  store i32* %71, i32** %5, align 8
  br label %91

72:                                               ; preds = %48
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DECL_BODY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @DECL_PARAM, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %72
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = call i32 @tok2s(%struct.TYPE_6__* %82)
  %84 = call i32 @errort(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %87 = call i32 @unget_token(%struct.TYPE_6__* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32* @read_declarator_tail(i32* %88, i32* %89)
  store i32* %90, i32** %5, align 8
  br label %91

91:                                               ; preds = %85, %64, %40, %23, %19
  %92 = load i32*, i32** %5, align 8
  ret i32* %92
}

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i64 @is_type(i32) #1

declare dso_local i32 @peek(...) #1

declare dso_local i32* @read_declarator_func(i32*, i32*) #1

declare dso_local i32* @make_stub_type(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32* @read_declarator_tail(i32*, i32*) #1

declare dso_local i32 @skip_type_qualifiers(...) #1

declare dso_local i32* @make_ptr_type(i32*) #1

declare dso_local %struct.TYPE_6__* @get(...) #1

declare dso_local i32 @errort(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_6__*) #1

declare dso_local i32 @unget_token(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
