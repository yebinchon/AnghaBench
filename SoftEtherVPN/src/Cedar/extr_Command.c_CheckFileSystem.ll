; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckFileSystem.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckFileSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EnumDir Failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i32] [i32 47, i32 116, i32 109, i32 112, i32 47, i32 118, i32 112, i32 110, i32 95, i32 99, i32 104, i32 101, i32 99, i32 107, i32 101, i32 114, i32 95, i32 116, i32 109, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"FileCreate Failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"FileSize Failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"FileToBuf Failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckFileSystem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %22 = trunc i64 %16 to i32
  %23 = call i32 @GetExeName(i8* %18, i32 %22)
  %24 = trunc i64 %20 to i32
  %25 = call i32 @GetExeDir(i8* %21, i32 %24)
  %26 = call %struct.TYPE_9__* @EnumDir(i8* %21)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %46, %0
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @EndWith(i8* %18, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %49

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %27

49:                                               ; preds = %44, %27
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = call i32 @FreeDir(%struct.TYPE_9__* %50)
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @Print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %143

56:                                               ; preds = %49
  store i64 1234567, i64* %9, align 8
  store i8* bitcast ([21 x i32]* @.str.1 to i8*), i8** %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64* @Malloc(i64 %57)
  store i64* %58, i64** %10, align 8
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %69, %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = urem i64 %64, 256
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %59

72:                                               ; preds = %59
  %73 = load i8*, i8** %12, align 8
  %74 = call i32* @FileCreateW(i8* %73)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = call i32 @Print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i64*, i64** %10, align 8
  %80 = call i32 @Free(i64* %79)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %143

81:                                               ; preds = %72
  %82 = load i32*, i32** %11, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @FileWrite(i32* %82, i64* %83, i64 %84)
  %86 = load i64*, i64** %10, align 8
  %87 = call i32 @Free(i64* %86)
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @FileClose(i32* %88)
  %90 = load i8*, i8** %12, align 8
  %91 = call i32* @FileOpenW(i8* %90, i32 0)
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @FileSize(i32* %92)
  %94 = icmp ne i32 %93, 1234567
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = call i32 @Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @FileClose(i32* %97)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %143

99:                                               ; preds = %81
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @FileClose(i32* %100)
  %102 = load i8*, i8** %12, align 8
  %103 = call %struct.TYPE_10__* @ReadDumpW(i8* %102)
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %13, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %105 = icmp eq %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %143

107:                                              ; preds = %99
  store i64 0, i64* %7, align 8
  br label %108

108:                                              ; preds = %131, %107
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i64*
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* %7, align 8
  %124 = urem i64 %123, 256
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = call i32 @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = call i32 @FreeBuf(%struct.TYPE_10__* %128)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %143

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %7, align 8
  br label %108

134:                                              ; preds = %108
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %136 = call i32 @FreeBuf(%struct.TYPE_10__* %135)
  br label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @FileDeleteW(i8* %139)
  br label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %2, align 4
  store i32 %142, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %143

143:                                              ; preds = %141, %126, %106, %95, %77, %54
  %144 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %1, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetExeName(i8*, i32) #2

declare dso_local i32 @GetExeDir(i8*, i32) #2

declare dso_local %struct.TYPE_9__* @EnumDir(i8*) #2

declare dso_local i64 @EndWith(i8*, i32) #2

declare dso_local i32 @FreeDir(%struct.TYPE_9__*) #2

declare dso_local i32 @Print(i8*) #2

declare dso_local i64* @Malloc(i64) #2

declare dso_local i32* @FileCreateW(i8*) #2

declare dso_local i32 @Free(i64*) #2

declare dso_local i32 @FileWrite(i32*, i64*, i64) #2

declare dso_local i32 @FileClose(i32*) #2

declare dso_local i32* @FileOpenW(i8*, i32) #2

declare dso_local i32 @FileSize(i32*) #2

declare dso_local %struct.TYPE_10__* @ReadDumpW(i8*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #2

declare dso_local i32 @FileDeleteW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
