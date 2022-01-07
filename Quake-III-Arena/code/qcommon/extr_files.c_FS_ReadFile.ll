; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_ReadFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_ReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"FS_ReadFile with empty name\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@qtrue = common dso_local global i64 0, align 8
@com_journal = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Loading %s from journal file.\0A\00", align 1
@com_journalDataFile = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Read from journalDataFile failed\00", align 1
@fs_loadCount = common dso_local global i32 0, align 4
@fs_loadStack = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Writing zero for %s to journal file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Writing len for %s to journal file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Writing %s to journal file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_ReadFile(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @fs_searchpaths, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ERR_FATAL, align 4
  %15 = call i32 @Com_Error(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* @ERR_FATAL, align 4
  %26 = call i32 @Com_Error(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  store i32* null, i32** %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  %32 = load i64, i64* @qtrue, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %95

35:                                               ; preds = %31
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %95

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load i64, i64* @com_journalDataFile, align 8
  %44 = call i32 @FS_Read(i32* %9, i32 4, i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 4
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %51, %48
  store i32 -1, i32* %3, align 4
  br label %197

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i8**, i8*** %5, align 8
  %59 = icmp eq i8** %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %197

61:                                               ; preds = %57
  %62 = load i8**, i8*** %5, align 8
  store i8* null, i8** %62, align 8
  store i32 -1, i32* %3, align 4
  br label %197

63:                                               ; preds = %54
  %64 = load i8**, i8*** %5, align 8
  %65 = icmp eq i8** %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %197

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32* @Hunk_AllocateTempMemory(i32 %70)
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i8**, i8*** %5, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i64, i64* @com_journalDataFile, align 8
  %78 = call i32 @FS_Read(i32* %75, i32 %76, i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i32, i32* @ERR_FATAL, align 4
  %84 = call i32 @Com_Error(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %68
  %86 = load i32, i32* @fs_loadCount, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @fs_loadCount, align 4
  %88 = load i32, i32* @fs_loadStack, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @fs_loadStack, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %197

95:                                               ; preds = %35, %31
  br label %98

96:                                               ; preds = %27
  %97 = load i64, i64* @qfalse, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* @qfalse, align 8
  %101 = call i32 @FS_FOpenFileRead(i8* %99, i64* %6, i64 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load i8**, i8*** %5, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8**, i8*** %5, align 8
  store i8* null, i8** %108, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %114 = icmp ne %struct.TYPE_2__* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %121)
  store i32 0, i32* %9, align 4
  %123 = load i64, i64* @com_journalDataFile, align 8
  %124 = call i32 @FS_Write(i32* %9, i32 4, i64 %123)
  %125 = load i64, i64* @com_journalDataFile, align 8
  %126 = call i32 @FS_Flush(i64 %125)
  br label %127

127:                                              ; preds = %120, %115, %112, %109
  store i32 -1, i32* %3, align 4
  br label %197

128:                                              ; preds = %98
  %129 = load i8**, i8*** %5, align 8
  %130 = icmp ne i8** %129, null
  br i1 %130, label %153, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %136 = icmp ne %struct.TYPE_2__* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %143)
  %145 = load i64, i64* @com_journalDataFile, align 8
  %146 = call i32 @FS_Write(i32* %9, i32 4, i64 %145)
  %147 = load i64, i64* @com_journalDataFile, align 8
  %148 = call i32 @FS_Flush(i64 %147)
  br label %149

149:                                              ; preds = %142, %137, %134, %131
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @FS_FCloseFile(i64 %150)
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %197

153:                                              ; preds = %128
  %154 = load i32, i32* @fs_loadCount, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @fs_loadCount, align 4
  %156 = load i32, i32* @fs_loadStack, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @fs_loadStack, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32* @Hunk_AllocateTempMemory(i32 %159)
  store i32* %160, i32** %7, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i8**, i8*** %5, align 8
  store i8* %162, i8** %163, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @FS_Read(i32* %164, i32 %165, i64 %166)
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 0, i32* %171, align 4
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @FS_FCloseFile(i64 %172)
  %174 = load i64, i64* %8, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %153
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %178 = icmp ne %struct.TYPE_2__* %177, null
  br i1 %178, label %179, label %195

179:                                              ; preds = %176
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_journal, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %185)
  %187 = load i64, i64* @com_journalDataFile, align 8
  %188 = call i32 @FS_Write(i32* %9, i32 4, i64 %187)
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i64, i64* @com_journalDataFile, align 8
  %192 = call i32 @FS_Write(i32* %189, i32 %190, i64 %191)
  %193 = load i64, i64* @com_journalDataFile, align 8
  %194 = call i32 @FS_Flush(i64 %193)
  br label %195

195:                                              ; preds = %184, %179, %176, %153
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %149, %127, %85, %66, %61, %60, %53
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i8*) #1

declare dso_local i32 @FS_Read(i32*, i32, i64) #1

declare dso_local i32* @Hunk_AllocateTempMemory(i32) #1

declare dso_local i32 @FS_FOpenFileRead(i8*, i64*, i64) #1

declare dso_local i32 @FS_Write(i32*, i32, i64) #1

declare dso_local i32 @FS_Flush(i64) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
