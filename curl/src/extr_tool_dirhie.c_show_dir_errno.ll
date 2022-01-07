; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_dirhie.c_show_dir_errno.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_dirhie.c_show_dir_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"You don't have permission to create %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"The directory name %s is too long.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s resides on a read-only file system.\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"No space left on the file system that will contain the directory %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Cannot create directory %s because you exceeded your quota.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error creating directory %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @show_dir_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dir_errno(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @errno, align 4
  switch i32 %5, label %26 [
    i32 132, label %6
    i32 130, label %10
    i32 128, label %14
    i32 129, label %18
    i32 131, label %22
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @fprintf(i32* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %30

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %30

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @fprintf(i32* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %30

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  br label %30

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  br label %30

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
