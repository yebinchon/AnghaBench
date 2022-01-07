; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_switch.c_P_ChangeSwitchTexture.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_switch.c_P_ChangeSwitchTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64* }

@sides = common dso_local global %struct.TYPE_7__* null, align 8
@sfx_swtchn = common dso_local global i32 0, align 4
@sfx_swtchx = common dso_local global i32 0, align 4
@numswitches = common dso_local global i32 0, align 4
@switchlist = common dso_local global i32* null, align 8
@buttonlist = common dso_local global %struct.TYPE_8__* null, align 8
@top = common dso_local global i32 0, align 4
@BUTTONTIME = common dso_local global i32 0, align 4
@middle = common dso_local global i32 0, align 4
@bottom = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_ChangeSwitchTexture(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sides, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sides, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sides, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @sfx_swtchn, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 11
  br i1 %47, label %48, label %50

48:                                               ; preds = %15
  %49 = load i32, i32* @sfx_swtchx, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %15
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %182, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @numswitches, align 4
  %54 = mul nsw i32 %53, 2
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %185

56:                                               ; preds = %51
  %57 = load i32*, i32** @switchlist, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %56
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @buttonlist, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @S_StartSound(i32 %67, i32 %68)
  %70 = load i32*, i32** @switchlist, align 8
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sides, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %75, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %64
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = load i32, i32* @top, align 4
  %89 = load i32*, i32** @switchlist, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BUTTONTIME, align 4
  %95 = call i32 @P_StartButton(%struct.TYPE_6__* %87, i32 %88, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %64
  br label %185

97:                                               ; preds = %56
  %98 = load i32*, i32** @switchlist, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %138

105:                                              ; preds = %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @buttonlist, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @S_StartSound(i32 %108, i32 %109)
  %111 = load i32*, i32** @switchlist, align 8
  %112 = load i32, i32* %8, align 4
  %113 = xor i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sides, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %116, i32* %124, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %105
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = load i32, i32* @middle, align 4
  %130 = load i32*, i32** @switchlist, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BUTTONTIME, align 4
  %136 = call i32 @P_StartButton(%struct.TYPE_6__* %128, i32 %129, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %105
  br label %185

138:                                              ; preds = %97
  %139 = load i32*, i32** @switchlist, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %138
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @buttonlist, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @S_StartSound(i32 %149, i32 %150)
  %152 = load i32*, i32** @switchlist, align 8
  %153 = load i32, i32* %8, align 4
  %154 = xor i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sides, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  store i32 %157, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %146
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %170 = load i32, i32* @bottom, align 4
  %171 = load i32*, i32** @switchlist, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @BUTTONTIME, align 4
  %177 = call i32 @P_StartButton(%struct.TYPE_6__* %169, i32 %170, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %168, %146
  br label %185

179:                                              ; preds = %138
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %51

185:                                              ; preds = %96, %137, %178, %51
  ret void
}

declare dso_local i32 @S_StartSound(i32, i32) #1

declare dso_local i32 @P_StartButton(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
