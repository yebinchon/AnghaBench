; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_GetModList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_GetModList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@MAX_OSPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@fs_homepath = common dso_local global %struct.TYPE_4__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@fs_basepath = common dso_local global %struct.TYPE_6__* null, align 8
@fs_cdpath = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"baseq3\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"/description.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_GetModList(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8** null, i8*** %13, align 8
  store i8** null, i8*** %14, align 8
  %26 = load i32, i32* @MAX_OSPATH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  store i8** null, i8*** %21, align 8
  store i8** null, i8*** %22, align 8
  store i8** null, i8*** %23, align 8
  %30 = load i64, i64* @qfalse, align 8
  store i64 %30, i64* %24, align 8
  %31 = load i8*, i8** %3, align 8
  store i8 0, i8* %31, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fs_homepath, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* @qtrue, align 8
  %36 = call i8** @Sys_ListFiles(i8* %34, i8* null, i32* null, i32* %20, i64 %35)
  store i8** %36, i8*** %21, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs_basepath, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* @qtrue, align 8
  %41 = call i8** @Sys_ListFiles(i8* %39, i8* null, i32* null, i32* %20, i64 %40)
  store i8** %41, i8*** %22, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs_cdpath, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* @qtrue, align 8
  %46 = call i8** @Sys_ListFiles(i8* %44, i8* null, i32* null, i32* %20, i64 %45)
  store i8** %46, i8*** %23, align 8
  %47 = load i8**, i8*** %21, align 8
  %48 = load i8**, i8*** %22, align 8
  %49 = load i8**, i8*** %23, align 8
  %50 = call i8** @Sys_ConcatenateFileLists(i8** %47, i8** %48, i8** %49)
  store i8** %50, i8*** %13, align 8
  %51 = load i8**, i8*** %13, align 8
  %52 = call i32 @Sys_CountFileList(i8** %51)
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %210, %2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %213

57:                                               ; preds = %53
  %58 = load i8**, i8*** %13, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %57
  %66 = load i64, i64* @qfalse, align 8
  store i64 %66, i64* %24, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %83, %65
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i8**, i8*** %13, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i64 @Q_stricmp(i8* %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i64, i64* @qtrue, align 8
  store i64 %81, i64* %24, align 8
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %67

86:                                               ; preds = %80, %67
  br label %87

87:                                               ; preds = %86, %57
  %88 = load i64, i64* %24, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %210

91:                                               ; preds = %87
  %92 = load i8*, i8** %15, align 8
  %93 = call i64 @Q_stricmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %209

95:                                               ; preds = %91
  %96 = load i8*, i8** %15, align 8
  %97 = call i64 @Q_stricmpn(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %209

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs_basepath, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i8* @FS_BuildOSPath(i8* %102, i8* %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %104, i8** %16, align 8
  store i32 0, i32* %10, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = load i64, i64* @qfalse, align 8
  %107 = call i8** @Sys_ListFiles(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %10, i64 %106)
  store i8** %107, i8*** %14, align 8
  %108 = load i8**, i8*** %14, align 8
  %109 = call i32 @Sys_FreeFileList(i8** %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %99
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs_cdpath, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = call i8* @FS_BuildOSPath(i8* %115, i8* %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %117, i8** %16, align 8
  store i32 0, i32* %10, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i64, i64* @qfalse, align 8
  %120 = call i8** @Sys_ListFiles(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %10, i64 %119)
  store i8** %120, i8*** %14, align 8
  %121 = load i8**, i8*** %14, align 8
  %122 = call i32 @Sys_FreeFileList(i8** %121)
  br label %123

123:                                              ; preds = %112, %99
  %124 = load i32, i32* %10, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fs_homepath, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = call i8* @FS_BuildOSPath(i8* %129, i8* %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %131, i8** %16, align 8
  store i32 0, i32* %10, align 4
  %132 = load i8*, i8** %16, align 8
  %133 = load i64, i64* @qfalse, align 8
  %134 = call i8** @Sys_ListFiles(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %10, i64 %133)
  store i8** %134, i8*** %14, align 8
  %135 = load i8**, i8*** %14, align 8
  %136 = call i32 @Sys_FreeFileList(i8** %135)
  br label %137

137:                                              ; preds = %126, %123
  %138 = load i32, i32* %10, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %208

140:                                              ; preds = %137
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  %144 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %144, align 16
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @strcpy(i8* %29, i8* %145)
  %147 = call i32 @strcat(i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %148 = call i32 @FS_SV_FOpenFileRead(i8* %29, i64* %19)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %140
  %152 = load i64, i64* %19, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load i64, i64* %19, align 8
  %156 = call i32* @FS_FileForHandle(i64 %155)
  store i32* %156, i32** %25, align 8
  %157 = trunc i64 %27 to i32
  %158 = call i32 @Com_Memset(i8* %29, i32 0, i32 %157)
  %159 = load i32*, i32** %25, align 8
  %160 = call i32 @fread(i8* %29, i32 1, i32 48, i32* %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %29, i64 %165
  store i8 0, i8* %166, align 1
  br label %167

167:                                              ; preds = %163, %154
  %168 = load i64, i64* %19, align 8
  %169 = call i32 @FS_FCloseFile(i64 %168)
  br label %173

170:                                              ; preds = %151, %140
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @strcpy(i8* %29, i8* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = call i32 @strlen(i8* %29)
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %176, %177
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %179, %180
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %173
  %186 = load i8*, i8** %3, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = call i32 @strcpy(i8* %186, i8* %187)
  %189 = load i32, i32* %9, align 4
  %190 = load i8*, i8** %3, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %3, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = call i32 @strcpy(i8* %193, i8* %29)
  %195 = load i32, i32* %12, align 4
  %196 = load i8*, i8** %3, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8* %198, i8** %3, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %207

206:                                              ; preds = %173
  br label %213

207:                                              ; preds = %185
  br label %208

208:                                              ; preds = %207, %137
  br label %209

209:                                              ; preds = %208, %95, %91
  br label %210

210:                                              ; preds = %209, %90
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %53

213:                                              ; preds = %206, %53
  %214 = load i8**, i8*** %13, align 8
  %215 = call i32 @Sys_FreeFileList(i8** %214)
  %216 = load i32, i32* %5, align 4
  %217 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %217)
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @Sys_ListFiles(i8*, i8*, i32*, i32*, i64) #2

declare dso_local i8** @Sys_ConcatenateFileLists(i8**, i8**, i8**) #2

declare dso_local i32 @Sys_CountFileList(i8**) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i8* @FS_BuildOSPath(i8*, i8*, i8*) #2

declare dso_local i32 @Sys_FreeFileList(i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @FS_SV_FOpenFileRead(i8*, i64*) #2

declare dso_local i32* @FS_FileForHandle(i64) #2

declare dso_local i32 @Com_Memset(i8*, i32, i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @FS_FCloseFile(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
