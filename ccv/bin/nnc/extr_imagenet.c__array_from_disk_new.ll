; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/extr_imagenet.c__array_from_disk_new.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/extr_imagenet.c__array_from_disk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"list doesn't exists\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @_array_from_disk_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_array_from_disk_new(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi i1 [ false, %2 ], [ true, %17 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  store i32 %30, i32* %6, align 4
  %31 = call i32* @ccv_array_new(i32 4, i32 64, i32 0)
  store i32* %31, i32** %7, align 8
  %32 = call i64 @malloc(i32 1024)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %54, %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @fscanf(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %8, i8* %36)
  %38 = load i64, i64* @EOF, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = call i64 @ccmalloc(i32 1024)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strncpy(i8* %46, i8* %47, i32 1024)
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 47, i8* %53, align 1
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 1024, %60
  %62 = call i32 @strncpy(i8* %58, i8* %59, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @ccv_categorized(i32 %66, i32 0, %struct.TYPE_3__* %11)
  store i32 %67, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @ccv_array_push(i32* %68, i32* %12)
  br label %34

70:                                               ; preds = %34
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i32*, i32** %7, align 8
  ret i32* %75
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @ccv_array_new(i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ccv_categorized(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ccv_array_push(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
