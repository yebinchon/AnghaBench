; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_common.c_read_file.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_common.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %44

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @SEEK_END, align 4
  %15 = call i32 @fseek(i32* %13, i32 0, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @ftell(i32* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i32 @fseek(i32* %18, i32 0, i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i8* @xmalloc(i64 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %12
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @fread(i8* %27, i64 %28, i32 1, i32* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  store i8* null, i8** %2, align 8
  br label %44

37:                                               ; preds = %26, %12
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %2, align 8
  br label %44

44:                                               ; preds = %37, %32, %11
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
