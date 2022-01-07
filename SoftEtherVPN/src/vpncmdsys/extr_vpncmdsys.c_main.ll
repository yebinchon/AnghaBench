; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpncmdsys/extr_vpncmdsys.c_main.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpncmdsys/extr_vpncmdsys.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"VPN Command Line Tools is not Installed.\0APlease reinstall programs.\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@VPNCMD_BOOTSTRAP_REG_KEYNAME = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@VPNCMD_BOOTSTRAP_REG_VALUENAME_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 34, i32 37, i32 83, i32 34, i32 32, i32 37, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ret_code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4096 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 16
  %23 = load i32, i32* @LC_ALL, align 4
  %24 = call i32 @setlocale(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = call i32* (...) @GetCommandLineW()
  store i32* %25, i32** %10, align 8
  br label %26

26:                                               ; preds = %45, %2
  br label %27

27:                                               ; preds = %26
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %41 [
    i32 34, label %30
    i32 32, label %36
    i32 9, label %36
    i32 0, label %36
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %35

34:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %41

36:                                               ; preds = %27, %27, %27
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %27, %40, %35
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %10, align 8
  br label %26

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %62, %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %10, align 8
  br label %62

61:                                               ; preds = %54
  br label %63

62:                                               ; preds = %58
  br label %49

63:                                               ; preds = %61
  %64 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %66 = load i32, i32* @VPNCMD_BOOTSTRAP_REG_KEYNAME, align 4
  %67 = call i64 @RegOpenKey(i32 %65, i32 %66, i32* %6)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load i32, i32* @REG_SZ, align 4
  store i32 %70, i32* %13, align 4
  store i32 4096, i32* %14, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @VPNCMD_BOOTSTRAP_REG_VALUENAME_PATH, align 4
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %74 = ptrtoint i8* %73 to i32
  %75 = call i64 @RegQueryValueEx(i32 %71, i32 %72, i32* null, i32* %13, i32 %74, i32* %14)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = load i32, i32* @MAX_SIZE, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %16, align 8
  %81 = alloca i32, i64 %79, align 16
  store i64 %79, i64* %17, align 8
  %82 = mul nuw i64 4, %79
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @swprintf(i32* %81, i32 %83, i8* bitcast ([8 x i32]* @.str.2 to i8*), i8* %84, i32* %85)
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  %88 = call i32 @ExecProcess(i8* %87, i32* %81)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %92

91:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %92, %69
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @RegCloseKey(i32 %95)
  br label %97

97:                                               ; preds = %94, %63
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, i32* @ret_code, align 4
  store i32 %103, i32* %3, align 4
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32* @GetCommandLineW(...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @RegOpenKey(i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueEx(i32, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @swprintf(i32*, i32, i8*, i8*, i32*) #2

declare dso_local i32 @ExecProcess(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
