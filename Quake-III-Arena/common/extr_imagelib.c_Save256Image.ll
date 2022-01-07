; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_Save256Image.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_Save256Image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"lbm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pcx\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s doesn't have a known image extension\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Save256Image(i8* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %14 = call i32 @ExtractFileExtension(i8* %12, i8* %13)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %16 = call i32 @Q_stricmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @WriteLBMfile(i8* %19, i32* %20, i32 %21, i32 %22, i32* %23)
  br label %40

25:                                               ; preds = %5
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %27 = call i32 @Q_stricmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @WritePCXfile(i8* %30, i32* %31, i32 %32, i32 %33, i32* %34)
  br label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @ExtractFileExtension(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @WriteLBMfile(i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @WritePCXfile(i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @Error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
