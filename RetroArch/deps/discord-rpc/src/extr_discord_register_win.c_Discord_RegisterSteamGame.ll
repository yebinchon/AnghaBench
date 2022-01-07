; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_win.c_Discord_RegisterSteamGame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_win.c_Discord_RegisterSteamGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 86, i32 97, i32 108, i32 118, i32 101, i32 92, i32 83, i32 116, i32 101, i32 97, i32 109, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error opening Steam key\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i32] [i32 83, i32 116, i32 101, i32 97, i32 109, i32 69, i32 120, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error reading SteamExe key\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i32] [i32 34, i32 37, i32 115, i32 34, i32 32, i32 115, i32 116, i32 101, i32 97, i32 109, i32 58, i32 47, i32 47, i32 114, i32 117, i32 110, i32 103, i32 97, i32 109, i32 101, i32 105, i32 100, i32 47, i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Discord_RegisterSteamGame(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i32], align 16
  %12 = alloca [32 x i32], align 16
  %13 = alloca [32 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @CP_UTF8, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %23 = call i32 @MultiByteToWideChar(i32 %20, i32 0, i8* %21, i32 -1, i32* %22, i32 32)
  %24 = load i32, i32* @CP_UTF8, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %27 = call i32 @MultiByteToWideChar(i32 %24, i32 0, i8* %25, i32 -1, i32* %26, i32 32)
  %28 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %29 = load i32, i32* @KEY_READ, align 4
  %30 = call i64 @RegOpenKeyExW(i32 %28, i8* bitcast ([21 x i32]* @.str to i8*), i32 0, i32 %29, i32* %8)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %83

37:                                               ; preds = %2
  %38 = mul nuw i64 4, %17
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @RegQueryValueExW(i32 %40, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32* null, i32* null, i32* %19, i32* %6)
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @RegCloseKey(i32 %42)
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %37
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %83

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %73, %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %19, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 47
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %19, i64 %70
  store i32 92, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %58

76:                                               ; preds = %58
  %77 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %79 = call i32 @StringCbPrintfW(i32* %77, i32 4096, i8* bitcast ([26 x i32]* @.str.4 to i8*), i32* %19, i32* %78)
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %81 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 0
  %82 = call i32 @Discord_RegisterW(i32* %80, i32* %81)
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %76, %50, %34
  %84 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %15, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @StringCbPrintfW(i32*, i32, i8*, i32*, i32*) #2

declare dso_local i32 @Discord_RegisterW(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
