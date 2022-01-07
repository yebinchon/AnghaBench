; ModuleID = '/home/carl/AnghaBench/8cc/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@delete_temp_files = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@infile = common dso_local global i32 0, align 4
@cppdefs = common dso_local global i32 0, align 4
@cpponly = common dso_local global i64 0, align 8
@dumpast = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dumpasm = common dso_local global i32 0, align 4
@outfile = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@asmfile = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"execl failed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"as failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @setbuf(i32 %11, i32* null)
  %13 = load i32, i32* @delete_temp_files, align 4
  %14 = call i64 @atexit(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @parseopt(i32 %19, i8** %20)
  %22 = load i32, i32* @infile, align 4
  %23 = call i32 @lex_init(i32 %22)
  %24 = call i32 (...) @cpp_init()
  %25 = call i32 (...) @parse_init()
  %26 = call i32 (...) @open_asmfile()
  %27 = call i32 @set_output_file(i32 %26)
  %28 = load i32, i32* @cppdefs, align 4
  %29 = call i64 @buf_len(i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load i32, i32* @cppdefs, align 4
  %33 = call i32 @buf_body(i32 %32)
  %34 = call i32 @read_from_string(i32 %33)
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i64, i64* @cpponly, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @preprocess()
  br label %40

40:                                               ; preds = %38, %35
  %41 = call i32* (...) @read_toplevels()
  store i32* %41, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %61, %40
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @vec_len(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32* @vec_get(i32* %48, i32 %49)
  store i32* %50, i32** %8, align 8
  %51 = load i64, i64* @dumpast, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = call i8* @node2s(i32* %54)
  %56 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %60

57:                                               ; preds = %47
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @emit_toplevel(i32* %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %42

64:                                               ; preds = %42
  %65 = call i32 (...) @close_output_file()
  %66 = load i64, i64* @dumpast, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @dumpasm, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @outfile, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @infile, align 4
  %76 = call i32 @base(i32 %75)
  %77 = call i64 @replace_suffix(i32 %76, i8 signext 111)
  store i64 %77, i64* @outfile, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = call i64 (...) @fork()
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i64, i64* @outfile, align 8
  %89 = load i32, i32* @asmfile, align 4
  %90 = call i32 @execlp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %89, i8* null)
  %91 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @waitpid(i64 %93, i32* %10, i32 0)
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %68, %64
  ret i32 0
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @parseopt(i32, i8**) #1

declare dso_local i32 @lex_init(i32) #1

declare dso_local i32 @cpp_init(...) #1

declare dso_local i32 @parse_init(...) #1

declare dso_local i32 @set_output_file(i32) #1

declare dso_local i32 @open_asmfile(...) #1

declare dso_local i64 @buf_len(i32) #1

declare dso_local i32 @read_from_string(i32) #1

declare dso_local i32 @buf_body(i32) #1

declare dso_local i32 @preprocess(...) #1

declare dso_local i32* @read_toplevels(...) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i32* @vec_get(i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @node2s(i32*) #1

declare dso_local i32 @emit_toplevel(i32*) #1

declare dso_local i32 @close_output_file(...) #1

declare dso_local i64 @replace_suffix(i32, i8 signext) #1

declare dso_local i32 @base(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i64, i8*, i32, i8*) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
