; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_mkdir_p.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_runtime.c_mkdir_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i64 0, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkdir_p(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i64 0, i64* @errno, align 8
  %15 = load i64, i64* %4, align 8
  %16 = sub i64 %12, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @ENAMETOOLONG, align 8
  store i64 %19, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcpy(i8* %14, i8* %21)
  %23 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %47, %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* @S_IRWXU, align 4
  %36 = call i64 @mkdir(i8* %14, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EEXIST, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i8*, i8** %7, align 8
  store i8 47, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %24

50:                                               ; preds = %24
  %51 = load i32, i32* @S_IRWXU, align 4
  %52 = call i64 @mkdir(i8* %14, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EEXIST, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %50
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %58, %42, %18
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
