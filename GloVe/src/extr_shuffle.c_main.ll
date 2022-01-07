; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_shuffle.c_main.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_shuffle.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@file_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Tool to shuffle entries of word-word cooccurrence files\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Author: Jeffrey Pennington (jpennin@stanford.edu)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Usage options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09-verbose <int>\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\09\09Set verbosity: 0, 1, or 2 (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\09-memory <float>\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\09\09Soft limit for memory consumption, in GB; default 4.0\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09-array-size <int>\0A\00", align 1
@.str.8 = private unnamed_addr constant [174 x i8] c"\09\09Limit to length <int> the buffer which stores chunks of data to shuffle before writing to disk. \0A\09\09This value overrides that which is automatically produced by '-memory'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"\09-temp-file <file>\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"\09\09Filename, excluding extension, for temporary files; default temp_shuffle\0A\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"\0AExample usage: (assuming 'cooccurrence.bin' has been produced by 'coccur')\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"./shuffle -verbose 2 -memory 8.0 < cooccurrence.bin > cooccurrence.shuf.bin\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"-temp-file\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"temp_shuffle\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"-memory\00", align 1
@memory_limit = common dso_local global i64 0, align 8
@array_size = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"-array-size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 1, %8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @malloc(i32 %10)
  store i32 %11, i32* @file_head, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @printf(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.8, i64 0, i64 0))
  %24 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %25 = call i32 @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0))
  %26 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i64 0, i64 0))
  %27 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @find_arg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %29, i8** %30)
  store i32 %31, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* @verbose, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %42, i8** %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @file_head, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcpy(i32 %47, i8* %53)
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @file_head, align 4
  %57 = call i32 @strcpy(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @find_arg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %59, i8** %60)
  store i32 %61, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @atof(i8* %69)
  store i64 %70, i64* @memory_limit, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i64, i64* @memory_limit, align 8
  %73 = sitofp i64 %72 to double
  %74 = fmul double 0x3FEE666666666666, %73
  %75 = fmul double %74, 0x41D0000000000000
  %76 = fdiv double %75, 4.000000e+00
  %77 = fptosi double %76 to i64
  store i64 %77, i64* @array_size, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %78, i8** %79)
  store i32 %80, i32* %6, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @atoll(i8* %88)
  store i64 %89, i64* @array_size, align 8
  br label %90

90:                                               ; preds = %82, %71
  %91 = call i32 (...) @shuffle_by_chunks()
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @find_arg(i8*, i32, i8**) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @atof(i8*) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @shuffle_by_chunks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
