; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_option_list.c_read_data_cfg.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_option_list.c_read_data_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Config file error line %d, could parse: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_data_cfg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @file_error(i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  store i32 0, i32* %5, align 4
  %15 = call i32* (...) @make_list()
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %45, %14
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @fgetl(i32* %17)
  store i8* %18, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strip(i8* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 35, label %29
    i32 59, label %29
  ]

29:                                               ; preds = %20, %20, %20
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @free(i8* %30)
  br label %45

32:                                               ; preds = %20
  %33 = load i8*, i8** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @read_option(i8* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44, %29
  br label %16

46:                                               ; preds = %16
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32*, i32** %6, align 8
  ret i32* %49
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i32* @make_list(...) #1

declare dso_local i8* @fgetl(i32*) #1

declare dso_local i32 @strip(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read_option(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
