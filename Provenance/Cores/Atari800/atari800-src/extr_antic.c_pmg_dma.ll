; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_pmg_dma.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_pmg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_player_dma_enabled = common dso_local global i64 0, align 8
@ANTIC_player_gra_enabled = common dso_local global i64 0, align 8
@singleline = common dso_local global i64 0, align 8
@ANTIC_xe_ptr = common dso_local global i32* null, align 8
@pmbase_s = common dso_local global i32 0, align 4
@ANTIC_ypos = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i32* null, align 8
@GTIA_GRAFP0 = common dso_local global i32 0, align 4
@GTIA_GRAFP1 = common dso_local global i32 0, align 4
@GTIA_GRAFP2 = common dso_local global i32 0, align 4
@GTIA_GRAFP3 = common dso_local global i32 0, align 4
@GTIA_VDELAY = common dso_local global i32 0, align 4
@pmbase_d = common dso_local global i32 0, align 4
@ANTIC_xpos = common dso_local global i64 0, align 8
@ANTIC_missile_dma_enabled = common dso_local global i64 0, align 8
@ANTIC_missile_gra_enabled = common dso_local global i64 0, align 8
@GTIA_GRAFM = common dso_local global i32 0, align 4
@hold_missiles_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmg_dma() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @ANTIC_player_dma_enabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %171

5:                                                ; preds = %0
  %6 = load i64, i64* @ANTIC_player_gra_enabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %168

8:                                                ; preds = %5
  %9 = load i64, i64* @singleline, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %8
  %12 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i32, i32* @pmbase_s, align 4
  %16 = icmp slt i32 %15, 32768
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* @pmbase_s, align 4
  %19 = icmp sge i32 %18, 16384
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %22 = load i32, i32* @pmbase_s, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = getelementptr inbounds i32, i32* %24, i64 -16384
  %26 = load i32, i32* @ANTIC_ypos, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %1, align 8
  br label %37

29:                                               ; preds = %17, %14, %11
  %30 = load i32*, i32** @MEMORY_mem, align 8
  %31 = load i32, i32* @pmbase_s, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* @ANTIC_ypos, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %1, align 8
  br label %37

37:                                               ; preds = %29, %20
  %38 = load i32, i32* @ANTIC_ypos, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1024
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @GTIA_GRAFP0, align 4
  %45 = load i32*, i32** %1, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1280
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @GTIA_GRAFP1, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1536
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* @GTIA_GRAFP2, align 4
  %51 = load i32*, i32** %1, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1792
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @GTIA_GRAFP3, align 4
  br label %87

54:                                               ; preds = %37
  %55 = load i32, i32* @GTIA_VDELAY, align 4
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %1, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1024
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* @GTIA_GRAFP0, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @GTIA_VDELAY, align 4
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %1, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1280
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* @GTIA_GRAFP1, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @GTIA_VDELAY, align 4
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %1, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1536
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* @GTIA_GRAFP2, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @GTIA_VDELAY, align 4
  %80 = and i32 %79, 128
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %1, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1792
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* @GTIA_GRAFP3, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %41
  br label %167

88:                                               ; preds = %8
  %89 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32, i32* @pmbase_d, align 4
  %93 = icmp slt i32 %92, 32768
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, i32* @pmbase_d, align 4
  %96 = icmp sge i32 %95, 16384
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %99 = load i32, i32* @pmbase_d, align 4
  %100 = sub nsw i32 %99, 16384
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* @ANTIC_ypos, align 4
  %104 = ashr i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32* %106, i32** %1, align 8
  br label %116

107:                                              ; preds = %94, %91, %88
  %108 = load i32*, i32** @MEMORY_mem, align 8
  %109 = load i32, i32* @pmbase_d, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* @ANTIC_ypos, align 4
  %113 = ashr i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32* %115, i32** %1, align 8
  br label %116

116:                                              ; preds = %107, %97
  %117 = load i32, i32* @ANTIC_ypos, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load i32*, i32** %1, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 512
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* @GTIA_GRAFP0, align 4
  %124 = load i32*, i32** %1, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 640
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* @GTIA_GRAFP1, align 4
  %127 = load i32*, i32** %1, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 768
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* @GTIA_GRAFP2, align 4
  %130 = load i32*, i32** %1, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 896
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* @GTIA_GRAFP3, align 4
  br label %166

133:                                              ; preds = %116
  %134 = load i32, i32* @GTIA_VDELAY, align 4
  %135 = and i32 %134, 16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32*, i32** %1, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 512
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* @GTIA_GRAFP0, align 4
  br label %141

141:                                              ; preds = %137, %133
  %142 = load i32, i32* @GTIA_VDELAY, align 4
  %143 = and i32 %142, 32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32*, i32** %1, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 640
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* @GTIA_GRAFP1, align 4
  br label %149

149:                                              ; preds = %145, %141
  %150 = load i32, i32* @GTIA_VDELAY, align 4
  %151 = and i32 %150, 64
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32*, i32** %1, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 768
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* @GTIA_GRAFP2, align 4
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i32, i32* @GTIA_VDELAY, align 4
  %159 = and i32 %158, 128
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32*, i32** %1, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 896
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* @GTIA_GRAFP3, align 4
  br label %165

165:                                              ; preds = %161, %157
  br label %166

166:                                              ; preds = %165, %120
  br label %167

167:                                              ; preds = %166, %87
  br label %168

168:                                              ; preds = %167, %5
  %169 = load i64, i64* @ANTIC_xpos, align 8
  %170 = add nsw i64 %169, 4
  store i64 %170, i64* @ANTIC_xpos, align 8
  br label %171

171:                                              ; preds = %168, %0
  %172 = load i64, i64* @ANTIC_missile_dma_enabled, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %249

174:                                              ; preds = %171
  %175 = load i64, i64* @ANTIC_missile_gra_enabled, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %246

177:                                              ; preds = %174
  %178 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %208

180:                                              ; preds = %177
  %181 = load i32, i32* @pmbase_s, align 4
  %182 = icmp slt i32 %181, 32768
  br i1 %182, label %183, label %208

183:                                              ; preds = %180
  %184 = load i32, i32* @pmbase_s, align 4
  %185 = icmp sge i32 %184, 16384
  br i1 %185, label %186, label %208

186:                                              ; preds = %183
  %187 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %188 = load i64, i64* @singleline, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* @pmbase_s, align 4
  %192 = load i32, i32* @ANTIC_ypos, align 4
  %193 = add nsw i32 %191, %192
  %194 = add nsw i32 %193, 768
  %195 = sub nsw i32 %194, 16384
  br label %203

196:                                              ; preds = %186
  %197 = load i32, i32* @pmbase_d, align 4
  %198 = load i32, i32* @ANTIC_ypos, align 4
  %199 = ashr i32 %198, 1
  %200 = add nsw i32 %197, %199
  %201 = add nsw i32 %200, 384
  %202 = sub nsw i32 %201, 16384
  br label %203

203:                                              ; preds = %196, %190
  %204 = phi i32 [ %195, %190 ], [ %202, %196 ]
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %187, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %2, align 4
  br label %225

208:                                              ; preds = %183, %180, %177
  %209 = load i64, i64* @singleline, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* @pmbase_s, align 4
  %213 = load i32, i32* @ANTIC_ypos, align 4
  %214 = add nsw i32 %212, %213
  %215 = add nsw i32 %214, 768
  br label %222

216:                                              ; preds = %208
  %217 = load i32, i32* @pmbase_d, align 4
  %218 = load i32, i32* @ANTIC_ypos, align 4
  %219 = ashr i32 %218, 1
  %220 = add nsw i32 %217, %219
  %221 = add nsw i32 %220, 384
  br label %222

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %215, %211 ], [ %221, %216 ]
  %224 = call i32 @MEMORY_dGetByte(i32 %223)
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %222, %203
  %226 = load i32, i32* @ANTIC_ypos, align 4
  %227 = and i32 %226, 1
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i32, i32* %2, align 4
  br label %244

231:                                              ; preds = %225
  %232 = load i32, i32* @GTIA_GRAFM, align 4
  %233 = load i32, i32* %2, align 4
  %234 = xor i32 %232, %233
  %235 = load i32*, i32** @hold_missiles_tab, align 8
  %236 = load i32, i32* @GTIA_VDELAY, align 4
  %237 = and i32 %236, 15
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %234, %240
  %242 = load i32, i32* %2, align 4
  %243 = xor i32 %241, %242
  br label %244

244:                                              ; preds = %231, %229
  %245 = phi i32 [ %230, %229 ], [ %243, %231 ]
  store i32 %245, i32* @GTIA_GRAFM, align 4
  br label %246

246:                                              ; preds = %244, %174
  %247 = load i64, i64* @ANTIC_xpos, align 8
  %248 = add nsw i64 %247, 1
  store i64 %248, i64* @ANTIC_xpos, align 8
  br label %249

249:                                              ; preds = %246, %171
  ret void
}

declare dso_local i32 @MEMORY_dGetByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
