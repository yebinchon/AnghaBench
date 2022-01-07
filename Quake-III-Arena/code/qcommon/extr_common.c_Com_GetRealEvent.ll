; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_GetRealEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_GetRealEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

@com_journal = common dso_local global %struct.TYPE_9__* null, align 8
@com_journalFile = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error reading from journal file\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Error writing to journal file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, %struct.TYPE_8__* } @Com_GetRealEvent() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_journal, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %41

8:                                                ; preds = %0
  %9 = load i32, i32* @com_journalFile, align 4
  %10 = call i32 @FS_Read(%struct.TYPE_8__* %1, i32 16, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @ERR_FATAL, align 4
  %16 = call i32 @Com_Error(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_8__* @Z_Malloc(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @com_journalFile, align 4
  %31 = call i32 @FS_Read(%struct.TYPE_8__* %27, i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @ERR_FATAL, align 4
  %38 = call i32 @Com_Error(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %21
  br label %40

40:                                               ; preds = %39, %17
  br label %84

41:                                               ; preds = %0
  %42 = call { i32, %struct.TYPE_8__* } (...) @Sys_GetEvent()
  %43 = bitcast %struct.TYPE_8__* %3 to { i32, %struct.TYPE_8__* }*
  %44 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %43, i32 0, i32 0
  %45 = extractvalue { i32, %struct.TYPE_8__* } %42, 0
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %43, i32 0, i32 1
  %47 = extractvalue { i32, %struct.TYPE_8__* } %42, 1
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %46, align 8
  %48 = bitcast %struct.TYPE_8__* %1 to i8*
  %49 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_journal, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %83

54:                                               ; preds = %41
  %55 = load i32, i32* @com_journalFile, align 4
  %56 = call i32 @FS_Write(%struct.TYPE_8__* %1, i32 16, i32 %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 16
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ERR_FATAL, align 4
  %62 = call i32 @Com_Error(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %54
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @com_journalFile, align 4
  %73 = call i32 @FS_Write(%struct.TYPE_8__* %69, i32 %71, i32 %72)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @ERR_FATAL, align 4
  %80 = call i32 @Com_Error(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %67
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83, %40
  %85 = bitcast %struct.TYPE_8__* %1 to { i32, %struct.TYPE_8__* }*
  %86 = load { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %85, align 8
  ret { i32, %struct.TYPE_8__* } %86
}

declare dso_local i32 @FS_Read(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @Z_Malloc(i32) #1

declare dso_local { i32, %struct.TYPE_8__* } @Sys_GetEvent(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FS_Write(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
