; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2DrawStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp2DrawStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i64, i64, i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@Vdp2Regs = common dso_local global %struct.TYPE_9__* null, align 8
@vdp1draw_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@vdp1spritetype = common dso_local global i32 0, align 4
@DoColorCalc = common dso_local global i32 0, align 4
@DoNothing = common dso_local global i32 0, align 4
@DoColorCalcWithColorOffset = common dso_local global i32 0, align 4
@DoColorOffset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp2DrawStart() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @Vdp2DrawBackScreen()
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 7
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 7
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 7
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 7
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 7
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 7
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 7
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 7
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 0), align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 112
  %59 = shl i32 %58, 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 1), align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* @vdp1spritetype, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 64
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %183

69:                                               ; preds = %0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %69
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 256
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  %87 = or i32 %86, -256
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  br label %88

88:                                               ; preds = %85, %75
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 255
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 256
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  %100 = or i32 %99, -256
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  br label %101

101:                                              ; preds = %98, %88
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 255
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 256
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  %113 = or i32 %112, -256
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  br label %114

114:                                              ; preds = %111, %101
  br label %155

115:                                              ; preds = %69
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 256
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  %127 = or i32 %126, -256
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  br label %128

128:                                              ; preds = %125, %115
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 255
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 12
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 256
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  %140 = or i32 %139, -256
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  br label %141

141:                                              ; preds = %138, %128
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 255
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 13
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 256
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  %153 = or i32 %152, -256
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  br label %154

154:                                              ; preds = %151, %141
  br label %155

155:                                              ; preds = %154, %114
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 0), align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 1), align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 2), align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 14
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 64
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32* @DoColorCalc, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 3), align 8
  br label %172

171:                                              ; preds = %164
  store i32* @DoNothing, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 3), align 8
  br label %172

172:                                              ; preds = %171, %170
  br label %182

173:                                              ; preds = %161, %158, %155
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 14
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 64
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32* @DoColorCalcWithColorOffset, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 3), align 8
  br label %181

180:                                              ; preds = %173
  store i32* @DoColorOffset, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 3), align 8
  br label %181

181:                                              ; preds = %180, %179
  br label %182

182:                                              ; preds = %181, %172
  br label %192

183:                                              ; preds = %0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 14
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 64
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32* @DoColorCalc, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 3), align 8
  br label %191

190:                                              ; preds = %183
  store i32* @DoNothing, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 6, i32 3), align 8
  br label %191

191:                                              ; preds = %190, %189
  br label %192

192:                                              ; preds = %191, %182
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 15
  %195 = load i32, i32* %194, align 4
  %196 = ashr i32 %195, 8
  store i32 %196, i32* %1, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  store i64 0, i64* %202, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  store i64 0, i64* %205, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i64 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 3
  store i64 0, i64* %214, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 1
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  store i64 0, i64* %220, align 8
  %221 = load i32, i32* %1, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 5), align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %224 = call i32 @ReadWindowData(i32 %221, %struct.TYPE_10__* %222, %struct.TYPE_9__* %223)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 3), align 8
  %225 = load i32, i32* %1, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Vdp2Regs, align 8
  %227 = call i32 @ReadLineWindowData(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 4), i32 %225, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 3), i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vdp1draw_info, i32 0, i32 2), %struct.TYPE_9__* %226)
  ret void
}

declare dso_local i32 @Vdp2DrawBackScreen(...) #1

declare dso_local i32 @ReadWindowData(i32, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @ReadLineWindowData(i32*, i32, i64*, i64*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
