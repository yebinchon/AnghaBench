; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_computekids.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_computekids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@NONTERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"\09\09kids[%d] = %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LEFT_CHILD(%s)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"RIGHT_CHILD(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i8*, i32*)* @computekids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @computekids(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NONTERM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %7, align 8
  br label %59

30:                                               ; preds = %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @stringf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @computekids(%struct.TYPE_4__* %38, i8* %40, i8* %41, i32* %42)
  store i8* %43, i8** %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @stringf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i8* @computekids(%struct.TYPE_4__* %51, i8* %53, i8* %54, i32* %55)
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %48, %35
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i8*, i8** %7, align 8
  ret i8* %60
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @stringf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
