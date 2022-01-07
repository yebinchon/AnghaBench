; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_openDirectory.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_openDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"OPENDIR %-3d %s\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN_BKPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"openDirectory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @openDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openDirectory(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %7, align 4
  %11 = load i32, i32* @MAX_PATHNAME, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_PATHNAME, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @sqlite3_snprintf(i32 %16, i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i64 @strlen(i8* %15)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %15, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 47
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %21

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %15, i64 %42
  store i8 0, i8* %43, align 1
  br label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, i8* %15, i64 0
  %46 = load i8, i8* %45, align 16
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 46, i8* %50, align 16
  br label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %40
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = load i32, i32* @O_BINARY, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @robust_open(i8* %15, i32 %56, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @OSTRACE(i8* %15)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @SQLITE_OK, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @SQLITE_CANTOPEN_BKPT, align 4
  %72 = call i32 @unixLogError(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
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
