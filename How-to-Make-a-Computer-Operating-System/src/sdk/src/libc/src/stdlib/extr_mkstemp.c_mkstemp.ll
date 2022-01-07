; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_mkstemp.c_mkstemp.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_mkstemp.c_mkstemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkstemp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = getelementptr inbounds i8, i8* %13, i64 -6
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @EINVAL, align 8
  store i64 %19, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %89

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 88
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @EINVAL, align 8
  store i64 %33, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %89

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %86, %38
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = call i32 (...) @random()
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = mul nsw i32 %46, 5
  %48 = lshr i32 %45, %47
  %49 = and i32 %48, 31
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 9
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 97
  %55 = sub nsw i32 %54, 10
  br label %59

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 48
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %55, %52 ], [ %58, %56 ]
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %40

69:                                               ; preds = %40
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* @O_CREAT, align 4
  %72 = load i32, i32* @O_RDWR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @O_EXCL, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @O_NOFOLLOW, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @open(i8* %70, i32 %77, i32 384)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %69
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EEXIST, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %69
  br label %87

86:                                               ; preds = %81
  br label %39

87:                                               ; preds = %85
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %32, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
