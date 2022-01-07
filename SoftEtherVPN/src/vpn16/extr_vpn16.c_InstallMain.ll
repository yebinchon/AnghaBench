; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpn16/extr_vpn16.c_InstallMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpn16/extr_vpn16.c_InstallMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s\\inf\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s\\other\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s\\Neo_%s.inf\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s\\Neo_%s.sys\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"NeoAdapter_%s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Failed to open %s.\00", align 1
@OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to register %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Net\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InstallMain(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %81

37:                                               ; preds = %1
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = icmp sge i32 %43, 5
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i32 1, i32* %11, align 4
  br label %81

46:                                               ; preds = %41
  %47 = trunc i64 %13 to i32
  %48 = call i32 @GetSystemDirectory(i8* %15, i32 %47)
  %49 = call i32 @GetDirFromPath(i8* %18, i8* %15)
  %50 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  %51 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %52)
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %15, i8* %54)
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = call i64 @IsFile(i8* %27)
  %59 = load i64, i64* @FALSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = call i32 @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %27)
  store i32 1, i32* %11, align 4
  br label %81

63:                                               ; preds = %46
  %64 = call i64 @IsFile(i8* %33)
  %65 = load i64, i64* @FALSE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  store i32 1, i32* %11, align 4
  br label %81

69:                                               ; preds = %63
  %70 = call i64 @DiInstallClass(i8* %27, i32 0)
  %71 = load i64, i64* @OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @Print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %27)
  store i32 1, i32* %11, align 4
  br label %81

75:                                               ; preds = %69
  %76 = call i64 @InstallNDIDevice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %30, i32* null, i32* null)
  %77 = load i64, i64* @OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %11, align 4
  br label %81

80:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79, %73, %67, %61, %45, %36
  %82 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @GetSystemDirectory(i8*, i32) #2

declare dso_local i32 @GetDirFromPath(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i64 @IsFile(i8*) #2

declare dso_local i32 @Print(i8*, i8*) #2

declare dso_local i64 @DiInstallClass(i8*, i32) #2

declare dso_local i64 @InstallNDIDevice(i8*, i8*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
