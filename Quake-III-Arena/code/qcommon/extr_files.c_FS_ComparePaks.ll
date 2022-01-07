; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_ComparePaks.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_ComparePaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }

@fs_numServerReferencedPaks = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@fs_serverReferencedPakNames = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"baseq3\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"missionpack\00", align 1
@fs_searchpaths = common dso_local global %struct.TYPE_5__* null, align 8
@fs_serverReferencedPaks = common dso_local global i64* null, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.pk3\00", align 1
@MAX_ZPATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%s.%08x.pk3\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c" (local file exists with wrong checksum)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_ComparePaks(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @fs_numServerReferencedPaks, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @qfalse, align 8
  store i64 %17, i64* %4, align 8
  br label %195

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  store i8 0, i8* %19, align 1
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %184, %18
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @fs_numServerReferencedPaks, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %187

24:                                               ; preds = %20
  %25 = load i64, i64* @qfalse, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @qfalse, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @FS_idPak(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %24
  %35 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @FS_idPak(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %24
  br label %184

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs_searchpaths, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %8, align 8
  br label %45

45:                                               ; preds = %68, %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** @fs_serverReferencedPaks, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i64, i64* @qtrue, align 8
  store i64 %66, i64* %9, align 8
  br label %72

67:                                               ; preds = %53, %48
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %8, align 8
  br label %45

72:                                               ; preds = %65, %45
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %183, label %75

75:                                               ; preds = %72
  %76 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %183

82:                                               ; preds = %75
  %83 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %183

91:                                               ; preds = %82
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %154

94:                                               ; preds = %91
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @Q_strcat(i8* %95, i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @Q_strcat(i8* %98, i32 %99, i8* %104)
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @Q_strcat(i8* %106, i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @Q_strcat(i8* %109, i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  %118 = call i64 @FS_SV_FileExists(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %94
  %121 = load i32, i32* @MAX_ZPATH, align 4
  %122 = zext i32 %121 to i64
  %123 = call i8* @llvm.stacksave()
  store i8* %123, i8** %12, align 8
  %124 = alloca i8, i64 %122, align 16
  store i64 %122, i64* %13, align 8
  %125 = trunc i64 %122 to i32
  %126 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i64*, i64** @fs_serverReferencedPaks, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @Com_sprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %130, i64 %135)
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @Q_strcat(i8* %137, i32 %138, i8* %124)
  %140 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %140)
  br label %153

141:                                              ; preds = %94
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @Q_strcat(i8* %142, i32 %143, i8* %148)
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @Q_strcat(i8* %150, i32 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %153

153:                                              ; preds = %141, %120
  br label %182

154:                                              ; preds = %91
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @Q_strcat(i8* %155, i32 %156, i8* %161)
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @Q_strcat(i8* %163, i32 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i8**, i8*** @fs_serverReferencedPakNames, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %170)
  %172 = call i64 @FS_SV_FileExists(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %154
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @Q_strcat(i8* %175, i32 %176, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %154
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @Q_strcat(i8* %179, i32 %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %182

182:                                              ; preds = %178, %153
  br label %183

183:                                              ; preds = %182, %82, %75, %72
  br label %184

184:                                              ; preds = %183, %42
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %20

187:                                              ; preds = %20
  %188 = load i8*, i8** %5, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i64, i64* @qtrue, align 8
  store i64 %192, i64* %4, align 8
  br label %195

193:                                              ; preds = %187
  %194 = load i64, i64* @qfalse, align 8
  store i64 %194, i64* %4, align 8
  br label %195

195:                                              ; preds = %193, %191, %16
  %196 = load i64, i64* %4, align 8
  ret i64 %196
}

declare dso_local i64 @FS_idPak(i8*, i8*) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i64 @FS_SV_FileExists(i32) #1

declare dso_local i32 @va(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
