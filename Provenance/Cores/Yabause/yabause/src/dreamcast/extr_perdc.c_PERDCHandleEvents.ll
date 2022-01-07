; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_perdc.c_PERDCHandleEvents.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_perdc.c_PERDCHandleEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MAPLE_FUNC_CONTROLLER = common dso_local global i32 0, align 4
@CONT_DPAD_UP = common dso_local global i32 0, align 4
@pad1 = common dso_local global %struct.TYPE_4__* null, align 8
@CONT_DPAD_DOWN = common dso_local global i32 0, align 4
@CONT_DPAD_RIGHT = common dso_local global i32 0, align 4
@CONT_DPAD_LEFT = common dso_local global i32 0, align 4
@CONT_START = common dso_local global i32 0, align 4
@CONT_A = common dso_local global i32 0, align 4
@CONT_B = common dso_local global i32 0, align 4
@CONT_X = common dso_local global i32 0, align 4
@CONT_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PERDCHandleEvents() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i32, i32* @MAPLE_FUNC_CONTROLLER, align 4
  %4 = call i32* @maple_enum_type(i32 0, i32 %3)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %264

7:                                                ; preds = %0
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @maple_dev_status(i32* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %263

13:                                               ; preds = %7
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CONT_DPAD_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 239
  store i32 %25, i32* %23, align 4
  br label %32

26:                                               ; preds = %13
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 16
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CONT_DPAD_DOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 223
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %32
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 32
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CONT_DPAD_RIGHT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 127
  store i32 %63, i32* %61, align 4
  br label %70

64:                                               ; preds = %51
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, 128
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CONT_DPAD_LEFT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 191
  store i32 %82, i32* %80, align 4
  br label %89

83:                                               ; preds = %70
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 64
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CONT_START, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 247
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, 8
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CONT_A, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 251
  store i32 %120, i32* %118, align 4
  br label %127

121:                                              ; preds = %108
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 4
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CONT_B, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 254
  store i32 %139, i32* %137, align 4
  br label %146

140:                                              ; preds = %127
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %134
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CONT_X, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 191
  store i32 %159, i32* %157, align 4
  br label %167

160:                                              ; preds = %146
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, 64
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %160, %153
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CONT_Y, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %167
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 223
  store i32 %180, i32* %178, align 4
  br label %188

181:                                              ; preds = %167
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, 32
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %181, %174
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 20
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 127
  store i32 %199, i32* %197, align 4
  br label %207

200:                                              ; preds = %188
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, 128
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200, %193
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %210, 20
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 247
  store i32 %218, i32* %216, align 4
  br label %226

219:                                              ; preds = %207
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, 8
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %219, %212
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %229, 20
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, 253
  store i32 %236, i32* %234, align 4
  br label %243

237:                                              ; preds = %226
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, 2
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %237, %231
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 20
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 239
  store i32 %254, i32* %252, align 4
  br label %262

255:                                              ; preds = %243
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pad1, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, 16
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %255, %248
  br label %263

263:                                              ; preds = %262, %7
  br label %264

264:                                              ; preds = %263, %0
  %265 = call i32 (...) @YabauseExec()
  ret i32 0
}

declare dso_local i32* @maple_enum_type(i32, i32) #1

declare dso_local i64 @maple_dev_status(i32*) #1

declare dso_local i32 @YabauseExec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
