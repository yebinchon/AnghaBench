; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevOrder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTevOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32*, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@GX_MAX_TEXMAP = common dso_local global i32 0, align 4
@GX_MAXCOORD = common dso_local global i32 0, align 4
@GX_ALPHA_BUMP = common dso_local global i32 0, align 4
@GX_COLORNULL = common dso_local global i32 0, align 4
@_gxtevcolid = common dso_local global i32* null, align 8
@GX_TEXMAP_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTevOrder(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @_SHIFTR(i32 %14, i32 1, i32 3)
  %16 = add nsw i32 3, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %17, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, -257
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @GX_MAX_TEXMAP, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GX_MAXCOORD, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @_SHIFTL(i32 1, i32 %36, i32 1)
  %38 = xor i32 %37, -1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %51

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @_SHIFTL(i32 1, i32 %45, i32 1)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %43, %35
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %144

55:                                               ; preds = %51
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -28673
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @_SHIFTL(i32 %64, i32 12, i32 3)
  %66 = or i32 %63, %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -229377
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @_SHIFTL(i32 %81, i32 15, i32 3)
  %83 = or i32 %80, %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* @GX_ALPHA_BUMP, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @GX_COLORNULL, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %55
  %95 = load i32*, i32** @_gxtevcolid, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %55
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, -3670017
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @_SHIFTL(i32 %109, i32 19, i32 3)
  %111 = or i32 %108, %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  store i32 1, i32* %12, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %100
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 256
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %100
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %125, %121
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, -262145
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @_SHIFTL(i32 %135, i32 18, i32 1)
  %137 = or i32 %134, %136
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  br label %233

144:                                              ; preds = %51
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, -8
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, 7
  %155 = or i32 %152, %154
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, -57
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @_SHIFTL(i32 %170, i32 3, i32 3)
  %172 = or i32 %169, %171
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* @GX_ALPHA_BUMP, align 4
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @GX_COLORNULL, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %144
  %184 = load i32*, i32** @_gxtevcolid, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %183, %144
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, -897
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @_SHIFTL(i32 %198, i32 7, i32 3)
  %200 = or i32 %197, %199
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %200, i32* %206, align 4
  store i32 1, i32* %12, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @GX_TEXMAP_NULL, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %189
  %211 = load i32, i32* %7, align 4
  %212 = and i32 %211, 256
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210, %189
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %214, %210
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, -65
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @_SHIFTL(i32 %224, i32 6, i32 1)
  %226 = or i32 %223, %225
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %226, i32* %232, align 4
  br label %233

233:                                              ; preds = %215, %126
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @GX_LOAD_BP_REG(i32 %240)
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, 1
  store i32 %245, i32* %243, align 8
  ret void
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
