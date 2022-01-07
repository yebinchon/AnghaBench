; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_SV_FOpenFileRead.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_SV_FOpenFileRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i8*, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8
@fsh = common dso_local global %struct.TYPE_10__* null, align 8
@fs_homepath = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fs_debug = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"FS_SV_FOpenFileRead (fs_homepath): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@fs_basepath = common dso_local global %struct.TYPE_14__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"FS_SV_FOpenFileRead (fs_basepath): %s\0A\00", align 1
@fs_cdpath = common dso_local global %struct.TYPE_13__* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"FS_SV_FOpenFileRead (fs_cdpath) : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_SV_FOpenFileRead(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @fs_searchpaths, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ERR_FATAL, align 4
  %12 = call i32 @Com_Error(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = call i64 (...) @FS_HandleForFile()
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** @qfalse, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  store i8* %15, i8** %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @Q_strncpyz(i32 %24, i8* %25, i32 4)
  %27 = call i32 (...) @S_ClearSoundBuffer()
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_homepath, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @FS_BuildOSPath(i32 %30, i8* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_debug, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %13
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** @qfalse, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %121, label %68

68:                                               ; preds = %46
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_homepath, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_basepath, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @Q_stricmp(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %68
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @fs_basepath, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @FS_BuildOSPath(i32 %80, i8* %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_debug, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %77
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @fopen(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %98, i8** %104, align 8
  %105 = load i8*, i8** @qfalse, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i8* %105, i8** %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %96
  store i64 0, i64* %7, align 8
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119, %68
  br label %121

121:                                              ; preds = %120, %46
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %173, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** @fs_cdpath, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = call i8* @FS_BuildOSPath(i32 %133, i8* %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %135, i8** %6, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  store i8 0, i8* %141, align 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_debug, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %130
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %130
  %150 = load i8*, i8** %6, align 8
  %151 = call i8* @fopen(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i8* %151, i8** %157, align 8
  %158 = load i8*, i8** @qfalse, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store i8* %158, i8** %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fsh, align 8
  %164 = load i64, i64* %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %149
  store i64 0, i64* %7, align 8
  br label %172

172:                                              ; preds = %171, %149
  br label %173

173:                                              ; preds = %172, %121
  %174 = load i64, i64* %7, align 8
  %175 = load i64*, i64** %5, align 8
  store i64 %174, i64* %175, align 8
  %176 = load i64, i64* %7, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i64, i64* %7, align 8
  %180 = call i32 @FS_filelength(i64 %179)
  store i32 %180, i32* %3, align 4
  br label %182

181:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %178
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @FS_HandleForFile(...) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @S_ClearSoundBuffer(...) #1

declare dso_local i8* @FS_BuildOSPath(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i64 @Q_stricmp(i32, i32) #1

declare dso_local i32 @FS_filelength(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
