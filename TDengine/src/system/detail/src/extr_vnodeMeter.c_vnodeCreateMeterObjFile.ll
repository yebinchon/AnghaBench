; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeCreateMeterObjFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeCreateMeterObjFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TSDB_FILENAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s/vnode%d/meterObj.v%d\00", align 1
@tsDirectory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create vnode:%d file:%s\00", align 1
@vnodeList = common dso_local global %struct.TYPE_5__* null, align 8
@TSDB_FILE_HEADER_LEN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCreateMeterObjFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @TSDB_FILENAME_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** @tsDirectory, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i32 %15)
  %17 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %21, i8* %12)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

23:                                               ; preds = %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @vnodeCreateFileHeader(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = call i32 @vnodeUpdateVnodeFileHeader(i32* %26, %struct.TYPE_5__* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @TSDB_FILE_HEADER_LEN, align 4
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i32 @fseek(i32* %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @tfree(i64 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @calloc(i32 1, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %55, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @taosCalcChecksumAppend(i32 0, i32* %67, i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @fwrite(i64 %75, i32 %76, i32 1, i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @fclose(i32* %79)
  br label %81

81:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %20
  %83 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @dError(i8*, i32, i8*) #2

declare dso_local i32 @vnodeCreateFileHeader(i32*) #2

declare dso_local i32 @vnodeUpdateVnodeFileHeader(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @tfree(i64) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @taosCalcChecksumAppend(i32, i32*, i32) #2

declare dso_local i32 @fwrite(i64, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
