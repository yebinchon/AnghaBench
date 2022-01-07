; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/extr_exec_cia.c_exec_cia.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/extr_exec_cia.c_exec_cia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ARCHIVE_SDMC = common dso_local global i32 0, align 4
@PATH_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cant open SD FS archive.\00", align 1
@PATH_ASCII = common dso_local global i32 0, align 4
@FS_OPEN_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Cant open CIA file.\00", align 1
@MEDIATYPE_SD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Cant get CIA file info.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not read title id list.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Cant install CIA.\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"CIA cant run, cant prepare.\00", align 1
@argvHmac = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"CIA cant run, cant jump.\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_cia(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %185

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @stat(i8* %29, %struct.stat* %6)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %185

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISDIR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %185

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = call i32 (...) @amInit()
  %47 = call i64 @R_SUCCEEDED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = call i32 (...) @fsInit()
  %51 = call i64 @R_SUCCEEDED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %181

58:                                               ; preds = %53
  %59 = load i32, i32* @ARCHIVE_SDMC, align 4
  %60 = load i32, i32* @PATH_EMPTY, align 4
  %61 = call i32 @fsMakePath(i32 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @FSUSER_OpenArchive(i32* %11, i32 %59, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @R_FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 @errorAndQuit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @PATH_ASCII, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = call i32 @fsMakePath(i32 %70, i8* %72)
  %74 = load i32, i32* @FS_OPEN_READ, align 4
  %75 = call i32 @FSUSER_OpenFile(i32* %12, i32 %69, i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @R_FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = call i32 @errorAndQuit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %68
  %82 = load i32, i32* @MEDIATYPE_SD, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @AM_GetCiaFileInfo(i32 %82, %struct.TYPE_6__* %10, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @R_FAILED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @errorAndQuit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @isCiaInstalled(i32 %92, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = call i32 @errorAndQuit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %112

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @installCia(i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @errorAndQuit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111, %98
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @FSFILE_Close(i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @FSUSER_CloseArchive(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 0, i64* %117, align 8
  store i32 0, i32* %15, align 4
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %17, align 8
  br label %120

120:                                              ; preds = %127, %112
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %158

127:                                              ; preds = %120
  %128 = load i8*, i8** %17, align 8
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strcpy(i8* %128, i8* %133)
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strlen(i8* %139)
  %141 = add nsw i64 %140, 1
  %142 = load i8*, i8** %17, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  store i8* %143, i8** %17, align 8
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strlen(i8* %148)
  %150 = add nsw i64 %149, 1
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %15, align 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %120

158:                                              ; preds = %120
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @APT_PrepareToDoApplicationJump(i32 0, i32 %160, i32 1)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i64 @R_FAILED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = call i32 @errorAndQuit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %158
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 8, %169
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* @argvHmac, align 4
  %173 = call i32 @APT_DoApplicationJump(%struct.TYPE_5__* %14, i32 %171, i32 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @R_FAILED(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = call i32 @errorAndQuit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %167
  br label %180

180:                                              ; preds = %179, %180
  br label %180

181:                                              ; preds = %53
  %182 = call i32 (...) @amExit()
  %183 = call i32 (...) @fsExit()
  %184 = load i32, i32* @ENOTSUP, align 4
  store i32 %184, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %185

185:                                              ; preds = %181, %42, %35, %26
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @R_SUCCEEDED(i32) #1

declare dso_local i32 @amInit(...) #1

declare dso_local i32 @fsInit(...) #1

declare dso_local i32 @FSUSER_OpenArchive(i32*, i32, i32) #1

declare dso_local i32 @fsMakePath(i32, i8*) #1

declare dso_local i64 @R_FAILED(i32) #1

declare dso_local i32 @errorAndQuit(i8*) #1

declare dso_local i32 @FSUSER_OpenFile(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AM_GetCiaFileInfo(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @isCiaInstalled(i32, i32) #1

declare dso_local i32 @installCia(i32) #1

declare dso_local i32 @FSFILE_Close(i32) #1

declare dso_local i32 @FSUSER_CloseArchive(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @APT_PrepareToDoApplicationJump(i32, i32, i32) #1

declare dso_local i32 @APT_DoApplicationJump(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @amExit(...) #1

declare dso_local i32 @fsExit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
