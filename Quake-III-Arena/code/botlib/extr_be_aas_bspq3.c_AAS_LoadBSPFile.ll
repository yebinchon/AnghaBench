; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_LoadBSPFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_bspq3.c_AAS_LoadBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)* }
%struct.TYPE_3__ = type { i8*, i32, i64 }

@botimport = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@bspworld = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_LoadBSPFile() #0 {
  %1 = call i32 (...) @AAS_DumpBSPData()
  %2 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @botimport, i32 0, i32 0), align 8
  %3 = call i32 (...) %2()
  %4 = call i64 @strlen(i32 %3)
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 2), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 2), align 8
  %7 = call i64 @GetClearedHunkMemory(i64 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 0), align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 0), align 8
  %10 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @botimport, i32 0, i32 0), align 8
  %11 = call i32 (...) %10()
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 2), align 8
  %13 = call i32 @Com_Memcpy(i8* %9, i32 %11, i64 %12)
  %14 = call i32 (...) @AAS_ParseBSPEntities()
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bspworld, i32 0, i32 1), align 8
  %16 = load i32, i32* @BLERR_NOERROR, align 4
  ret i32 %16
}

declare dso_local i32 @AAS_DumpBSPData(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @GetClearedHunkMemory(i64) #1

declare dso_local i32 @Com_Memcpy(i8*, i32, i64) #1

declare dso_local i32 @AAS_ParseBSPEntities(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
