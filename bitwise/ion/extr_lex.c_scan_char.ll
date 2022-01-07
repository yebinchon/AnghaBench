; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_char.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_lex.c_scan_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@stream = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Char literal cannot be empty\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Char literal cannot contain newline\00", align 1
@escape_to_char = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid char literal escape '\\%c'\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Expected closing char quote, got '%c'\00", align 1
@TOKEN_INT = common dso_local global i32 0, align 4
@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MOD_CHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_char() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @stream, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 39
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i8*, i8** @stream, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** @stream, align 8
  store i32 0, i32* %1, align 4
  %10 = load i8*, i8** @stream, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 39
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** @stream, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** @stream, align 8
  br label %70

18:                                               ; preds = %0
  %19 = load i8*, i8** @stream, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %69

25:                                               ; preds = %18
  %26 = load i8*, i8** @stream, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load i8*, i8** @stream, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** @stream, align 8
  %33 = load i8*, i8** @stream, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 120
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (...) @scan_hex_escape()
  store i32 %38, i32* %1, align 4
  br label %61

39:                                               ; preds = %30
  %40 = load i32*, i32** @escape_to_char, align 8
  %41 = load i8*, i8** @stream, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load i8*, i8** @stream, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 48
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** @stream, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48, %39
  %59 = load i8*, i8** @stream, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** @stream, align 8
  br label %61

61:                                               ; preds = %58, %37
  br label %68

62:                                               ; preds = %25
  %63 = load i8*, i8** @stream, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %1, align 4
  %66 = load i8*, i8** @stream, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** @stream, align 8
  br label %68

68:                                               ; preds = %62, %61
  br label %69

69:                                               ; preds = %68, %23
  br label %70

70:                                               ; preds = %69, %14
  %71 = load i8*, i8** @stream, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 39
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** @stream, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @error_here(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %83

80:                                               ; preds = %70
  %81 = load i8*, i8** @stream, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** @stream, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* @TOKEN_INT, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 2), align 4
  %85 = load i32, i32* %1, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 4
  %86 = load i32, i32* @MOD_CHAR, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @error_here(i8*, ...) #1

declare dso_local i32 @scan_hex_escape(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
