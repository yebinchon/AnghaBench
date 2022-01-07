; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQShutdown.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@FMV_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"finished cinematic\0A\00", align 1
@CA_DISCONNECTED = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CL_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQShutdown() #0 {
  %1 = alloca i8*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %3 = load i64, i64* @currentHandle, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %76

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %11 = load i64, i64* @currentHandle, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FMV_IDLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %76

18:                                               ; preds = %9
  %19 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @FMV_IDLE, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %22 = load i64, i64* @currentHandle, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %26 = load i64, i64* @currentHandle, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %33 = load i64, i64* @currentHandle, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @Sys_EndStreamedFile(i64 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %39 = load i64, i64* @currentHandle, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @FS_FCloseFile(i64 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %45 = load i64, i64* @currentHandle, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %31, %18
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %50 = load i64, i64* @currentHandle, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load i32, i32* @CA_DISCONNECTED, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 4
  %57 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %57, i8** %1, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @EXEC_APPEND, align 4
  %64 = load i8*, i8** %1, align 8
  %65 = call i32 @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = call i32 @Cbuf_ExecuteText(i32 %63, i32 %65)
  %67 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %55
  store i32 -1, i32* @CL_handle, align 4
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %71 = load i64, i64* @currentHandle, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 0, i64* %75, align 8
  store i64 -1, i64* @currentHandle, align 8
  br label %76

76:                                               ; preds = %69, %17, %8
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @Sys_EndStreamedFile(i64) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

declare dso_local i8* @Cvar_VariableString(i8*) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i32) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
