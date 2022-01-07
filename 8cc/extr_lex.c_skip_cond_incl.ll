; ModuleID = '/home/carl/AnghaBench/8cc/extr_lex.c_skip_cond_incl.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_lex.c_skip_cond_incl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@TIDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skip_cond_incl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %100, %47, %35, %27, %22, %0
  %8 = call %struct.TYPE_8__* (...) @current_file()
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = call i32 (...) @skip_space()
  %14 = call i32 (...) @readc()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EOF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %102

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 39
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @skip_char()
  br label %7

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @skip_string()
  br label %7

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 35
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %29
  br label %7

36:                                               ; preds = %32
  %37 = call %struct.TYPE_8__* (...) @current_file()
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = call %struct.TYPE_7__* (...) @lex()
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %5, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TIDENT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %7

48:                                               ; preds = %36
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = call i64 @is_ident(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = call i64 @is_ident(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call i64 @is_ident(%struct.TYPE_7__* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59, %55, %51
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = call i32 @unget_token(%struct.TYPE_7__* %64)
  %66 = call %struct.TYPE_7__* @make_keyword(i8 signext 35)
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = call i32 @unget_token(%struct.TYPE_7__* %72)
  br label %102

74:                                               ; preds = %59, %48
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = call i64 @is_ident(%struct.TYPE_7__* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = call i64 @is_ident(%struct.TYPE_7__* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = call i64 @is_ident(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %78, %74
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %100

89:                                               ; preds = %82
  %90 = load i32, i32* %1, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = call i64 @is_ident(%struct.TYPE_7__* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %1, align 4
  br label %99

99:                                               ; preds = %96, %92, %89
  br label %100

100:                                              ; preds = %99, %86
  %101 = call i32 (...) @skip_line()
  br label %7

102:                                              ; preds = %63, %18
  ret void
}

declare dso_local %struct.TYPE_8__* @current_file(...) #1

declare dso_local i32 @skip_space(...) #1

declare dso_local i32 @readc(...) #1

declare dso_local i32 @skip_char(...) #1

declare dso_local i32 @skip_string(...) #1

declare dso_local %struct.TYPE_7__* @lex(...) #1

declare dso_local i64 @is_ident(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @unget_token(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @make_keyword(i8 signext) #1

declare dso_local i32 @skip_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
