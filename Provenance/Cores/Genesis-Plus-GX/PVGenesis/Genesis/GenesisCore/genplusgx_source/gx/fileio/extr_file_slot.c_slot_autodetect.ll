; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_autodetect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_autodetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64 }
%struct.stat = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s/saves/%s.gp%d\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@rom_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/saves/%s.srm\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MD-%04X.gp%d\00", align 1
@rominfo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"MD-%04X.srm\00", align 1
@SysArea = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CARD_WORKAREA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"GENP\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@CARD_ERROR_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slot_autodetect(i32 %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tm*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %148

19:                                               ; preds = %3
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = call i32 @memset(%struct.TYPE_11__* %24, i32 0, i32 32)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %80, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** @DEFAULT_PATH, align 8
  %33 = load i8*, i8** @rom_filename, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i32 %35)
  br label %41

37:                                               ; preds = %28
  %38 = load i8*, i8** @DEFAULT_PATH, align 8
  %39 = load i8*, i8** @rom_filename, align 8
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = call i32 @stat(i8* %23, %struct.stat* %10)
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %48 = call %struct.tm* @localtime(i32* %47)
  store %struct.tm* %48, %struct.tm** %11, align 8
  %49 = load %struct.tm*, %struct.tm** %11, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 1900, %51
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tm*, %struct.tm** %11, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tm*, %struct.tm** %11, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tm*, %struct.tm** %11, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tm*, %struct.tm** %11, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @fclose(i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %45, %41
  br label %146

80:                                               ; preds = %19
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @rominfo, i32 0, i32 0), align 4
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %86)
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @rominfo, i32 0, i32 0), align 4
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* @CARD_WORKAREA, align 4
  %93 = call i32 @memset(%struct.TYPE_11__* @SysArea, i32 0, i32 %92)
  %94 = call i32 @CARD_Init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @CardMount(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %145

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @CARD_Open(i32 %101, i8* %23, %struct.TYPE_13__* %12)
  %103 = load i64, i64* @CARD_ERROR_READY, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @CARD_GetStatus(i32 %106, i32 %108, %struct.TYPE_12__* %13)
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = call %struct.tm* @localtime(i32* %14)
  store %struct.tm* %112, %struct.tm** %15, align 8
  %113 = load %struct.tm*, %struct.tm** %15, align 8
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 1900, %115
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.tm*, %struct.tm** %15, align 8
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.tm*, %struct.tm** %15, align 8
  %125 = getelementptr inbounds %struct.tm, %struct.tm* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.tm*, %struct.tm** %15, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.tm*, %struct.tm** %15, align 8
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = call i32 @CARD_Close(%struct.TYPE_13__* %12)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %105, %100
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @CARD_Unmount(i32 %143)
  br label %145

145:                                              ; preds = %142, %91
  br label %146

146:                                              ; preds = %145, %79
  %147 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %148

148:                                              ; preds = %146, %18
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @CARD_Init(i8*, i8*) #2

declare dso_local i64 @CardMount(i32) #2

declare dso_local i64 @CARD_Open(i32, i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @CARD_GetStatus(i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @CARD_Close(%struct.TYPE_13__*) #2

declare dso_local i32 @CARD_Unmount(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
