; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_RunMenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_RunMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@BUTTON_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GUI_RunMenu(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %88, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %89

9:                                                ; preds = %5
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @GUI_DrawMenu(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @GUI_UpdateMenu(%struct.TYPE_7__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %9
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* @BUTTON_VISIBLE, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %26
  store i32 %34, i32* %32, align 4
  br label %46

35:                                               ; preds = %20
  %36 = load i32, i32* @BUTTON_VISIBLE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35, %25
  br label %47

47:                                               ; preds = %46, %9
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load i32, i32* @BUTTON_VISIBLE, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %67
  store i32 %75, i32* %73, align 4
  br label %87

76:                                               ; preds = %54
  %77 = load i32, i32* @BUTTON_VISIBLE, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %78
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %76, %66
  br label %88

88:                                               ; preds = %87, %47
  br label %5

89:                                               ; preds = %5
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 -2, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %96, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %2, align 4
  br label %117

103:                                              ; preds = %89
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %109, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %2, align 4
  br label %117

116:                                              ; preds = %103
  store i32 -1, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %106, %92
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @GUI_DrawMenu(%struct.TYPE_7__*) #1

declare dso_local i32 @GUI_UpdateMenu(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
