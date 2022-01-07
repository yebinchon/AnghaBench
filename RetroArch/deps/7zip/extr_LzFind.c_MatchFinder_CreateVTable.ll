; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_MatchFinder_CreateVTable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_MatchFinder_CreateVTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64, i64, i64 }

@MatchFinder_Init = common dso_local global i64 0, align 8
@MatchFinder_GetNumAvailableBytes = common dso_local global i64 0, align 8
@MatchFinder_GetPointerToCurrentPos = common dso_local global i64 0, align 8
@Hc4_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Hc4_MatchFinder_Skip = common dso_local global i64 0, align 8
@Bt2_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Bt2_MatchFinder_Skip = common dso_local global i64 0, align 8
@Bt3_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Bt3_MatchFinder_Skip = common dso_local global i64 0, align 8
@Bt4_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Bt4_MatchFinder_Skip = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_CreateVTable(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i64, i64* @MatchFinder_Init, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i64 %5, i64* %7, align 8
  %8 = load i64, i64* @MatchFinder_GetNumAvailableBytes, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* @MatchFinder_GetPointerToCurrentPos, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @Hc4_MatchFinder_GetMatches, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @Hc4_MatchFinder_Skip, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %66

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i64, i64* @Bt2_MatchFinder_GetMatches, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @Bt2_MatchFinder_Skip, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %65

41:                                               ; preds = %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i64, i64* @Bt3_MatchFinder_GetMatches, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* @Bt3_MatchFinder_Skip, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %64

55:                                               ; preds = %41
  %56 = load i64, i64* @Bt4_MatchFinder_GetMatches, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @Bt4_MatchFinder_Skip, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %32
  br label %66

66:                                               ; preds = %65, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
