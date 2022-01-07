; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_matrix.c_csv_to_matrix.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_matrix.c_csv_to_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @csv_to_matrix(i8* %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @file_error(i8* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  store i32 0, i32* %6, align 4
  store i32 1024, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @calloc(i32 %17, i32 8)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32* %18, i32** %19, align 8
  br label %20

20:                                               ; preds = %48, %15
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @fgetl(i32* %21)
  store i8* %22, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @count_fields(i8* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @realloc(i32* %40, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %36, %32
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @parse_fields(i8* %49, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %20

62:                                               ; preds = %20
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i8* @realloc(i32* %64, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = bitcast %struct.TYPE_3__* %2 to { i64, i32* }*
  %75 = load { i64, i32* }, { i64, i32* }* %74, align 8
  ret { i64, i32* } %75
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @fgetl(i32*) #1

declare dso_local i32 @count_fields(i8*) #1

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @parse_fields(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
