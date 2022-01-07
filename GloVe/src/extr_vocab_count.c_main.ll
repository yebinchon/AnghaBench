; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_vocab_count.c_main.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_vocab_count.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Simple tool to extract unigram counts\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Author: Jeffrey Pennington (jpennin@stanford.edu)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Usage options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09-verbose <int>\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\09\09Set verbosity: 0, 1, or 2 (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09-max-vocab <int>\0A\00", align 1
@.str.6 = private unnamed_addr constant [181 x i8] c"\09\09Upper bound on vocabulary size, i.e. keep the <int> most frequent words. The minimum frequency words are randomly sampled so as to obtain an even distribution over the alphabet.\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09-min-count <int>\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"\09\09Lower limit such that words which occur fewer than <int> times are discarded.\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\0AExample usage:\0A\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"./vocab_count -verbose 2 -max-vocab 100000 -min-count 10 < corpus.txt > vocab.txt\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"-max-vocab\00", align 1
@max_vocab = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"-min-count\00", align 1
@min_count = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @find_arg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %22, i8** %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* @verbose, align 4
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %35, i8** %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @atoll(i8* %45)
  store i8* %46, i8** @max_vocab, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %4, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %48, i8** %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @atoll(i8* %58)
  store i8* %59, i8** @min_count, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = call i32 (...) @get_counts()
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @find_arg(i8*, i32, i8**) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @atoll(i8*) #1

declare dso_local i32 @get_counts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
