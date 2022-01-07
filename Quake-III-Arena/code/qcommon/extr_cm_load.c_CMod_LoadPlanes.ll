; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadPlanes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64*, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32* }

@cmod_base = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MOD_LoadBmodel: funny lump size\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Map with no planes\00", align 1
@BOX_PLANES = common dso_local global i32 0, align 4
@h_high = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CMod_LoadPlanes(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load i64, i64* @cmod_base, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = urem i64 %19, 16
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ERR_DROP, align 4
  %24 = call i32 @Com_Error(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 16
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = call i32 @Com_Error(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* @BOX_PLANES, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 24
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @h_high, align 4
  %45 = call %struct.TYPE_9__* @Hunk_Alloc(i32 %43, i32 %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 1), align 8
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 0), align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cm, i32 0, i32 1), align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %105, %37
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %112

52:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %86, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @LittleFloat(i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %65, i64* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %56
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %53

89:                                               ; preds = %53
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @LittleFloat(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = call i32 @PlaneTypeForNormal(i64* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %89
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 1
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %6, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 1
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %5, align 8
  br label %48

112:                                              ; preds = %48
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @Hunk_Alloc(i32, i32) #1

declare dso_local i8* @LittleFloat(i32) #1

declare dso_local i32 @PlaneTypeForNormal(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
