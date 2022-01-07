; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_SetTexinfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_SetTexinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@CONTENTS_LADDER = common dso_local global i32 0, align 4
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@CONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@CONTENTS_TELEPORTER = common dso_local global i32 0, align 4
@CONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@CONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WINDOW = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@SFL_TEXTURED = common dso_local global i32 0, align 4
@SFL_BEVEL = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_SetTexinfo(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CONTENTS_LADDER, align 4
  %9 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CONTENTS_TELEPORTER, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CONTENTS_JUMPPAD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CONTENTS_WATER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CONTENTS_LAVA, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CONTENTS_SLIME, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CONTENTS_WINDOW, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %7, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %32

50:                                               ; preds = %32
  br label %85

51:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %4, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SFL_TEXTURED, align 4
  %69 = load i32, i32* @SFL_BEVEL, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %80

76:                                               ; preds = %58
  %77 = load i64, i64* @TEXINFO_NODE, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %52

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %84, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
