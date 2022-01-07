; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_auth_version_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_auth_version_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libkern_path = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid UUID (sz = %lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@libkern_bundle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not find loaded libkern\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"UUID of running libkern does not match %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"loaded libkern UUID =  %s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"on-disk libkern UUID = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @auth_version_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_version_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %2, align 8
  store i64 4194304, i64* %3, align 8
  %9 = load i64, i64* @libkern_path, align 8
  %10 = call i32 @read_file(i64 %9, i8** %2, i64* %3)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %57

14:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32* @getuuidfromheader_safe(i8* %15, i64 %16, i64* %4)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %14
  %24 = load i64, i64* %4, align 8
  %25 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %1, align 4
  br label %57

27:                                               ; preds = %20
  %28 = load i32, i32* @libkern_bundle, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @OSKextGetUUIDForName(i32 %28, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @bcmp(i32 %36, i32* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i64, i64* @libkern_path, align 8
  %43 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @uuid_unparse(i32 %45, i64 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @uuid_unparse(i32 %48, i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %1, align 4
  br label %57

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %41, %33, %23, %13
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @kfree_safe(i8* %58)
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @read_file(i64, i8**, i64*) #1

declare dso_local i32* @getuuidfromheader_safe(i8*, i64, i64*) #1

declare dso_local i32 @AUTHPRNT(i8*, ...) #1

declare dso_local i32 @OSKextGetUUIDForName(i32, i32) #1

declare dso_local i64 @bcmp(i32, i32*, i64) #1

declare dso_local i32 @uuid_unparse(i32, i64) #1

declare dso_local i32 @kfree_safe(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
