; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_include.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@std_include_path = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot find header file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32)* @read_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_include(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @read_cpp_header_name(i32* %11, i32* %7)
  store i8* %12, i8** %8, align 8
  %13 = call i32 (...) @expect_newline()
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 47
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @try_include(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %74

25:                                               ; preds = %19
  br label %70

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @strdup(i64 %37)
  %39 = call i8* @dirname(i32 %38)
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i8* [ %39, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %40 ]
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @try_include(i8* %43, i8* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %74

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %26
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @std_include_path, align 4
  %54 = call i32 @vec_len(i32 %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i32, i32* @std_include_path, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i8* @vec_get(i32 %57, i32 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @try_include(i8* %59, i8* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %74

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %51

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %25
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @errort(i32* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %64, %48, %24
  ret void
}

declare dso_local i8* @read_cpp_header_name(i32*, i32*) #1

declare dso_local i32 @expect_newline(...) #1

declare dso_local i64 @try_include(i8*, i8*, i32) #1

declare dso_local i8* @dirname(i32) #1

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local i8* @vec_get(i32, i32) #1

declare dso_local i32 @errort(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
