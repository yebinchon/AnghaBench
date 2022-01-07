; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_construct_chunklist_path.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_construct_chunklist_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to allocate space for chunklist path\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".dmg\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"malformed root path\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"root path is too long\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c".chunklist\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"chunklist path is too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @construct_chunklist_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_chunklist_path(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* @MAXPATHLEN, align 8
  %9 = call i8* @kalloc(i64 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %5, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* @MAXPATHLEN, align 8
  %18 = call i64 @strnlen(i8* %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MAXPATHLEN, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22, %15
  %28 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %57

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* @MAXPATHLEN, align 8
  %34 = call i64 @strlcpy(i8* %31, i8* %32, i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @MAXPATHLEN, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %57

41:                                               ; preds = %30
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* @MAXPATHLEN, align 8
  %49 = call i64 @strlcat(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @MAXPATHLEN, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = call i32 @AUTHPRNT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %53, %38, %27, %12
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @kfree_safe(i8* %61)
  br label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = load i8**, i8*** %4, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i8* @kalloc(i64) #1

declare dso_local i32 @AUTHPRNT(i8*) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @kfree_safe(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
