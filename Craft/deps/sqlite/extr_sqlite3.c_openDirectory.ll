; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_openDirectory.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_openDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"OPENDIR %-3d %s\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN_BKPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @openDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openDirectory(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %9 = load i32, i32* @MAX_PATHNAME, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MAX_PATHNAME, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @sqlite3_snprintf(i32 %14, i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i64 @strlen(i8* %13)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %32, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %13, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 47
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %19

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %13, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @O_RDONLY, align 4
  %43 = load i32, i32* @O_BINARY, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @robust_open(i8* %13, i32 %44, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @OSTRACE(i8* %13)
  br label %51

51:                                               ; preds = %48, %38
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @SQLITE_OK, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @SQLITE_CANTOPEN_BKPT, align 4
  %61 = call i32 @unixLogError(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @robust_open(i8*, i32, i32) #2

declare dso_local i32 @OSTRACE(i8*) #2

declare dso_local i32 @unixLogError(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
