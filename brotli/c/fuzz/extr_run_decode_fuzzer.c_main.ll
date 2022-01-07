; ModuleID = '/home/carl/AnghaBench/brotli/c/fuzz/extr_run_decode_fuzzer.c_main.c'
source_filename = "/home/carl/AnghaBench/brotli/c/fuzz/extr_run_decode_fuzzer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Exactly one argument is expected.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to open input file.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed read input file.\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %18
  store i64 1048576, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @fread(i8* %34, i32 1, i64 %35, i32* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @ferror(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @exit(i32 %46) #3
  unreachable

48:                                               ; preds = %30
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @malloc(i64 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @memcpy(i8* %52, i8* %53, i64 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @LLVMFuzzerTestOneInput(i8* %58, i64 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* @EXIT_SUCCESS, align 4
  %64 = call i32 @exit(i32 %63) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LLVMFuzzerTestOneInput(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
