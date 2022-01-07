; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2VBlankOUT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2VBlankOUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@Vdp2VBlankOUT.framestoskip = internal global i32 0, align 4
@Vdp2VBlankOUT.framesskipped = internal global i32 0, align 4
@Vdp2VBlankOUT.skipnextframe = internal global i32 0, align 4
@Vdp2VBlankOUT.curticks = internal global i32 0, align 4
@Vdp2VBlankOUT.diffticks = internal global i32 0, align 4
@Vdp2VBlankOUT.framecount = internal global i32 0, align 4
@Vdp2VBlankOUT.onesecondticks = internal global i32 0, align 4
@Vdp2VBlankOUT.saved = internal global %struct.TYPE_10__* null, align 8
@vdp2_is_odd_frame = common dso_local global i32 0, align 4
@Vdp2Regs = common dso_local global %struct.TYPE_12__* null, align 8
@VIDCore = common dso_local global %struct.TYPE_10__* null, align 8
@VIDDummy = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@Vdp1Regs = common dso_local global %struct.TYPE_13__* null, align 8
@Vdp1External = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@throttlespeed = common dso_local global i64 0, align 8
@autoframeskipenab = common dso_local global i64 0, align 8
@FrameAdvanceVariable = common dso_local global i64 0, align 8
@yabsys = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@lastticks = common dso_local global i32 0, align 4
@SmpcRegs = common dso_local global %struct.TYPE_15__* null, align 8
@PORTDATA1 = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2VBlankOUT() #0 {
  %1 = load i32, i32* @vdp2_is_odd_frame, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* @vdp2_is_odd_frame, align 4
  br label %5

4:                                                ; preds = %0
  store i32 1, i32* @vdp2_is_odd_frame, align 4
  br label %5

5:                                                ; preds = %4, %3
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, -9
  %10 = and i32 %9, -3
  %11 = load i32, i32* @vdp2_is_odd_frame, align 4
  %12 = shl i32 %11, 1
  %13 = or i32 %10, %12
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2VBlankOUT.saved, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VIDCore, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** @Vdp2VBlankOUT.saved, align 8
  store %struct.TYPE_10__* @VIDDummy, %struct.TYPE_10__** @VIDCore, align 8
  br label %32

23:                                               ; preds = %18, %5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2VBlankOUT.saved, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Vdp2VBlankOUT.saved, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** @VIDCore, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @Vdp2VBlankOUT.saved, align 8
  br label %31

31:                                               ; preds = %29, %26, %23
  br label %32

32:                                               ; preds = %31, %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VIDCore, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = call i32 (...) %35()
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 32768
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VIDCore, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32 (...)*, i32 (...)** %44, align 8
  %46 = call i32 (...) %45()
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Vdp1Regs, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 (...) @Vdp1Draw()
  br label %53

53:                                               ; preds = %51, %42
  br label %62

54:                                               ; preds = %32
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Vdp1Regs, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (...) @Vdp1Draw()
  br label %61

61:                                               ; preds = %59, %54
  br label %62

62:                                               ; preds = %61, %53
  %63 = call i32 (...) @FPSDisplay()
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Vdp1Regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Vdp1Regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Vdp1External, i32 0, i32 0), align 4
  br label %76

76:                                               ; preds = %75, %69, %62
  %77 = load i32, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  store i32 0, i32* @Vdp2VBlankOUT.framesskipped, align 4
  %80 = load i32, i32* @Vdp2VBlankOUT.framestoskip, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %94

84:                                               ; preds = %76
  %85 = load i32, i32* @Vdp2VBlankOUT.framestoskip, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* @Vdp2VBlankOUT.framestoskip, align 4
  %87 = load i32, i32* @Vdp2VBlankOUT.framestoskip, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  br label %91

90:                                               ; preds = %84
  store i32 1, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* @Vdp2VBlankOUT.framesskipped, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @Vdp2VBlankOUT.framesskipped, align 4
  br label %94

94:                                               ; preds = %91, %83
  %95 = load i64, i64* @throttlespeed, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* @Vdp2VBlankOUT.framestoskip, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 6, i32* @Vdp2VBlankOUT.framestoskip, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %171

102:                                              ; preds = %94
  %103 = load i64, i64* @autoframeskipenab, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %170

105:                                              ; preds = %102
  %106 = load i64, i64* @FrameAdvanceVariable, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %170

108:                                              ; preds = %105
  %109 = load i32, i32* @Vdp2VBlankOUT.framecount, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @Vdp2VBlankOUT.framecount, align 4
  %111 = load i32, i32* @Vdp2VBlankOUT.framecount, align 4
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @yabsys, i32 0, i32 1), align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 50, i32 60
  %116 = icmp sgt i32 %111, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 1, i32* @Vdp2VBlankOUT.framecount, align 4
  store i32 0, i32* @Vdp2VBlankOUT.onesecondticks, align 4
  br label %118

118:                                              ; preds = %117, %108
  %119 = call i32 (...) @YabauseGetTicks()
  store i32 %119, i32* @Vdp2VBlankOUT.curticks, align 4
  %120 = load i32, i32* @Vdp2VBlankOUT.curticks, align 4
  %121 = load i32, i32* @lastticks, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* @Vdp2VBlankOUT.diffticks, align 4
  %123 = load i32, i32* @Vdp2VBlankOUT.onesecondticks, align 4
  %124 = load i32, i32* @Vdp2VBlankOUT.diffticks, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @yabsys, i32 0, i32 0), align 8
  %127 = load i32, i32* @Vdp2VBlankOUT.framecount, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @yabsys, i32 0, i32 0), align 8
  %130 = sdiv i32 %129, 2
  %131 = add nsw i32 %128, %130
  %132 = icmp sgt i32 %125, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %118
  %134 = load i32, i32* @Vdp2VBlankOUT.framesskipped, align 4
  %135 = icmp slt i32 %134, 9
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 1, i32* @Vdp2VBlankOUT.skipnextframe, align 4
  store i32 1, i32* @Vdp2VBlankOUT.framestoskip, align 4
  br label %165

137:                                              ; preds = %133, %118
  %138 = load i32, i32* @Vdp2VBlankOUT.onesecondticks, align 4
  %139 = load i32, i32* @Vdp2VBlankOUT.diffticks, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @yabsys, i32 0, i32 0), align 8
  %142 = load i32, i32* @Vdp2VBlankOUT.framecount, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @yabsys, i32 0, i32 0), align 8
  %145 = sdiv i32 %144, 2
  %146 = sub nsw i32 %143, %145
  %147 = icmp slt i32 %140, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %162, %148
  %150 = call i32 (...) @YabauseGetTicks()
  store i32 %150, i32* @Vdp2VBlankOUT.curticks, align 4
  %151 = load i32, i32* @Vdp2VBlankOUT.curticks, align 4
  %152 = load i32, i32* @lastticks, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* @Vdp2VBlankOUT.diffticks, align 4
  %154 = load i32, i32* @Vdp2VBlankOUT.onesecondticks, align 4
  %155 = load i32, i32* @Vdp2VBlankOUT.diffticks, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @yabsys, i32 0, i32 0), align 8
  %158 = load i32, i32* @Vdp2VBlankOUT.framecount, align 4
  %159 = mul nsw i32 %157, %158
  %160 = icmp sge i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %163

162:                                              ; preds = %149
  br label %149

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163, %137
  br label %165

165:                                              ; preds = %164, %136
  %166 = load i32, i32* @Vdp2VBlankOUT.diffticks, align 4
  %167 = load i32, i32* @Vdp2VBlankOUT.onesecondticks, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* @Vdp2VBlankOUT.onesecondticks, align 4
  %169 = load i32, i32* @Vdp2VBlankOUT.curticks, align 4
  store i32 %169, i32* @lastticks, align 4
  br label %170

170:                                              ; preds = %165, %105, %102
  br label %171

171:                                              ; preds = %170, %101
  %172 = call i32 (...) @ScuSendVBlankOUT()
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Vdp2Regs, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 512
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %203

178:                                              ; preds = %171
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SmpcRegs, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %178
  %185 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @PORTDATA1, i32 0, i32 0), align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @PORTDATA1, i32 0, i32 0), align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 4
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %188, %191
  %193 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @PORTDATA1, i32 0, i32 0), align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 5
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 8
  %197 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @PORTDATA1, i32 0, i32 0), align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 6
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %196, %199
  %201 = call i32 @Vdp2SendExternalLatch(i32 %192, i32 %200)
  br label %202

202:                                              ; preds = %184, %178
  br label %203

203:                                              ; preds = %202, %171
  ret void
}

declare dso_local i32 @Vdp1Draw(...) #1

declare dso_local i32 @FPSDisplay(...) #1

declare dso_local i32 @YabauseGetTicks(...) #1

declare dso_local i32 @ScuSendVBlankOUT(...) #1

declare dso_local i32 @Vdp2SendExternalLatch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
