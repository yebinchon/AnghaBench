; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_VileChase.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_VileChase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@DI_NODIR = common dso_local global i64 0, align 8
@xspeed = common dso_local global i32* null, align 8
@viletryx = common dso_local global i32 0, align 4
@yspeed = common dso_local global i32* null, align 8
@viletryy = common dso_local global i32 0, align 4
@bmaporgx = common dso_local global i32 0, align 4
@MAXRADIUS = common dso_local global i32 0, align 4
@MAPBLOCKSHIFT = common dso_local global i32 0, align 4
@bmaporgy = common dso_local global i32 0, align 4
@vileobj = common dso_local global %struct.TYPE_11__* null, align 8
@PIT_VileCheck = common dso_local global i32 0, align 4
@corpsehit = common dso_local global %struct.TYPE_11__* null, align 8
@S_VILE_HEAL1 = common dso_local global i32 0, align 4
@sfx_slop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_VileChase(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DI_NODIR, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %150

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @xspeed, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %24, %30
  %32 = add nsw i32 %19, %31
  store i32 %32, i32* @viletryx, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @yspeed, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %40, %46
  %48 = add nsw i32 %35, %47
  store i32 %48, i32* @viletryy, align 4
  %49 = load i32, i32* @viletryx, align 4
  %50 = load i32, i32* @bmaporgx, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* @MAXRADIUS, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sub nsw i32 %51, %53
  %55 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @viletryx, align 4
  %58 = load i32, i32* @bmaporgx, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* @MAXRADIUS, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @viletryy, align 4
  %66 = load i32, i32* @bmaporgy, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @MAXRADIUS, align 4
  %69 = mul nsw i32 %68, 2
  %70 = sub nsw i32 %67, %69
  %71 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @viletryy, align 4
  %74 = load i32, i32* @bmaporgy, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* @MAXRADIUS, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* @MAPBLOCKSHIFT, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** @vileobj, align 8
  %82 = load i32, i32* %3, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %146, %16
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %149

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %142, %87
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @PIT_VileCheck, align 4
  %97 = call i32 @P_BlockThingsIterator(i32 %94, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %141, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %10, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = call i32 @A_FaceTarget(%struct.TYPE_11__* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = load i32, i32* @S_VILE_HEAL1, align 4
  %113 = call i32 @P_SetMobjState(%struct.TYPE_11__* %111, i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %115 = load i32, i32* @sfx_slop, align 4
  %116 = call i32 @S_StartSound(%struct.TYPE_11__* %114, i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %9, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @P_SetMobjState(%struct.TYPE_11__* %120, i32 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = shl i32 %127, 2
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** @corpsehit, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %140, align 8
  br label %153

141:                                              ; preds = %93
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %89

145:                                              ; preds = %89
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %83

149:                                              ; preds = %83
  br label %150

150:                                              ; preds = %149, %1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %152 = call i32 @A_Chase(%struct.TYPE_11__* %151)
  br label %153

153:                                              ; preds = %150, %99
  ret void
}

declare dso_local i32 @P_BlockThingsIterator(i32, i32, i32) #1

declare dso_local i32 @A_FaceTarget(%struct.TYPE_11__*) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @A_Chase(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
