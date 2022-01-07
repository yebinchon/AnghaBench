; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_Shutdown.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_Shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 (i32, i8*)* }

@aasworld = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AAS shutdown.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_Shutdown() #0 {
  %1 = call i32 (...) @AAS_ShutdownAlternativeRouting()
  %2 = call i32 (...) @AAS_DumpBSPData()
  %3 = call i32 (...) @AAS_FreeRoutingCaches()
  %4 = call i32 (...) @AAS_FreeAASLinkHeap()
  %5 = call i32 (...) @AAS_FreeAASLinkedEntities()
  %6 = call i32 (...) @AAS_DumpAASData()
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 1), align 8
  %11 = call i32 @FreeMemory(i64 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = call i32 @Com_Memset(%struct.TYPE_5__* @aasworld, i32 0, i32 4)
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aasworld, i32 0, i32 0), align 8
  %15 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @botimport, i32 0, i32 0), align 8
  %16 = load i32, i32* @PRT_MESSAGE, align 4
  %17 = call i32 %15(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @AAS_ShutdownAlternativeRouting(...) #1

declare dso_local i32 @AAS_DumpBSPData(...) #1

declare dso_local i32 @AAS_FreeRoutingCaches(...) #1

declare dso_local i32 @AAS_FreeAASLinkHeap(...) #1

declare dso_local i32 @AAS_FreeAASLinkedEntities(...) #1

declare dso_local i32 @AAS_DumpAASData(...) #1

declare dso_local i32 @FreeMemory(i64) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
