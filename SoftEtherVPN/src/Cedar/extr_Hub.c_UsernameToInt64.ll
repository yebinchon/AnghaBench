; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_UsernameToInt64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_UsernameToInt64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_SIZE = common dso_local global i32 0, align 4
@MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@ACCESS_LIST_INCLUDED_PREFIX = common dso_local global i32 0, align 4
@ACCESS_LIST_EXCLUDED_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UsernameToInt64(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @SHA1_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MAX_USERNAME_LEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @IsEmptyStr(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %50

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %27 = call i64 @StartWith(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %32 = call i64 @StartWith(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24
  %35 = call i32 (...) @Rand64()
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %50

36:                                               ; preds = %29
  %37 = trunc i64 %15 to i32
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @MakeSimpleUsernameRemoveNtDomain(i8* %16, i32 %37, i8* %38)
  %40 = call i32 @Trim(i8* %16)
  %41 = call i32 @StrUpper(i8* %16)
  %42 = call i64 @StrLen(i8* %16)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %50

45:                                               ; preds = %36
  %46 = call i64 @StrLen(i8* %16)
  %47 = call i32 @Sha0(i32* %12, i8* %16, i64 %46)
  %48 = call i32 @Copy(i32* %6, i32* %12, i32 4)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %44, %34, %23
  %51 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i64 @StartWith(i8*, i32) #2

declare dso_local i32 @Rand64(...) #2

declare dso_local i32 @MakeSimpleUsernameRemoveNtDomain(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @Sha0(i32*, i8*, i64) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
