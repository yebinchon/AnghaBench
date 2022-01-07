; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_Assemble.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_Assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_OS_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"outputFilename: %s\0A\00", align 1
@outputFilename = common dso_local global i8* null, align 8
@numAsmFiles = common dso_local global i32 0, align 4
@asmFileNames = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".asm\00", align 1
@asmFiles = common dso_local global i8** null, align 8
@passNumber = common dso_local global i32 0, align 4
@segment = common dso_local global %struct.TYPE_2__* null, align 8
@DATASEG = common dso_local global i64 0, align 8
@LITSEG = common dso_local global i64 0, align 8
@BSSSEG = common dso_local global i64 0, align 8
@NUM_SEGMENTS = common dso_local global i32 0, align 4
@instructionCount = common dso_local global i64 0, align 8
@currentFileIndex = common dso_local global i32 0, align 4
@currentFileName = common dso_local global i8* null, align 8
@currentFileLine = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"pass %i: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"_stackStart\00", align 1
@stackSize = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"_stackEnd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Assemble() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @MAX_OS_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i8*, i8** @outputFilename, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %28, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @numAsmFiles, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i8**, i8*** @asmFileNames, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcpy(i8* %8, i8* %20)
  %22 = call i32 @DefaultExtension(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8**, i8*** @asmFiles, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = call i32 @LoadFile(i8* %8, i8** %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* @passNumber, align 4
  br label %32

32:                                               ; preds = %131, %31
  %33 = load i32, i32* @passNumber, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %134

35:                                               ; preds = %32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %37 = load i64, i64* @DATASEG, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %42 = load i64, i64* @LITSEG, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %46 = load i64, i64* @LITSEG, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %51 = load i64, i64* @LITSEG, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %49, %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %57 = load i64, i64* @BSSSEG, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %70, %35
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @NUM_SEGMENTS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %75 = load i64, i64* @DATASEG, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 4, i32* %77, align 4
  store i64 0, i64* @instructionCount, align 8
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %105, %73
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* @numAsmFiles, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32, i32* %1, align 4
  store i32 %83, i32* @currentFileIndex, align 4
  %84 = load i8**, i8*** @asmFileNames, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** @currentFileName, align 8
  store i64 0, i64* @currentFileLine, align 8
  %89 = load i32, i32* @passNumber, align 4
  %90 = load i8*, i8** @currentFileName, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %89, i8* %90)
  %92 = load i8**, i8*** @asmFiles, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %100, %82
  %98 = load i8*, i8** %4, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i8*, i8** %4, align 8
  %102 = call i8* @ExtractLine(i8* %101)
  store i8* %102, i8** %4, align 8
  %103 = call i32 (...) @AssembleLine()
  br label %97

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %78

108:                                              ; preds = %78
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @NUM_SEGMENTS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 3
  %121 = and i32 %120, -4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %109

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* @passNumber, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @passNumber, align 4
  br label %32

134:                                              ; preds = %32
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %136 = load i64, i64* @BSSSEG, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DefineSymbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @stackSize, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %143 = load i64, i64* @BSSSEG, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %141
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @segment, align 8
  %151 = load i64, i64* @BSSSEG, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @DefineSymbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = call i32 (...) @WriteVmFile()
  %157 = call i32 (...) @WriteMapFile()
  %158 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %158)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @DefaultExtension(i8*, i8*) #2

declare dso_local i32 @LoadFile(i8*, i8**) #2

declare dso_local i8* @ExtractLine(i8*) #2

declare dso_local i32 @AssembleLine(...) #2

declare dso_local i32 @DefineSymbol(i8*, i32) #2

declare dso_local i32 @WriteVmFile(...) #2

declare dso_local i32 @WriteMapFile(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
