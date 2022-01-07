; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_authenticate_root.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_authenticate_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"failed creating chunklist path\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"validating root against chunklist %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"reading chunklist\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to read chunklist\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"validating chunklist\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"missing or incorrect signature on chunklist\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to validate chunklist\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"successfully validated chunklist\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"validating root image against chunklist\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"failed to validate root image against chunklist (%d)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"root image authenticated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @authenticate_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authenticate_root(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i64 33554432, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @construct_chunklist_path(i8* %7, i8** %3)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %52

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @read_file(i8* %17, i8** %4, i64* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %52

23:                                               ; preds = %13
  %24 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @validate_chunklist(i8* %25, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %52

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %52

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %42 = load i8*, i8** %2, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @validate_root_image(i8* %42, i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %48)
  br label %52

50:                                               ; preds = %40
  %51 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47, %35, %30, %21, %11
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @kfree_safe(i8* %53)
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @kfree_safe(i8* %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @construct_chunklist_path(i8*, i8**) #1

declare dso_local i32 @AUTHPRNT(i8*, ...) #1

declare dso_local i32 @AUTHDBG(i8*, ...) #1

declare dso_local i32 @read_file(i8*, i8**, i64*) #1

declare dso_local i32 @validate_chunklist(i8*, i64) #1

declare dso_local i32 @validate_root_image(i8*, i8*) #1

declare dso_local i32 @kfree_safe(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
