; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_UpdateSpecials.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_UpdateSpecials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64* }

@levelTimer = common dso_local global i32 0, align 4
@levelTimeCount = common dso_local global i32 0, align 4
@anims = common dso_local global %struct.TYPE_12__* null, align 8
@lastanim = common dso_local global %struct.TYPE_12__* null, align 8
@leveltime = common dso_local global i32 0, align 4
@texturetranslation = common dso_local global i32* null, align 8
@flattranslation = common dso_local global i32* null, align 8
@numlinespecials = common dso_local global i32 0, align 4
@linespeciallist = common dso_local global %struct.TYPE_11__** null, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@sides = common dso_local global %struct.TYPE_13__* null, align 8
@MAXBUTTONS = common dso_local global i32 0, align 4
@buttonlist = common dso_local global %struct.TYPE_14__* null, align 8
@sfx_swtchn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_UpdateSpecials() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = load i32, i32* @levelTimer, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* @levelTimeCount, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @levelTimeCount, align 4
  %10 = load i32, i32* @levelTimeCount, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = call i32 (...) @G_ExitLevel()
  br label %14

14:                                               ; preds = %12, %7
  br label %15

15:                                               ; preds = %14, %0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @anims, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %1, align 8
  br label %17

17:                                               ; preds = %72, %15
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lastanim, align 8
  %20 = icmp ult %struct.TYPE_12__* %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %68, %21
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = icmp slt i32 %26, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @leveltime, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %39, %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = add nsw i32 %38, %49
  store i32 %50, i32* %2, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %35
  %56 = load i32, i32* %2, align 4
  %57 = load i32*, i32** @texturetranslation, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %67

61:                                               ; preds = %35
  %62 = load i32, i32* %2, align 4
  %63 = load i32*, i32** @flattranslation, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %25

71:                                               ; preds = %25
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 1
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %1, align 8
  br label %17

75:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %102, %75
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @numlinespecials, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @linespeciallist, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %81, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %4, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %101 [
    i32 48, label %89
  ]

89:                                               ; preds = %80
  %90 = load i32, i32* @FRACUNIT, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %90
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %80, %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %76

105:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %215, %105
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @MAXBUTTONS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %218

110:                                              ; preds = %106
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %214

118:                                              ; preds = %110
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, -1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %213, label %133

133:                                              ; preds = %118
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %200 [
    i32 128, label %140
    i32 129, label %160
    i32 130, label %180
  ]

140:                                              ; preds = %133
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  store i32 %146, i32* %159, align 4
  br label %200

160:                                              ; preds = %133
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  store i32 %166, i32* %179, align 4
  br label %200

180:                                              ; preds = %133
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  store i32 %186, i32* %199, align 4
  br label %200

200:                                              ; preds = %133, %180, %160, %140
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* @sfx_swtchn, align 4
  %207 = call i32 @S_StartSound(i32* %205, i32 %206)
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** @buttonlist, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 %210
  %212 = call i32 @memset(%struct.TYPE_14__* %211, i32 0, i32 4)
  br label %213

213:                                              ; preds = %200, %118
  br label %214

214:                                              ; preds = %213, %110
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %106

218:                                              ; preds = %106
  ret void
}

declare dso_local i32 @G_ExitLevel(...) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
