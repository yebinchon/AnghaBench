; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_program.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_decl.c_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLOBAL = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@t = common dso_local global i64 0, align 8
@EOI = common dso_local global i64 0, align 8
@kind = common dso_local global i64* null, align 8
@CHAR = common dso_local global i64 0, align 8
@STATIC = common dso_local global i64 0, align 8
@ID = common dso_local global i64 0, align 8
@dclglobal = common dso_local global i32 0, align 4
@STMT = common dso_local global i32 0, align 4
@glevel = common dso_local global i32 0, align 4
@xref = common dso_local global i64 0, align 8
@FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"empty declaration\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unrecognized declaration\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"empty input file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @program() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GLOBAL, align 4
  store i32 %2, i32* @level, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %56, %0
  %4 = load i64, i64* @t, align 8
  %5 = load i64, i64* @EOI, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = load i64*, i64** @kind, align 8
  %9 = load i64, i64* @t, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHAR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = load i64*, i64** @kind, align 8
  %16 = load i64, i64* @t, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STATIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* @t, align 8
  %23 = load i64, i64* @ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @t, align 8
  %27 = icmp eq i64 %26, 42
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @t, align 8
  %30 = icmp eq i64 %29, 40
  br i1 %30, label %31, label %45

31:                                               ; preds = %28, %25, %21, %14, %7
  %32 = load i32, i32* @dclglobal, align 4
  %33 = call i32 @decl(i32 %32)
  %34 = load i32, i32* @STMT, align 4
  %35 = call i32 @deallocate(i32 %34)
  %36 = load i32, i32* @glevel, align 4
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* @xref, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @FUNC, align 4
  %43 = call i32 @deallocate(i32 %42)
  br label %44

44:                                               ; preds = %41, %38, %31
  br label %55

45:                                               ; preds = %28
  %46 = load i64, i64* @t, align 8
  %47 = icmp eq i64 %46, 59
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %50 = call i64 (...) @gettok()
  store i64 %50, i64* @t, align 8
  br label %54

51:                                               ; preds = %45
  %52 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i64 (...) @gettok()
  store i64 %53, i64* @t, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %3

59:                                               ; preds = %3
  %60 = load i32, i32* %1, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @decl(i32) #1

declare dso_local i32 @deallocate(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @gettok(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
