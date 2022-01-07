; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_forstmt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_forstmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@t = common dso_local global i64 0, align 8
@kind = common dso_local global i64* null, align 8
@expr0 = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@src = common dso_local global i32 0, align 4
@refinc = common dso_local global double 0.000000e+00, align 8
@conditional = common dso_local global i32 0, align 4
@forstmt.stop = internal global [4 x i8] c"\80\81}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @forstmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forstmt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = call i64 (...) @gettok()
  store i64 %13, i64* @t, align 8
  %14 = call i32 @expect(i8 signext 40)
  %15 = call i32 @definept(i32* null)
  %16 = load i64*, i64** @kind, align 8
  %17 = load i64, i64* @t, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 129
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @expr0, align 4
  %23 = load i32, i32* @FUNC, align 4
  %24 = call i32* @texpr(i32 %22, i8 signext 59, i32 %23)
  store i32* %24, i32** %8, align 8
  br label %27

25:                                               ; preds = %3
  %26 = call i32 @expect(i8 signext 59)
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @walk(i32* %28, i32 0, i32 0)
  %30 = load i32, i32* @src, align 4
  store i32 %30, i32* %11, align 4
  %31 = load double, double* @refinc, align 8
  %32 = fmul double %31, 1.000000e+01
  store double %32, double* @refinc, align 8
  %33 = load i64*, i64** @kind, align 8
  %34 = load i64, i64* @t, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 129
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @conditional, align 4
  %40 = load i32, i32* @FUNC, align 4
  %41 = call i32* @texpr(i32 %39, i8 signext 59, i32 %40)
  store i32* %41, i32** %9, align 8
  br label %44

42:                                               ; preds = %27
  %43 = call i32 @expect(i8 signext 59)
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* @src, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i64*, i64** @kind, align 8
  %47 = load i64, i64* @t, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 129
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @expr0, align 4
  %53 = load i32, i32* @FUNC, align 4
  %54 = call i32* @texpr(i32 %52, i8 signext 41, i32 %53)
  store i32* %54, i32** %10, align 8
  br label %57

55:                                               ; preds = %44
  %56 = call i32 @test(i8 signext 41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @forstmt.stop, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @foldcond(i32* %61, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 3
  %69 = call i32 @branch(i32 %68)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @definelab(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @statement(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @definelab(i32 %79)
  %81 = call i32 @definept(i32* %12)
  %82 = load i32*, i32** %10, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @walk(i32* %85, i32 0, i32 0)
  br label %87

87:                                               ; preds = %84, %71
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 3
  %96 = call i32 @definelab(i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = call i32 @definept(i32* %11)
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @walk(i32* %99, i32 %100, i32 0)
  br label %106

102:                                              ; preds = %87
  %103 = call i32 @definept(i32* %11)
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @branch(i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 2
  %109 = call %struct.TYPE_2__* @findlabel(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 2
  %116 = call i32 @definelab(i32 %115)
  br label %117

117:                                              ; preds = %113, %106
  ret void
}

declare dso_local i64 @gettok(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @definept(i32*) #1

declare dso_local i32* @texpr(i32, i8 signext, i32) #1

declare dso_local i32 @walk(i32*, i32, i32) #1

declare dso_local i32 @test(i8 signext, i8*) #1

declare dso_local i32 @foldcond(i32*, i32*) #1

declare dso_local i32 @branch(i32) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local i32 @statement(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @findlabel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
