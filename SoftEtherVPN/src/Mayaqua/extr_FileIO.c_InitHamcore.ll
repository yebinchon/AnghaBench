; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_InitHamcore.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_InitHamcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i8, i8, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@HAMCORE_HEADER_SIZE = common dso_local global i32 0, align 4
@CompareHamcore = common dso_local global i32 0, align 4
@hamcore = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 47, i32 37, i32 83, i32 0], align 4
@HAMCORE_FILE_NAME = common dso_local global i32 0, align 4
@HAMCORE_FILE_NAME_2 = common dso_local global i32 0, align 4
@hamcore_io = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i32] [i32 47, i32 98, i32 105, i32 110, i32 47, i32 37, i32 83, i32 0], align 4
@HAMCORE_HEADER_DATA = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitHamcore() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %1, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %2, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %3, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %4, align 8
  %23 = load i32, i32* @HAMCORE_HEADER_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %26 = load i32, i32* @CompareHamcore, align 4
  %27 = call i32 @NewList(i32 %26)
  store i32 %27, i32* @hamcore, align 4
  %28 = call i64 (...) @MayaquaIsMinimalMode()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %149

31:                                               ; preds = %0
  %32 = mul nuw i64 4, %21
  %33 = trunc i64 %32 to i32
  %34 = call i32 @GetExeDirW(i32* %22, i32 %33)
  %35 = mul nuw i64 4, %14
  %36 = trunc i64 %35 to i32
  %37 = ptrtoint i32* %22 to i32
  %38 = load i32, i32* @HAMCORE_FILE_NAME, align 4
  %39 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %16, i32 %36, i8* bitcast ([6 x i32]* @.str to i8*), i32 %37, i32 %38)
  %40 = mul nuw i64 4, %18
  %41 = trunc i64 %40 to i32
  %42 = ptrtoint i32* %22 to i32
  %43 = load i32, i32* @HAMCORE_FILE_NAME_2, align 4
  %44 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %19, i32 %41, i8* bitcast ([6 x i32]* @.str to i8*), i32 %42, i32 %43)
  %45 = call i32 @FileReplaceRenameW(i32* %19, i32* %16)
  %46 = call i32* @FileOpenW(i32* %16, i32 0)
  store i32* %46, i32** @hamcore_io, align 8
  %47 = load i32*, i32** @hamcore_io, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %31
  %50 = mul nuw i64 4, %14
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @HAMCORE_FILE_NAME, align 4
  %53 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %16, i32 %51, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 %52)
  %54 = call i32* @FileOpenW(i32* %16, i32 0)
  store i32* %54, i32** @hamcore_io, align 8
  %55 = load i32*, i32** @hamcore_io, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %149

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %31
  %60 = trunc i64 %24 to i32
  %61 = call i32 @Zero(i8* %25, i32 %60)
  %62 = load i32*, i32** @hamcore_io, align 8
  %63 = load i32, i32* @HAMCORE_HEADER_SIZE, align 4
  %64 = call i32 (i32*, ...) @FileRead(i32* %62, i8* %25, i32 %63)
  %65 = load i32, i32* @HAMCORE_HEADER_DATA, align 4
  %66 = load i32, i32* @HAMCORE_HEADER_SIZE, align 4
  %67 = call i64 @Cmp(i8* %25, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32*, i32** @hamcore_io, align 8
  %71 = call i32 @FileClose(i32* %70)
  store i32* null, i32** @hamcore_io, align 8
  store i32 1, i32* %8, align 4
  br label %149

72:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  %73 = load i32*, i32** @hamcore_io, align 8
  %74 = call i32 (i32*, ...) @FileRead(i32* %73, i64* %6, i64 8)
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @Endian32(i64 %75)
  store i64 %76, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %77

77:                                               ; preds = %145, %72
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %148

81:                                               ; preds = %77
  %82 = load i32, i32* @MAX_SIZE, align 4
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %9, align 8
  %85 = alloca i8, i64 %83, align 16
  store i64 %83, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %86 = load i32*, i32** @hamcore_io, align 8
  %87 = call i32 (i32*, ...) @FileRead(i32* %86, i64* %11, i64 8)
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @Endian32(i64 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp sge i64 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %92, %81
  %96 = trunc i64 %83 to i32
  %97 = call i32 @Zero(i8* %85, i32 %96)
  %98 = load i32*, i32** @hamcore_io, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 (i32*, ...) @FileRead(i32* %98, i8* %85, i64 %99)
  %101 = call %struct.TYPE_4__* @ZeroMalloc(i32 8)
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %12, align 8
  %102 = call i32 @CopyStr(i8* %85)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** @hamcore_io, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 (i32*, ...) @FileRead(i32* %105, i8* %107, i64 8)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 4
  %112 = sext i8 %111 to i64
  %113 = call i64 @Endian32(i64 %112)
  %114 = trunc i64 %113 to i8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i8 %114, i8* %116, align 4
  %117 = load i32*, i32** @hamcore_io, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = call i32 (i32*, ...) @FileRead(i32* %117, i8* %119, i64 8)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i64
  %125 = call i64 @Endian32(i64 %124)
  %126 = trunc i64 %125 to i8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i8 %126, i8* %128, align 1
  %129 = load i32*, i32** @hamcore_io, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = call i32 (i32*, ...) @FileRead(i32* %129, i8* %131, i64 8)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i8, i8* %134, align 2
  %136 = sext i8 %135 to i64
  %137 = call i64 @Endian32(i64 %136)
  %138 = trunc i64 %137 to i8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i8 %138, i8* %140, align 2
  %141 = load i32, i32* @hamcore, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %143 = call i32 @Insert(i32 %141, %struct.TYPE_4__* %142)
  %144 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %144)
  br label %145

145:                                              ; preds = %95
  %146 = load i64, i64* %5, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %5, align 8
  br label %77

148:                                              ; preds = %77
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %69, %57, %30
  %150 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %8, align 4
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  ret void

153:                                              ; preds = %149
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NewList(i32) #2

declare dso_local i64 @MayaquaIsMinimalMode(...) #2

declare dso_local i32 @GetExeDirW(i32*, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, ...) #2

declare dso_local i32 @FileReplaceRenameW(i32*, i32*) #2

declare dso_local i32* @FileOpenW(i32*, i32) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @FileRead(i32*, ...) #2

declare dso_local i64 @Cmp(i8*, i32, i32) #2

declare dso_local i32 @FileClose(i32*) #2

declare dso_local i64 @Endian32(i64) #2

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #2

declare dso_local i32 @CopyStr(i8*) #2

declare dso_local i32 @Insert(i32, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
