; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_ReadDir.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@FILENAME_MAX = common dso_local global i32 0, align 4
@dp = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@filename_pattern = common dso_local global i8* null, align 8
@dir_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" 1-01-01 12:00p\00", align 1
@TRUE = common dso_local global i32 0, align 4
@S_IWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*, i32*, i8*)* @Devices_ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Devices_ReadDir(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* @FILENAME_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  br label %22

22:                                               ; preds = %81, %71, %54, %45, %6
  %23 = load i32*, i32** @dp, align 8
  %24 = call %struct.dirent* @readdir(i32* %23)
  store %struct.dirent* %24, %struct.dirent** %14, align 8
  %25 = load %struct.dirent*, %struct.dirent** %14, align 8
  %26 = icmp eq %struct.dirent* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** @dp, align 8
  %29 = call i32 @closedir(i32* %28)
  store i32* null, i32** @dp, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %127

31:                                               ; preds = %22
  %32 = load %struct.dirent*, %struct.dirent** %14, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %73

39:                                               ; preds = %31
  %40 = load i8*, i8** @filename_pattern, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 46
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %22

46:                                               ; preds = %39
  %47 = load %struct.dirent*, %struct.dirent** %14, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %22

55:                                               ; preds = %46
  %56 = load %struct.dirent*, %struct.dirent** %14, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.dirent*, %struct.dirent** %14, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %22

72:                                               ; preds = %63, %55
  br label %73

73:                                               ; preds = %72, %31
  %74 = load i8*, i8** @filename_pattern, align 8
  %75 = load %struct.dirent*, %struct.dirent** %14, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @match(i8* %74, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %82

81:                                               ; preds = %73
  br label %22

82:                                               ; preds = %80
  %83 = load i8*, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.dirent*, %struct.dirent** %14, align 8
  %88 = getelementptr inbounds %struct.dirent, %struct.dirent* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcpy(i8* %86, i8* %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @dir_path, align 4
  %93 = load %struct.dirent*, %struct.dirent** %14, align 8
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @Util_catpath(i8* %21, i32 %92, i8* %95)
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strcpy(i8* %100, i8* %21)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @FALSE, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32*, i32** %12, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32*, i32** %12, align 8
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i8*, i8** %13, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %127

127:                                              ; preds = %125, %27
  %128 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i64 @match(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @Util_catpath(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
