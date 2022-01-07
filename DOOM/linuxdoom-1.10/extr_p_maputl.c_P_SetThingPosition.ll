; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_P_SetThingPosition.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_maputl.c_P_SetThingPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@MF_NOSECTOR = common dso_local global i32 0, align 4
@MF_NOBLOCKMAP = common dso_local global i32 0, align 4
@bmaporgx = common dso_local global i32 0, align 4
@MAPBLOCKSHIFT = common dso_local global i32 0, align 4
@bmaporgy = common dso_local global i32 0, align 4
@bmapwidth = common dso_local global i32 0, align 4
@bmapheight = common dso_local global i32 0, align 4
@blocklinks = common dso_local global %struct.TYPE_9__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_SetThingPosition(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_7__* @R_PointInSubsector(i32 %10, i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MF_NOSECTOR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %44, align 8
  br label %45

45:                                               ; preds = %39, %24
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  br label %49

49:                                               ; preds = %45, %1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MF_NOBLOCKMAP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %116, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @bmaporgx, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @bmaporgy, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %56
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @bmapwidth, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @bmapheight, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @blocklinks, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @bmapwidth, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %91
  store %struct.TYPE_9__** %92, %struct.TYPE_9__*** %7, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %94, align 8
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %84
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %106, align 8
  br label %107

107:                                              ; preds = %102, %84
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %109, align 8
  br label %115

110:                                              ; preds = %80, %77, %73, %56
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %112, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115, %49
  ret void
}

declare dso_local %struct.TYPE_7__* @R_PointInSubsector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
