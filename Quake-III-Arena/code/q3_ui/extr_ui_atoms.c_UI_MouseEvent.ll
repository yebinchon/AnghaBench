; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_MouseEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_MouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64* }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }

@uis = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SCREEN_WIDTH = common dso_local global i64 0, align 8
@SCREEN_HEIGHT = common dso_local global i64 0, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@QMF_HASMOUSEFOCUS = common dso_local global i32 0, align 4
@QMF_SILENT = common dso_local global i32 0, align 4
@menu_move_sound = common dso_local global i32 0, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_MouseEvent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %173

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  br label %25

18:                                               ; preds = %10
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %20 = load i64, i64* @SCREEN_WIDTH, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @SCREEN_WIDTH, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  br label %40

33:                                               ; preds = %25
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  %35 = load i64, i64* @SCREEN_HEIGHT, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @SCREEN_HEIGHT, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %32
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %149, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %152

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @QMF_GRAYED, align 4
  %60 = load i32, i32* @QMF_INACTIVE, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %149

65:                                               ; preds = %47
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %89, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 1), align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %77, %71, %65
  br label %149

90:                                               ; preds = %83
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @Menu_SetCursor(%struct.TYPE_6__* %97, i32 %98)
  %100 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.TYPE_4__*
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %101
  store i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %116, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @QMF_SILENT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %96
  %130 = load i32, i32* @menu_move_sound, align 4
  %131 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %132 = call i32 @trap_S_StartLocalSound(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %96
  br label %134

134:                                              ; preds = %133, %90
  %135 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %138, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %135
  store i32 %148, i32* %146, align 8
  br label %173

149:                                              ; preds = %89, %64
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %41

152:                                              ; preds = %41
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %152
  %158 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 2), align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %162, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_4__*
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %159
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %9, %134, %157, %152
  ret void
}

declare dso_local i32 @Menu_SetCursor(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
