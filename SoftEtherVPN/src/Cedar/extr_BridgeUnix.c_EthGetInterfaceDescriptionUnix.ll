; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_EthGetInterfaceDescriptionUnix.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_EthGetInterfaceDescriptionUnix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"/etc/sysconfig/networking/devices/ifcfg-%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EthGetInterfaceDescriptionUnix(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %70

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @StrCpy(i8* %27, i32 %28, i8* %29)
  %31 = trunc i64 %17 to i32
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @Format(i8* %19, i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = call i32* @ReadDump(i8* %19)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %26
  %38 = load i32*, i32** %11, align 8
  %39 = call i8* @CfgReadNextLine(i32* %38)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @IsEmptyStr(i8* %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @StartWith(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, i32* @MAX_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %14, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %15, align 8
  %52 = trunc i64 %49 to i32
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 @StrCpy(i8* %51, i32 %52, i8* %54)
  %56 = call i32 @Trim(i8* %51)
  %57 = getelementptr inbounds i8, i8* %51, i64 60
  store i8 0, i8* %57, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @StrCpy(i8* %58, i32 %59, i8* %51)
  store i32 1, i32* %10, align 4
  %61 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %47, %43
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @Free(i8* %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @FreeBuf(i32* %66)
  br label %68

68:                                               ; preds = %63, %26
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %25
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #2

declare dso_local i32* @ReadDump(i8*) #2

declare dso_local i8* @CfgReadNextLine(i32*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i64 @StartWith(i8*, i8*) #2

declare dso_local i32 @Trim(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @FreeBuf(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
