; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_run_cifar.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_run_cifar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"distill\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"csvtrain\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"eval\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_cifar(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %16)
  br label %113

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 4
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i8* [ %27, %24 ], [ null, %28 ]
  store i8* %30, i8** %6, align 8
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @train_cifar(i8* %37, i8* %38)
  br label %113

40:                                               ; preds = %29
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 0, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @extract_cifar()
  br label %112

48:                                               ; preds = %40
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 0, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @train_cifar_distill(i8* %55, i8* %56)
  br label %111

58:                                               ; preds = %48
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 0, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @test_cifar(i8* %65, i8* %66)
  br label %110

68:                                               ; preds = %58
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp eq i64 0, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @test_cifar_multi(i8* %75, i8* %76)
  br label %109

78:                                               ; preds = %68
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp eq i64 0, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @test_cifar_csv(i8* %85, i8* %86)
  br label %108

88:                                               ; preds = %78
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp eq i64 0, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @test_cifar_csvtrain(i8* %95, i8* %96)
  br label %107

98:                                               ; preds = %88
  %99 = load i8**, i8*** %4, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %103 = icmp eq i64 0, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (...) @eval_cifar_csv()
  br label %106

106:                                              ; preds = %104, %98
  br label %107

107:                                              ; preds = %106, %94
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108, %74
  br label %110

110:                                              ; preds = %109, %64
  br label %111

111:                                              ; preds = %110, %54
  br label %112

112:                                              ; preds = %111, %46
  br label %113

113:                                              ; preds = %9, %112, %36
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @train_cifar(i8*, i8*) #1

declare dso_local i32 @extract_cifar(...) #1

declare dso_local i32 @train_cifar_distill(i8*, i8*) #1

declare dso_local i32 @test_cifar(i8*, i8*) #1

declare dso_local i32 @test_cifar_multi(i8*, i8*) #1

declare dso_local i32 @test_cifar_csv(i8*, i8*) #1

declare dso_local i32 @test_cifar_csvtrain(i8*, i8*) #1

declare dso_local i32 @eval_cifar_csv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
