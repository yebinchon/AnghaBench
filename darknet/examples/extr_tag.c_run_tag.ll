; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_tag.c_run_tag.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_tag.c_run_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_tag(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %18)
  br label %67

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = call i32 @find_arg(i32 %21, i8** %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 3
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 4
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ null, %33 ]
  store i8* %35, i8** %7, align 8
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 5
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 5
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ null, %42 ]
  store i8* %44, i8** %8, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 0, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @train_tag(i8* %51, i8* %52, i32 %53)
  br label %67

55:                                               ; preds = %43
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @test_tag(i8* %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %55
  br label %67

67:                                               ; preds = %11, %66, %50
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @find_arg(i32, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @train_tag(i8*, i8*, i32) #1

declare dso_local i32 @test_tag(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
