; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_Sys_IsLANAddress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_Sys_IsLANAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@NA_LOOPBACK = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@NA_IPX = common dso_local global i64 0, align 8
@NA_IP = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@numIP = common dso_local global i32 0, align 4
@localIP = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_IsLANAddress(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_3__* %4 to { i64, i32* }*
  %7 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %6, i32 0, i32 1
  store i32* %1, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NA_LOOPBACK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @qtrue, align 4
  store i32 %14, i32* %3, align 4
  br label %252

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NA_IPX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %3, align 4
  br label %252

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NA_IP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %3, align 4
  br label %252

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 127
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @qtrue, align 4
  store i32 %54, i32* %3, align 4
  br label %252

55:                                               ; preds = %47, %41, %35, %29
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %83, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @numIP, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32**, i32*** @localIP, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %71, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @qtrue, align 4
  store i32 %81, i32* %3, align 4
  br label %252

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %63

86:                                               ; preds = %63
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %3, align 4
  br label %252

88:                                               ; preds = %55
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 192
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %168

95:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %163, %95
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @numIP, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %166

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32**, i32*** @localIP, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %104, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %100
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32**, i32*** @localIP, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %117, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = load i32, i32* @qtrue, align 4
  store i32 %127, i32* %3, align 4
  br label %252

128:                                              ; preds = %113, %100
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 172
  br i1 %133, label %134, label %162

134:                                              ; preds = %128
  %135 = load i32**, i32*** @localIP, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 172
  br i1 %142, label %143, label %162

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 240
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = load i32**, i32*** @localIP, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 240
  %159 = icmp eq i32 %158, 16
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* @qtrue, align 4
  store i32 %161, i32* %3, align 4
  br label %252

162:                                              ; preds = %150, %143, %134, %128
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %96

166:                                              ; preds = %96
  %167 = load i32, i32* @qfalse, align 4
  store i32 %167, i32* %3, align 4
  br label %252

168:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %247, %168
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @numIP, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %250

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32**, i32*** @localIP, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %177, %184
  br i1 %185, label %186, label %214

186:                                              ; preds = %173
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32**, i32*** @localIP, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %190, %197
  br i1 %198, label %199, label %214

199:                                              ; preds = %186
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32**, i32*** @localIP, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %203, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %199
  %213 = load i32, i32* @qtrue, align 4
  store i32 %213, i32* %3, align 4
  br label %252

214:                                              ; preds = %199, %186, %173
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 192
  br i1 %219, label %220, label %246

220:                                              ; preds = %214
  %221 = load i32**, i32*** @localIP, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32*, i32** %221, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 192
  br i1 %228, label %229, label %246

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 168
  br i1 %234, label %235, label %246

235:                                              ; preds = %229
  %236 = load i32**, i32*** @localIP, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 168
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = load i32, i32* @qtrue, align 4
  store i32 %245, i32* %3, align 4
  br label %252

246:                                              ; preds = %235, %229, %220, %214
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  br label %169

250:                                              ; preds = %169
  %251 = load i32, i32* @qfalse, align 4
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %250, %244, %212, %166, %160, %126, %86, %80, %53, %27, %20, %13
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
