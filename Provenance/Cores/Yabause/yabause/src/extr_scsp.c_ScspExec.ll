; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 (...)*, i32 (i32*, i32*, i32)* }

@scspsoundlen = common dso_local global i32 0, align 4
@scsplines = common dso_local global i32 0, align 4
@ScspInternalVars = common dso_local global %struct.TYPE_5__* null, align 8
@scspframeaccurate = common dso_local global i64 0, align 8
@scspsoundgenpos = common dso_local global i32 0, align 4
@scspsoundbufsize = common dso_local global i32 0, align 4
@scspsoundoutleft = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WARNING: Sound buffer overrun, %lu samples\0A\00", align 1
@scspchannel = common dso_local global %struct.TYPE_4__* null, align 8
@SNDCore = common dso_local global %struct.TYPE_6__* null, align 8
@stereodata16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspExec() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @scspsoundlen, align 4
  %7 = shl i32 %6, 16
  %8 = load i32, i32* @scsplines, align 4
  %9 = sdiv i32 %8, 2
  %10 = add nsw i32 %7, %9
  %11 = load i32, i32* @scsplines, align 4
  %12 = sdiv i32 %10, %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 16
  %21 = call i32 @scsp_update_timer(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 65535
  store i32 %25, i32* %23, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @scsplines, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %110

35:                                               ; preds = %0
  %36 = load i32, i32* @scsplines, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScspInternalVars, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* @scspframeaccurate, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %109

45:                                               ; preds = %35
  %46 = load i32, i32* @scspsoundgenpos, align 4
  %47 = load i32, i32* @scspsoundlen, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @scspsoundbufsize, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* @scspsoundgenpos, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* @scspsoundoutleft, align 4
  %54 = load i32, i32* @scspsoundlen, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @scspsoundbufsize, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32, i32* @scspsoundoutleft, align 4
  %60 = load i32, i32* @scspsoundlen, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @scspsoundbufsize, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @SCSPLOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @scspsoundoutleft, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* @scspsoundoutleft, align 4
  br label %70

70:                                               ; preds = %58, %52
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @scspsoundgenpos, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = bitcast i32* %77 to i64*
  store i64* %78, i64** %2, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @scspsoundgenpos, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = bitcast i32* %85 to i64*
  store i64* %86, i64** %3, align 8
  %87 = load i64*, i64** %2, align 8
  %88 = load i32, i32* @scspsoundlen, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memset(i64* %87, i32 0, i32 %91)
  %93 = load i64*, i64** %3, align 8
  %94 = load i32, i32* @scspsoundlen, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memset(i64* %93, i32 0, i32 %97)
  %99 = load i64*, i64** %2, align 8
  %100 = load i64*, i64** %3, align 8
  %101 = load i32, i32* @scspsoundlen, align 4
  %102 = call i32 @scsp_update(i64* %99, i64* %100, i32 %101)
  %103 = load i32, i32* @scspsoundlen, align 4
  %104 = load i32, i32* @scspsoundgenpos, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* @scspsoundgenpos, align 4
  %106 = load i32, i32* @scspsoundlen, align 4
  %107 = load i32, i32* @scspsoundoutleft, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* @scspsoundoutleft, align 4
  br label %109

109:                                              ; preds = %70, %35
  br label %110

110:                                              ; preds = %109, %0
  %111 = load i64, i64* @scspframeaccurate, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %180

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %158, %113
  %115 = load i32, i32* @scspsoundoutleft, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SNDCore, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (...)*, i32 (...)** %119, align 8
  %121 = call i32 (...) %120()
  store i32 %121, i32* %1, align 4
  %122 = icmp sgt i32 %121, 0
  br label %123

123:                                              ; preds = %117, %114
  %124 = phi i1 [ false, %114 ], [ %122, %117 ]
  br i1 %124, label %125, label %179

125:                                              ; preds = %123
  %126 = load i32, i32* @scspsoundgenpos, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* @scspsoundoutleft, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %127, %129
  store i64 %130, i64* %5, align 8
  %131 = load i64, i64* %5, align 8
  %132 = icmp ult i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load i32, i32* @scspsoundbufsize, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %5, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %133, %125
  %139 = load i32, i32* %1, align 4
  %140 = load i32, i32* @scspsoundoutleft, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* @scspsoundoutleft, align 4
  store i32 %143, i32* %1, align 4
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* @scspsoundbufsize, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %5, align 8
  %150 = sub i64 %148, %149
  %151 = icmp ugt i64 %146, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32, i32* @scspsoundbufsize, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %5, align 8
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %1, align 4
  br label %158

158:                                              ; preds = %152, %144
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SNDCore, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %5, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %1, align 4
  %175 = call i32 %161(i32* %167, i32* %173, i32 %174)
  %176 = load i32, i32* %1, align 4
  %177 = load i32, i32* @scspsoundoutleft, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* @scspsoundoutleft, align 4
  br label %114

179:                                              ; preds = %123
  br label %239

180:                                              ; preds = %110
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SNDCore, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32 (...)*, i32 (...)** %182, align 8
  %184 = call i32 (...) %183()
  store i32 %184, i32* %1, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %238

186:                                              ; preds = %180
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* @scspsoundlen, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* @scspsoundlen, align 4
  store i32 %191, i32* %1, align 4
  br label %192

192:                                              ; preds = %190, %186
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = bitcast i32* %196 to i64*
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 4, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @memset(i64* %197, i32 0, i32 %201)
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = bitcast i32* %206 to i64*
  %208 = load i32, i32* %1, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 4, %209
  %211 = trunc i64 %210 to i32
  %212 = call i32 @memset(i64* %207, i32 0, i32 %211)
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = bitcast i32* %216 to i64*
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = bitcast i32* %221 to i64*
  %223 = load i32, i32* %1, align 4
  %224 = call i32 @scsp_update(i64* %217, i64* %222, i32 %223)
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SNDCore, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @scspchannel, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %1, align 4
  %237 = call i32 %227(i32* %231, i32* %235, i32 %236)
  br label %238

238:                                              ; preds = %192, %180
  br label %239

239:                                              ; preds = %238, %179
  %240 = call i32 (...) @scsp_update_monitor()
  ret void
}

declare dso_local i32 @scsp_update_timer(i32) #1

declare dso_local i32 @SCSPLOG(i8*, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @scsp_update(i64*, i64*, i32) #1

declare dso_local i32 @scsp_update_monitor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
