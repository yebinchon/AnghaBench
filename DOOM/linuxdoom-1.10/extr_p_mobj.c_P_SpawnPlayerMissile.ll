; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_SpawnPlayerMissile.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_SpawnPlayerMissile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i8*, i8*, i8*, %struct.TYPE_9__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }

@FRACUNIT = common dso_local global i32 0, align 4
@linetarget = common dso_local global i32 0, align 4
@finecosine = common dso_local global i64* null, align 8
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@finesine = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_SpawnPlayerMissile(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FRACUNIT, align 4
  %17 = mul nsw i32 1024, %16
  %18 = call i64 @P_AimLineAttack(%struct.TYPE_9__* %14, i32 %15, i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* @linetarget, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 67108864
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FRACUNIT, align 4
  %27 = mul nsw i32 1024, %26
  %28 = call i64 @P_AimLineAttack(%struct.TYPE_9__* %24, i32 %25, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* @linetarget, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 134217728
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FRACUNIT, align 4
  %37 = mul nsw i32 1024, %36
  %38 = call i64 @P_AimLineAttack(%struct.TYPE_9__* %34, i32 %35, i32 %37)
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %31, %21
  %40 = load i32, i32* @linetarget, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @FRACUNIT, align 4
  %58 = mul nsw i32 32, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call %struct.TYPE_9__* @P_SpawnMobj(i64 %61, i64 %62, i64 %63, i32 %64)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %5, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %47
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @S_StartSound(%struct.TYPE_9__* %73, i64 %78)
  br label %80

80:                                               ; preds = %72, %47
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64*, i64** @finecosine, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %92, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @FixedMul(i32 %91, i64 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64*, i64** @finesine, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %110 = ashr i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @FixedMul(i32 %106, i64 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i8* @FixedMul(i32 %121, i64 %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = call i32 @P_CheckMissileSpawn(%struct.TYPE_9__* %126)
  ret void
}

declare dso_local i64 @P_AimLineAttack(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @P_SpawnMobj(i64, i64, i64, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_9__*, i64) #1

declare dso_local i8* @FixedMul(i32, i64) #1

declare dso_local i32 @P_CheckMissileSpawn(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
