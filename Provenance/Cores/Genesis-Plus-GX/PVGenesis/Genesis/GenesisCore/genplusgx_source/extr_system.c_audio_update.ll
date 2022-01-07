; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_system.c_audio_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_system.c_audio_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }
%struct.TYPE_4__ = type { i32, i32, i64 }

@mcycles_vdp = common dso_local global i32 0, align 4
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_MCD = common dso_local global i64 0, align 8
@snd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llp = common dso_local global i32 0, align 4
@rrp = common dso_local global i32 0, align 4
@eq = common dso_local global i32 0, align 4
@ALIGN_SND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audio_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32, i32* @mcycles_vdp, align 4
  %13 = call i32 @sound_update(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @system_hw, align 8
  %15 = load i64, i64* @SYSTEM_MCD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pcm_update(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @cdd_read_audio(i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @blip_read_samples(i32 %27, i32* %29, i32 %30)
  %32 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @blip_read_samples(i32 %36, i32* %37, i32 %38)
  %40 = load i64, i64* @system_hw, align 8
  %41 = load i64, i64* @SYSTEM_MCD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %22
  %44 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @blip_mix_samples(i32 %48, i32* %50, i32 %51)
  %53 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @blip_mix_samples(i32 %57, i32* %58, i32 %59)
  %61 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %2, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @blip_mix_samples(i32 %65, i32* %67, i32 %68)
  %70 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd, i32 0, i32 0), align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @blip_mix_samples(i32 %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %43, %22
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %174

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  store i32 %82, i32* %4, align 4
  %83 = load i32*, i32** %2, align 8
  store i32* %83, i32** %5, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %81
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 1), align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 65536, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @llp, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @rrp, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %122, %87
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %96, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %105, %110
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = ashr i32 %112, 16
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = ashr i32 %114, 16
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %5, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %93
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %93, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* @llp, align 4
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* @rrp, align 4
  br label %173

129:                                              ; preds = %81
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %167, %133
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @do_3band(i32* @eq, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @do_3band(i32* @eq, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 32767
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  store i32 32767, i32* %6, align 4
  br label %151

146:                                              ; preds = %134
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, -32768
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 -32768, i32* %6, align 4
  br label %150

150:                                              ; preds = %149, %146
  br label %151

151:                                              ; preds = %150, %145
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %152, 32767
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 32767, i32* %7, align 4
  br label %160

155:                                              ; preds = %151
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, -32768
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 -32768, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %155
  br label %160

160:                                              ; preds = %159, %154
  %161 = load i32, i32* %6, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %5, align 8
  store i32 %161, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %5, align 8
  store i32 %164, i32* %165, align 4
  br label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %134, label %171

171:                                              ; preds = %167
  br label %172

172:                                              ; preds = %171, %129
  br label %173

173:                                              ; preds = %172, %126
  br label %174

174:                                              ; preds = %173, %78
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 2), align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %174
  %178 = load i32, i32* %3, align 4
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %194, %177
  %180 = load i32*, i32** %2, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %2, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  %187 = sdiv i32 %186, 2
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32*, i32** %2, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %2, align 8
  store i32 %188, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32*, i32** %2, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %2, align 8
  store i32 %191, i32* %192, align 4
  br label %194

194:                                              ; preds = %179
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %179, label %198

198:                                              ; preds = %194
  br label %199

199:                                              ; preds = %198, %174
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @sound_update(i32) #1

declare dso_local i32 @pcm_update(i32) #1

declare dso_local i32 @cdd_read_audio(i32) #1

declare dso_local i32 @blip_read_samples(i32, i32*, i32) #1

declare dso_local i32 @blip_mix_samples(i32, i32*, i32) #1

declare dso_local i32 @do_3band(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
