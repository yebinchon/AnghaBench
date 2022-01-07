; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_FindName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_FindName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32* }

@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"S_FindName: NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"S_FindName: empty name\0A\00", align 1
@MAX_QPATH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Sound name too long: %s\00", align 1
@sfxHash = common dso_local global %struct.TYPE_6__** null, align 8
@s_numSfx = common dso_local global i32 0, align 4
@s_knownSfx = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_SFX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"S_FindName: out of sfx_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*)* @S_FindName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @S_FindName(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ERR_FATAL, align 4
  %11 = call i32 (i32, i8*, ...) @Com_Error(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ERR_FATAL, align 4
  %19 = call i32 (i32, i8*, ...) @Com_Error(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i64, i64* @MAX_QPATH, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @ERR_FATAL, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32, i8*, ...) @Com_Error(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @S_HashSFXName(i8* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sfxHash, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  br label %37

37:                                               ; preds = %49, %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @Q_stricmp(i32* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %2, align 8
  br label %112

49:                                               ; preds = %40
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %6, align 8
  br label %37

53:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @s_numSfx, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_knownSfx, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %54

73:                                               ; preds = %68, %54
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @s_numSfx, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, i32* @s_numSfx, align 4
  %79 = load i32, i32* @MAX_SFX, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @ERR_FATAL, align 4
  %83 = call i32 (i32, i8*, ...) @Com_Error(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32, i32* @s_numSfx, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @s_numSfx, align 4
  br label %87

87:                                               ; preds = %84, %73
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_knownSfx, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %6, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = call i32 @Com_Memset(%struct.TYPE_6__* %92, i32 0, i32 16)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @strcpy(i32* %96, i8* %97)
  %99 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sfxHash, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %99, i64 %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sfxHash, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %107, i64 %109
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %2, align 8
  br label %112

112:                                              ; preds = %87, %47
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %113
}

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @S_HashSFXName(i8*) #1

declare dso_local i32 @Q_stricmp(i32*, i8*) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
