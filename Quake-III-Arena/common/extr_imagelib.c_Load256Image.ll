; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_Load256Image.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_Load256Image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"lbm\00", align 1
@bmhd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pcx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s doesn't have a known image extension\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Load256Image(i8* %0, i32** %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [128 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %14 = call i32 @ExtractFileExtension(i8* %12, i8* %13)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %16 = call i32 @Q_stricmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %6, align 8
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32**, i32*** %8, align 8
  %22 = call i32 @LoadLBM(i8* %19, i32** %20, i32** %21)
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmhd, i32 0, i32 0), align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmhd, i32 0, i32 1), align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %62

35:                                               ; preds = %5
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %37 = call i32 @Q_stricmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32**, i32*** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @LoadPCX(i8* %40, i32** %41, i32** %42, i32* %43, i32* %44)
  br label %61

46:                                               ; preds = %35
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %48 = call i32 @Q_stricmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @LoadBMP(i8* %51, i32** %52, i32** %53, i32* %54, i32* %55)
  br label %60

57:                                               ; preds = %46
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %34
  ret void
}

declare dso_local i32 @ExtractFileExtension(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @LoadLBM(i8*, i32**, i32**) #1

declare dso_local i32 @LoadPCX(i8*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @LoadBMP(i8*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @Error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
