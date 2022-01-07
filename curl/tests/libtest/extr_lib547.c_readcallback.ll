; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib547.c_readcallback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib547.c_readcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"READ ALREADY DONE!\0A\00", align 1
@UPLOADTHIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"READ!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"READ NOT FINE!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @readcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readcallback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %40

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = mul i64 %23, %24
  %26 = load i32, i32* @UPLOADTHIS, align 4
  %27 = call i64 @strlen(i32 %26)
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @UPLOADTHIS, align 4
  %34 = call i32 @strcpy(i8* %32, i32 %33)
  %35 = load i32, i32* @UPLOADTHIS, align 4
  %36 = call i64 @strlen(i32 %35)
  store i64 %36, i64* %5, align 8
  br label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %37, %29, %16
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
