; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_NameToGenFunc.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_NameToGenFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i8*, i32)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@GF_SIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@GF_SQUARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"triangle\00", align 1
@GF_TRIANGLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"sawtooth\00", align 1
@GF_SAWTOOTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"inversesawtooth\00", align 1
@GF_INVERSE_SAWTOOTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@GF_NOISE = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"WARNING: invalid genfunc name '%s' in shader '%s'\0A\00", align 1
@shader = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @NameToGenFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NameToGenFunc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @Q_stricmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @GF_SIN, align 4
  store i32 %8, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @GF_SQUARE, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @Q_stricmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @GF_TRIANGLE, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @Q_stricmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @GF_SAWTOOTH, align 4
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @GF_INVERSE_SAWTOOTH, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @Q_stricmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @GF_NOISE, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %46 = load i32, i32* @PRINT_WARNING, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  %49 = call i32 %45(i32 %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %47, i32 %48)
  %50 = load i32, i32* @GF_SIN, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %37, %31, %25, %19, %13, %7
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
