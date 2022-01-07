; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViOpenFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViOpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32* }

@DEFAULT_USER_AGENT = common dso_local global i32 0, align 4
@INTERNET_OPEN_TYPE_PRECONFIG = common dso_local global i32 0, align 4
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@INTERNET_FLAG_RELOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@HTTP_QUERY_CONTENT_LENGTH = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_NUMBER = common dso_local global i32 0, align 4
@HTTP_QUERY_STATUS_CODE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ViOpenFile(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %120

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @ViIsInternetFile(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %20
  %25 = load i32, i32* @DEFAULT_USER_AGENT, align 4
  %26 = load i32, i32* @INTERNET_OPEN_TYPE_PRECONFIG, align 4
  %27 = call i32* @InternetOpenA(i32 %25, i32 %26, i32* null, i32* null, i32 0)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %120

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %35 = load i32, i32* @INTERNET_FLAG_RELOAD, align 4
  %36 = or i32 %34, %35
  %37 = call i32* @InternetOpenUrlA(i32* %32, i8* %33, i32* null, i32 0, i32 %36, i32 0)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @InternetCloseHandle(i32* %41)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %120

43:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @StartWith(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @FtpGetFileSize(i32* %48, i32* %9)
  store i32 %49, i32* %7, align 4
  br label %75

50:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @HTTP_QUERY_CONTENT_LENGTH, align 4
  %53 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @HttpQueryInfo(i32* %51, i32 %54, i32* %7, i32* %8, i32* null)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @HTTP_QUERY_STATUS_CODE, align 4
  %61 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @HttpQueryInfo(i32* %59, i32 %62, i32* %10, i32* %11, i32* null)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 100
  %68 = icmp ne i32 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %58
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @InternetCloseHandle(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @InternetCloseHandle(i32* %72)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %120

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %47
  %76 = call %struct.TYPE_4__* @ZeroMalloc(i32 32)
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %4, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %2, align 8
  br label %120

89:                                               ; preds = %20
  %90 = load i32, i32* @MAX_PATH, align 4
  %91 = zext i32 %90 to i64
  %92 = call i8* @llvm.stacksave()
  store i8* %92, i8** %13, align 8
  %93 = alloca i8, i64 %91, align 16
  store i64 %91, i64* %14, align 8
  %94 = load i32, i32* @MAX_PATH, align 4
  %95 = zext i32 %94 to i64
  %96 = alloca i8, i64 %95, align 16
  store i64 %95, i64* %15, align 8
  %97 = trunc i64 %95 to i32
  %98 = call i32 @GetExeDir(i8* %96, i32 %97)
  %99 = trunc i64 %91 to i32
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @ConbinePath(i8* %93, i32 %99, i8* %96, i8* %100)
  %102 = call i32* @FileOpen(i8* %93, i32 0)
  store i32* %102, i32** %12, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

106:                                              ; preds = %89
  %107 = call %struct.TYPE_4__* @ZeroMalloc(i32 32)
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %4, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @FileSize(i32* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %117, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %106, %105
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %120

120:                                              ; preds = %118, %75, %69, %40, %30, %19
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %121
}

declare dso_local i64 @ViIsInternetFile(i8*) #1

declare dso_local i32* @InternetOpenA(i32, i32, i32*, i32*, i32) #1

declare dso_local i32* @InternetOpenUrlA(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @InternetCloseHandle(i32*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @FtpGetFileSize(i32*, i32*) #1

declare dso_local i32 @HttpQueryInfo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetExeDir(i8*, i32) #1

declare dso_local i32 @ConbinePath(i8*, i32, i8*, i8*) #1

declare dso_local i32* @FileOpen(i8*, i32) #1

declare dso_local i32 @FileSize(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
