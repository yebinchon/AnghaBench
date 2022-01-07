; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeCreateEmptyCompFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFile.c_vnodeCreateEmptyCompFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TSDB_FILENAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"failed to create head data file, vnode: %d, fileId: %d\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to create head file:%s, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_4__* null, align 8
@TSDB_FILE_HEADER_LEN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to create data file:%s, reason:%s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to create last file:%s, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCreateEmptyCompFile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @vnodeCreateHeadDataFile(i32 %24, i32 %25, i8* %17, i8* %20, i8* %23)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @dError(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

32:                                               ; preds = %2
  %33 = load i32, i32* @O_WRONLY, align 4
  %34 = load i32, i32* @O_CREAT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @O_TRUNC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @S_IRWXU, align 4
  %39 = load i32, i32* @S_IRWXG, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @S_IRWXO, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @open(i8* %17, i32 %37, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 (i8*, ...) @dError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %48)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

50:                                               ; preds = %32
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @vnodeCreateFileHeaderFd(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnodeList, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i8* @malloc(i32 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @memset(i8* %66, i32 0, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @taosCalcChecksumAppend(i32 0, i32* %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @TSDB_FILE_HEADER_LEN, align 4
  %75 = load i32, i32* @SEEK_SET, align 4
  %76 = call i32 @lseek(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @twrite(i32 %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* @O_WRONLY, align 4
  %86 = load i32, i32* @O_CREAT, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @O_TRUNC, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @S_IRWXU, align 4
  %91 = load i32, i32* @S_IRWXG, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @S_IRWXO, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @open(i8* %20, i32 %89, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %50
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @strerror(i32 %99)
  %101 = call i32 (i8*, ...) @dError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %100)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

102:                                              ; preds = %50
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @vnodeCreateFileHeaderFd(i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* @O_WRONLY, align 4
  %108 = load i32, i32* @O_CREAT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @O_TRUNC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @S_IRWXU, align 4
  %113 = load i32, i32* @S_IRWXG, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @S_IRWXO, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @open(i8* %23, i32 %111, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %102
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @strerror(i32 %121)
  %123 = call i32 (i8*, ...) @dError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 %122)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

124:                                              ; preds = %102
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @vnodeCreateFileHeaderFd(i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @close(i32 %127)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

129:                                              ; preds = %124, %120, %98, %46, %28
  %130 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vnodeCreateHeadDataFile(i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @dError(i8*, ...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @vnodeCreateFileHeaderFd(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @taosCalcChecksumAppend(i32, i32*, i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @twrite(i32, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
