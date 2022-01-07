; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_one_arg.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_one_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }

@TEOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unterminated macro argument list\00", align 1
@TNEWLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32)* @read_one_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_one_arg(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32* (...) @make_vector()
  store i32* %11, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %91, %38, %28, %3
  %13 = call %struct.TYPE_11__* (...) @lex()
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TEOF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i32 @errort(%struct.TYPE_11__* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TNEWLINE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %12

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = call i64 @is_keyword(%struct.TYPE_11__* %35, i8 signext 35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = call i32 @read_directive(%struct.TYPE_11__* %39)
  br label %12

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = call i64 @is_keyword(%struct.TYPE_11__* %45, i8 signext 41)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = call i32 @unget_token(%struct.TYPE_11__* %49)
  %51 = load i32*, i32** %6, align 8
  store i32 1, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %4, align 8
  br label %95

53:                                               ; preds = %44, %41
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = call i64 @is_keyword(%struct.TYPE_11__* %57, i8 signext 44)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  store i32* %64, i32** %4, align 8
  br label %95

65:                                               ; preds = %60, %56, %53
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = call i64 @is_keyword(%struct.TYPE_11__* %66, i8 signext 40)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = call i64 @is_keyword(%struct.TYPE_11__* %73, i8 signext 41)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = call %struct.TYPE_11__* @copy_token(%struct.TYPE_11__* %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %10, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = call i32 @vec_push(i32* %92, %struct.TYPE_11__* %93)
  br label %12

95:                                               ; preds = %63, %48
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i32* @make_vector(...) #1

declare dso_local %struct.TYPE_11__* @lex(...) #1

declare dso_local i32 @errort(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @is_keyword(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @read_directive(%struct.TYPE_11__*) #1

declare dso_local i32 @unget_token(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @copy_token(%struct.TYPE_11__*) #1

declare dso_local i32 @vec_push(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
