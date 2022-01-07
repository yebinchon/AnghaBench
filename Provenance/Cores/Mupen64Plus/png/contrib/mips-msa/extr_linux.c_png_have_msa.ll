; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/mips-msa/extr_linux.c_png_have_msa.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/mips-msa/extr_linux.c_png_have_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"msa\00", align 1
@png_have_msa.i = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @png_have_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_have_msa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @feof(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fgetc(i32* %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %25, %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 32
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* @png_have_msa.i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @png_have_msa.i, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 %30
  store i8 %27, i8* %31, align 1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @fgetc(i32* %32)
  store i32 %33, i32* %7, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %48

41:                                               ; preds = %34
  store i32 0, i32* @png_have_msa.i, align 4
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 0, i32 10)
  br label %13

44:                                               ; preds = %13
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @fclose(i32* %45)
  br label %47

47:                                               ; preds = %44, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
