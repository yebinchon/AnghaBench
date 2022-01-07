; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_ParseUnixEthDeviceName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_ParseUnixEthDeviceName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/net\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/net/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseUnixEthDeviceName(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %83

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @IsEmptyStr(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %83

25:                                               ; preds = %20
  %26 = call i32 @stat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.stat* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISDIR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %36

35:                                               ; preds = %29, %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @StrLen(i8* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp slt i32 %43, 48
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 57, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45, %36
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %83

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @StrCpy(i8* %63, i64 %64, i8* %65)
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %71, %73
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @StrCpy(i8* %70, i64 %74, i8* %75)
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %79, %80
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  store i8 0, i8* %82, align 1
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %62, %60, %24, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
