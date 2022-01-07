; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_LoadMap.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_LoadMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@qfalse = common dso_local global i8* null, align 8
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_LoadMap(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i8*, i8** @qfalse, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  %10 = call i32 (...) @AAS_FreeRoutingCaches()
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @AAS_LoadFiles(i8* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BLERR_NOERROR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i8*, i8** @qfalse, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %8
  %20 = call i32 (...) @AAS_InitSettings()
  %21 = call i32 (...) @AAS_InitAASLinkHeap()
  %22 = call i32 (...) @AAS_InitAASLinkedEntities()
  %23 = call i32 (...) @AAS_InitReachability()
  %24 = call i32 (...) @AAS_InitAlternativeRouting()
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %16, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @AAS_FreeRoutingCaches(...) #1

declare dso_local i32 @AAS_LoadFiles(i8*) #1

declare dso_local i32 @AAS_InitSettings(...) #1

declare dso_local i32 @AAS_InitAASLinkHeap(...) #1

declare dso_local i32 @AAS_InitAASLinkedEntities(...) #1

declare dso_local i32 @AAS_InitReachability(...) #1

declare dso_local i32 @AAS_InitAlternativeRouting(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
