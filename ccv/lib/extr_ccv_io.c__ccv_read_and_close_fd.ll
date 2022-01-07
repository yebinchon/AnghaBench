; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_io.c__ccv_read_and_close_fd.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_io.c__ccv_read_and_close_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCV_8U = common dso_local global i32 0, align 4
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\89PNG\0D\0A\1A\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CCVBINDM\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@CCV_IO_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32)* @_ccv_read_and_close_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_read_and_close_fd(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 3840
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @CCV_8U, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 3840
  %16 = ashr i32 %15, 8
  %17 = or i32 %13, %16
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ]
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fread(i8* %26, i32 1, i32 8, i32* %27)
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %30 = call i64 @memcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 128, i32* %6, align 4
  br label %51

33:                                               ; preds = %25
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %35 = call i64 @memcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 129, i32* %6, align 4
  br label %50

38:                                               ; preds = %33
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %40 = call i64 @memcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 130, i32* %6, align 4
  br label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %45 = call i64 @memcmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 131, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %43
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i32 @fseek(i32* %52, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %51, %19
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 255
  switch i32 %57, label %68 [
    i32 130, label %58
    i32 131, label %63
  ]

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32**, i32*** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @_ccv_read_bmp_fd(i32* %59, i32** %60, i32 %61)
  br label %68

63:                                               ; preds = %55
  %64 = load i32*, i32** %4, align 8
  %65 = load i32**, i32*** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @_ccv_read_binary_fd(i32* %64, i32** %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %55, %58
  %69 = load i32**, i32*** %5, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32**, i32*** %5, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ccv_make_matrix_immutable(i32* %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @fclose(i32* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @CCV_IO_FINAL, align 4
  ret i32 %85
}

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @_ccv_read_bmp_fd(i32*, i32**, i32) #1

declare dso_local i32 @_ccv_read_binary_fd(i32*, i32**, i32) #1

declare dso_local i32 @ccv_make_matrix_immutable(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
