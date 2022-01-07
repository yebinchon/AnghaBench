; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_win.c_Discord_RegisterW.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_win.c_Discord_RegisterW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 83, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 100, i32 105, i32 115, i32 99, i32 111, i32 114, i32 100, i32 45, i32 37, i32 83, i32 0], align 4
@.str.2 = private unnamed_addr constant [25 x i32] [i32 85, i32 82, i32 76, i32 58, i32 82, i32 117, i32 110, i32 32, i32 103, i32 97, i32 109, i32 101, i32 32, i32 37, i32 83, i32 32, i32 112, i32 114, i32 111, i32 116, i32 111, i32 99, i32 111, i32 108, i32 0], align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 67, i32 108, i32 97, i32 115, i32 115, i32 101, i32 115, i32 92, i32 37, i32 83, i32 0], align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Error creating key\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Error writing description\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i32] [i32 85, i32 82, i32 76, i32 32, i32 80, i32 114, i32 111, i32 116, i32 111, i32 99, i32 111, i32 108, i32 0], align 4
@.str.7 = private unnamed_addr constant [12 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 73, i32 99, i32 111, i32 110, i32 0], align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Error writing icon\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i32] [i32 115, i32 104, i32 101, i32 108, i32 108, i32 92, i32 111, i32 112, i32 101, i32 110, i32 92, i32 99, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 0], align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Error writing command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @Discord_RegisterW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Discord_RegisterW(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [256 x i64], align 16
  %9 = alloca [64 x i64], align 16
  %10 = alloca [128 x i64], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %7, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetModuleFileNameW(i32* null, i64* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i64*, i64** %4, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds [1024 x i64], [1024 x i64]* %14, i64 0, i64 0
  %33 = load i64*, i64** %4, align 8
  %34 = call i32 @StringCbPrintfW(i64* %32, i32 8192, i8* bitcast ([3 x i32]* @.str to i8*), i64* %33)
  br label %38

35:                                               ; preds = %26, %2
  %36 = getelementptr inbounds [1024 x i64], [1024 x i64]* %14, i64 0, i64 0
  %37 = call i32 @StringCbPrintfW(i64* %36, i32 8192, i8* bitcast ([3 x i32]* @.str to i8*), i64* %21)
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  %40 = load i64*, i64** %3, align 8
  %41 = call i32 @StringCbPrintfW(i64* %39, i32 512, i8* bitcast ([11 x i32]* @.str.1 to i8*), i64* %40)
  %42 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 0
  %43 = load i64*, i64** %3, align 8
  %44 = call i32 @StringCbPrintfW(i64* %42, i32 1024, i8* bitcast ([25 x i32]* @.str.2 to i8*), i64* %43)
  %45 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 0
  %46 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  %47 = call i32 @StringCbPrintfW(i64* %45, i32 2048, i8* bitcast ([20 x i32]* @.str.3 to i8*), i64* %46)
  %48 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %49 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 0
  %50 = load i32, i32* @KEY_WRITE, align 4
  %51 = call i64 @RegCreateKeyExW(i32 %48, i64* %49, i32 0, i32* null, i32 0, i32 %50, i32* null, i32* %15, i32* null)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %128

58:                                               ; preds = %38
  %59 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 0
  %60 = call i64 @lstrlenW(i64* %59)
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @REG_SZ, align 4
  %65 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 0
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i64 @RegSetKeyValueW(i32 %63, i8* null, i8* null, i32 %64, i64* %65, i32 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @FAILED(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %58
  %78 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 0
  %79 = call i64 @lstrlenW(i64* %78)
  %80 = trunc i64 %79 to i32
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @REG_SZ, align 4
  %84 = call i64 @RegSetKeyValueW(i32 %82, i8* null, i8* bitcast ([13 x i32]* @.str.6 to i8*), i32 %83, i64* %7, i32 8)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @FAILED(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %77
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @REG_SZ, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i64 @RegSetKeyValueW(i32 %92, i8* bitcast ([12 x i32]* @.str.7 to i8*), i8* null, i32 %93, i64* %21, i32 %98)
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @FAILED(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %91
  %107 = getelementptr inbounds [1024 x i64], [1024 x i64]* %14, i64 0, i64 0
  %108 = call i64 @lstrlenW(i64* %107)
  %109 = trunc i64 %108 to i32
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @REG_SZ, align 4
  %113 = getelementptr inbounds [1024 x i64], [1024 x i64]* %14, i64 0, i64 0
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @RegSetKeyValueW(i32 %111, i8* bitcast ([19 x i32]* @.str.9 to i8*), i8* null, i32 %112, i64* %113, i32 %117)
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @FAILED(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 @fprintf(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %106
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @RegCloseKey(i32 %126)
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %125, %55
  %129 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %17, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameW(i32*, i64*, i32) #2

declare dso_local i32 @StringCbPrintfW(i64*, i32, i8*, i64*) #2

declare dso_local i64 @RegCreateKeyExW(i32, i64*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @lstrlenW(i64*) #2

declare dso_local i64 @RegSetKeyValueW(i32, i8*, i8*, i32, i64*, i32) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
