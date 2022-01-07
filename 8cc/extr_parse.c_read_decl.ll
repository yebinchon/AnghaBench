; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_decl.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }

@DECL_BODY = common dso_local global i32 0, align 4
@S_STATIC = common dso_local global i32 0, align 4
@S_TYPEDEF = common dso_local global i32 0, align 4
@S_EXTERN = common dso_local global i32 0, align 4
@KIND_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"';' or ',' are expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @read_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_decl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = call %struct.TYPE_12__* @read_decl_spec_opt(i32* %5)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %6, align 8
  %11 = call i64 @next_token(i8 signext 59)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %97

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %96, %14
  store i8* null, i8** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = call i32 @copy_incomplete_type(%struct.TYPE_12__* %16)
  %18 = load i32, i32* @DECL_BODY, align 4
  %19 = call %struct.TYPE_12__* @read_declarator(i8** %7, i32 %17, i32* null, i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @S_STATIC, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @S_TYPEDEF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @ast_typedef(%struct.TYPE_12__* %30, i8* %31)
  br label %84

33:                                               ; preds = %15
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = call i32 @ensure_not_void(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @read_static_local_var(%struct.TYPE_12__* %44, i8* %45)
  br label %83

47:                                               ; preds = %38, %33
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = call i32 @ensure_not_void(%struct.TYPE_12__* %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32* (%struct.TYPE_12__*, i8*)* @ast_gvar, i32* (%struct.TYPE_12__*, i8*)* @ast_lvar
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32* %53(%struct.TYPE_12__* %54, i8* %55)
  store i32* %56, i32** %9, align 8
  %57 = call i64 @next_token(i8 signext 61)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = call i32* @read_decl_init(%struct.TYPE_12__* %62)
  %64 = call i32 @ast_decl(i32* %61, i32* %63)
  %65 = call i32 @vec_push(i32* %60, i32 %64)
  br label %82

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @S_EXTERN, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @KIND_FUNC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @ast_decl(i32* %78, i32* null)
  %80 = call i32 @vec_push(i32* %77, i32 %79)
  br label %81

81:                                               ; preds = %76, %70, %66
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83, %29
  %85 = call i64 @next_token(i8 signext 59)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %97

88:                                               ; preds = %84
  %89 = call i64 @next_token(i8 signext 44)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = call i32 (...) @peek()
  %93 = call i32 (...) @peek()
  %94 = call i32 @tok2s(i32 %93)
  %95 = call i32 @errort(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  br label %15

97:                                               ; preds = %87, %13
  ret void
}

declare dso_local %struct.TYPE_12__* @read_decl_spec_opt(i32*) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local %struct.TYPE_12__* @read_declarator(i8**, i32, i32*, i32) #1

declare dso_local i32 @copy_incomplete_type(%struct.TYPE_12__*) #1

declare dso_local i32 @ast_typedef(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ensure_not_void(%struct.TYPE_12__*) #1

declare dso_local i32 @read_static_local_var(%struct.TYPE_12__*, i8*) #1

declare dso_local i32* @ast_gvar(%struct.TYPE_12__*, i8*) #1

declare dso_local i32* @ast_lvar(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @vec_push(i32*, i32) #1

declare dso_local i32 @ast_decl(i32*, i32*) #1

declare dso_local i32* @read_decl_init(%struct.TYPE_12__*) #1

declare dso_local i32 @errort(i32, i8*, i32) #1

declare dso_local i32 @peek(...) #1

declare dso_local i32 @tok2s(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
