; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_target.c_SP_target_speaker.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_target.c_SP_target_speaker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NOSOUND\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"target_speaker without a noise key at %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.wav\00", align 1
@ET_SPEAKER = common dso_local global i32 0, align 4
@Use_Target_Speaker = common dso_local global i32 0, align 4
@SVF_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SP_target_speaker(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load i32, i32* @MAX_QPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %16 = call i32 @G_SpawnString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vtos(i32 %22)
  %24 = call i32 @G_Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 8
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = trunc i64 %7 to i32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @Com_sprintf(i8* %9, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %42)
  br label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** %5, align 8
  %46 = trunc i64 %7 to i32
  %47 = call i32 @Q_strncpyz(i8* %9, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = call i32 @G_SoundIndex(i8* %9)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ET_SPEAKER, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 10
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 10
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %48
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %48
  %89 = load i32, i32* @Use_Target_Speaker, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load i32, i32* @SVF_BROADCAST, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %88
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @VectorCopy(i32 %108, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = call i32 @trap_LinkEntity(%struct.TYPE_10__* %115)
  %117 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G_SpawnFloat(i8*, i8*, i32*) #2

declare dso_local i32 @G_SpawnString(i8*, i8*, i8**) #2

declare dso_local i32 @G_Error(i8*, i32) #2

declare dso_local i32 @vtos(i32) #2

declare dso_local i32 @strstr(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @G_SoundIndex(i8*) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
