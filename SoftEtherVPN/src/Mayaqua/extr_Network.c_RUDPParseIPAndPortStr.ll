; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPParseIPAndPortStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPParseIPAndPortStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IP=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c",PORT=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RUDPParseIPAndPortStr(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64*, i64** %9, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %72

32:                                               ; preds = %28
  %33 = trunc i64 %17 to i32
  %34 = call i32 @Zero(i8* %19, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %17, 1
  %38 = trunc i64 %37 to i32
  %39 = call i32 @MIN(i64 %36, i32 %38)
  %40 = call i32 @Copy(i8* %19, i8* %35, i32 %39)
  %41 = call i32 @StartWith(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %72

44:                                               ; preds = %32
  %45 = call i64 @SearchStrEx(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @INFINITE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i8, i8* %19, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %49, %44
  %53 = trunc i64 %21 to i32
  %54 = getelementptr inbounds i8, i8* %19, i64 3
  %55 = call i32 @StrCpy(i8* %22, i32 %53, i8* %54)
  %56 = call i64 @SearchStrEx(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @INFINITE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %72

61:                                               ; preds = %52
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i8, i8* %22, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %22, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 6
  store i8* %66, i8** %14, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @StrToIP(i32* %67, i8* %22)
  %69 = load i8*, i8** %14, align 8
  %70 = call i64 @ToInt(i8* %69)
  %71 = load i64*, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %72

72:                                               ; preds = %61, %60, %43, %31
  %73 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @Copy(i8*, i8*, i32) #2

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local i32 @StartWith(i8*, i8*) #2

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrToIP(i32*, i8*) #2

declare dso_local i64 @ToInt(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
