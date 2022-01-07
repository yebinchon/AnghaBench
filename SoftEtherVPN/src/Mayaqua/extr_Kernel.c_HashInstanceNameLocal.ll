; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_HashInstanceNameLocal.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_HashInstanceNameLocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"VPN-%s\00", align 1
@OSTYPE_WINDOWS_NT_4_TERMINAL_SERVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Local\\%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HashInstanceNameLocal(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [11 x i8], align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @SHA1_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  store i32 1, i32* %11, align 4
  br label %66

25:                                               ; preds = %21
  %26 = trunc i64 %13 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @StrCpy(i8* %15, i32 %26, i8* %27)
  %29 = call i32 @Trim(i8* %15)
  %30 = call i32 @StrUpper(i8* %15)
  %31 = call i32 @StrLen(i8* %15)
  %32 = call i32 @Sha0(i32* %18, i8* %15, i32 %31)
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %34 = call i32 @BinToStr(i8* %33, i32 11, i32* %18, i32 5)
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 10
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %39 = call i32 @Format(i8* %36, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call %struct.TYPE_2__* (...) @GetOsInfo()
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @OS_IS_WINDOWS_NT(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %25
  %46 = call %struct.TYPE_2__* (...) @GetOsInfo()
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @GET_KETA(i64 %48, i32 100)
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = call %struct.TYPE_2__* (...) @GetOsInfo()
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @OSTYPE_WINDOWS_NT_4_TERMINAL_SERVER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51, %45
  %58 = trunc i64 %13 to i32
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @StrCpy(i8* %15, i32 %58, i8* %59)
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @Format(i8* %61, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64, %25
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %24
  %67 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @Sha0(i32*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #2

declare dso_local i64 @OS_IS_WINDOWS_NT(i64) #2

declare dso_local %struct.TYPE_2__* @GetOsInfo(...) #2

declare dso_local i32 @GET_KETA(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
