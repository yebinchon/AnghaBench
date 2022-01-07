; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Menu_DefaultKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Menu_DefaultKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@menu_out_sound = common dso_local global i64 0, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"screenshot\0A\00", align 1
@menu_move_sound = common dso_local global i64 0, align 8
@QMF_HASMOUSEFOCUS = common dso_local global i32 0, align 4
@QMF_MOUSEONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Menu_DefaultKey(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %13 [
    i32 136, label %10
    i32 147, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = call i32 (...) @UI_PopMenu()
  %12 = load i64, i64* @menu_out_sound, align 8
  store i64 %12, i64* %3, align 8
  br label %175

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13
  store i64 0, i64* %3, align 8
  br label %175

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call %struct.TYPE_12__* @Menu_ItemAtCursor(%struct.TYPE_11__* %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %7, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %70

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QMF_GRAYED, align 4
  %32 = load i32, i32* @QMF_INACTIVE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %64 [
    i32 128, label %40
    i32 131, label %45
    i32 129, label %50
    i32 130, label %55
    i32 132, label %60
  ]

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = bitcast %struct.TYPE_12__* %41 to i32*
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @SpinControl_Key(i32* %42, i32 %43)
  store i64 %44, i64* %6, align 8
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = bitcast %struct.TYPE_12__* %46 to i32*
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @RadioButton_Key(i32* %47, i32 %48)
  store i64 %49, i64* %6, align 8
  br label %64

50:                                               ; preds = %36
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = bitcast %struct.TYPE_12__* %51 to i32*
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @Slider_Key(i32* %52, i32 %53)
  store i64 %54, i64* %6, align 8
  br label %64

55:                                               ; preds = %36
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = bitcast %struct.TYPE_12__* %56 to i32*
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @ScrollList_Key(i32* %57, i32 %58)
  store i64 %59, i64* %6, align 8
  br label %64

60:                                               ; preds = %36
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = bitcast %struct.TYPE_12__* %61 to i32*
  %63 = call i64 @MenuField_Key(i32* %62, i32* %5)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %36, %60, %55, %50, %45, %40
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  br label %175

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %27, %22
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %173 [
    i32 146, label %72
    i32 145, label %75
    i32 138, label %78
    i32 133, label %78
    i32 134, label %103
    i32 140, label %103
    i32 149, label %103
    i32 137, label %128
    i32 135, label %128
    i32 144, label %153
    i32 143, label %153
    i32 142, label %153
    i32 141, label %153
    i32 165, label %153
    i32 157, label %153
    i32 156, label %153
    i32 155, label %153
    i32 154, label %153
    i32 153, label %153
    i32 152, label %153
    i32 151, label %153
    i32 150, label %153
    i32 164, label %153
    i32 163, label %153
    i32 162, label %153
    i32 161, label %153
    i32 160, label %153
    i32 159, label %153
    i32 158, label %153
    i32 139, label %153
    i32 148, label %153
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @uis, i32 0, i32 0), align 4
  %74 = xor i32 %73, 1
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @uis, i32 0, i32 0), align 4
  br label %173

75:                                               ; preds = %70
  %76 = load i32, i32* @EXEC_APPEND, align 4
  %77 = call i32 @trap_Cmd_ExecuteText(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %173

78:                                               ; preds = %70, %70
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = call i32 @Menu_AdjustCursor(%struct.TYPE_11__* %91, i32 -1)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %78
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = call i32 @Menu_CursorMoved(%struct.TYPE_11__* %99)
  %101 = load i64, i64* @menu_move_sound, align 8
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %98, %78
  br label %173

103:                                              ; preds = %70, %70, %70
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = call i32 @Menu_AdjustCursor(%struct.TYPE_11__* %116, i32 1)
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %103
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = call i32 @Menu_CursorMoved(%struct.TYPE_11__* %124)
  %126 = load i64, i64* @menu_move_sound, align 8
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %123, %103
  br label %173

128:                                              ; preds = %70, %70
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = icmp ne %struct.TYPE_12__* %129, null
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @QMF_HASMOUSEFOCUS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @QMF_GRAYED, align 4
  %143 = load i32, i32* @QMF_INACTIVE, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %138
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %150 = call i64 @Menu_ActivateItem(%struct.TYPE_11__* %148, %struct.TYPE_12__* %149)
  store i64 %150, i64* %3, align 8
  br label %175

151:                                              ; preds = %138, %131
  br label %152

152:                                              ; preds = %151, %128
  br label %173

153:                                              ; preds = %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = icmp ne %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @QMF_MOUSEONLY, align 4
  %161 = load i32, i32* @QMF_GRAYED, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @QMF_INACTIVE, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %159, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %156
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = call i64 @Menu_ActivateItem(%struct.TYPE_11__* %168, %struct.TYPE_12__* %169)
  store i64 %170, i64* %3, align 8
  br label %175

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %153
  br label %173

173:                                              ; preds = %70, %172, %152, %127, %102, %75, %72
  %174 = load i64, i64* %6, align 8
  store i64 %174, i64* %3, align 8
  br label %175

175:                                              ; preds = %173, %167, %147, %67, %21, %10
  %176 = load i64, i64* %3, align 8
  ret i64 %176
}

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local %struct.TYPE_12__* @Menu_ItemAtCursor(%struct.TYPE_11__*) #1

declare dso_local i64 @SpinControl_Key(i32*, i32) #1

declare dso_local i64 @RadioButton_Key(i32*, i32) #1

declare dso_local i64 @Slider_Key(i32*, i32) #1

declare dso_local i64 @ScrollList_Key(i32*, i32) #1

declare dso_local i64 @MenuField_Key(i32*, i32*) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i32 @Menu_AdjustCursor(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @Menu_CursorMoved(%struct.TYPE_11__*) #1

declare dso_local i64 @Menu_ActivateItem(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
