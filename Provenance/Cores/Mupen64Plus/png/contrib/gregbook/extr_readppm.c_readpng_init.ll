; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readppm.c_readpng_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readppm.c_readpng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readpng_init.ppmline = internal global [256 x i8] zeroinitializer, align 16
@saved_infile = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ERROR:  not a PPM file\0A\00", align 1
@color_type = common dso_local global i32 0, align 4
@channels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ERROR:  maxval = %d\0A\00", align 1
@bit_depth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readpng_init(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** @saved_infile, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), i32 256, i32* %10)
  %12 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), align 16
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 80
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 1), align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 54
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %64

22:                                               ; preds = %15
  %23 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 1), align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 54
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 2, i32* @color_type, align 4
  store i32 3, i32* @channels, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 1), align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 56
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 6, i32* @color_type, align 4
  store i32 4, i32* @channels, align 4
  br label %33

32:                                               ; preds = %27
  store i32 0, i32* @color_type, align 4
  store i32 1, i32* @channels, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %38, %34
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), i32 256, i32* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %35, label %42

42:                                               ; preds = %38
  %43 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* @width, i32* @height)
  br label %44

44:                                               ; preds = %47, %42
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), i32 256, i32* %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), align 16
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 35
  br i1 %50, label %44, label %51

51:                                               ; preds = %47
  %52 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @readpng_init.ppmline, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 255
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i32 2, i32* %4, align 4
  br label %64

59:                                               ; preds = %51
  store i32 8, i32* @bit_depth, align 4
  %60 = load i32, i32* @width, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @height, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %55, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
