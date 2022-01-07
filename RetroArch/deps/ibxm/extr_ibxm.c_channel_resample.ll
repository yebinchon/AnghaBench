; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_resample.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i32, i32, %struct.sample* }
%struct.sample = type { i16*, i32, i32 }

@FP_SHIFT = common dso_local global i32 0, align 4
@FP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, i32*, i32, i32, i32, i32)* @channel_resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_resample(%struct.channel* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sample*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16*, align 8
  store %struct.channel* %0, %struct.channel** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %27 = load %struct.channel*, %struct.channel** %7, align 8
  %28 = getelementptr inbounds %struct.channel, %struct.channel* %27, i32 0, i32 5
  %29 = load %struct.sample*, %struct.sample** %28, align 8
  store %struct.sample* %29, %struct.sample** %13, align 8
  %30 = load %struct.channel*, %struct.channel** %7, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 5
  %32 = load %struct.sample*, %struct.sample** %31, align 8
  %33 = getelementptr inbounds %struct.sample, %struct.sample* %32, i32 0, i32 0
  %34 = load i16*, i16** %33, align 8
  store i16* %34, i16** %26, align 8
  %35 = load %struct.channel*, %struct.channel** %7, align 8
  %36 = getelementptr inbounds %struct.channel, %struct.channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %239

39:                                               ; preds = %6
  %40 = load %struct.channel*, %struct.channel** %7, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.channel*, %struct.channel** %7, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 255, %45
  %47 = mul nsw i32 %42, %46
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %14, align 4
  %49 = load %struct.channel*, %struct.channel** %7, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.channel*, %struct.channel** %7, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = ashr i32 %55, 8
  store i32 %56, i32* %15, align 4
  %57 = load %struct.channel*, %struct.channel** %7, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %16, align 4
  %60 = load %struct.channel*, %struct.channel** %7, align 8
  %61 = getelementptr inbounds %struct.channel, %struct.channel* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load %struct.channel*, %struct.channel** %7, align 8
  %64 = getelementptr inbounds %struct.channel, %struct.channel* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FP_SHIFT, align 4
  %67 = sub nsw i32 %66, 3
  %68 = shl i32 %65, %67
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, 3
  %71 = sdiv i32 %68, %70
  store i32 %71, i32* %18, align 4
  %72 = load %struct.sample*, %struct.sample** %13, align 8
  %73 = getelementptr inbounds %struct.sample, %struct.sample* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %19, align 4
  %75 = load %struct.sample*, %struct.sample** %13, align 8
  %76 = getelementptr inbounds %struct.sample, %struct.sample* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 2
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = mul nsw i32 %84, 2
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %171

88:                                               ; preds = %39
  br label %89

89:                                               ; preds = %112, %88
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %170

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* %19, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %105, %100
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %16, align 4
  br label %101

109:                                              ; preds = %101
  br label %111

110:                                              ; preds = %97
  br label %170

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111, %93
  %113 = load i16*, i16** %26, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %113, i64 %115
  %117 = load i16, i16* %116, align 2
  %118 = sext i16 %117 to i32
  store i32 %118, i32* %25, align 4
  %119 = load i16*, i16** %26, align 8
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %119, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = sext i16 %124 to i32
  %126 = load i32, i32* %25, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %24, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %17, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* @FP_SHIFT, align 4
  %132 = ashr i32 %130, %131
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %23, align 4
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %14, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* @FP_SHIFT, align 4
  %139 = ashr i32 %137, %138
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %21, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %139
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %15, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* @FP_SHIFT, align 4
  %151 = ashr i32 %149, %150
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %21, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %151
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* @FP_SHIFT, align 4
  %164 = ashr i32 %162, %163
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* @FP_MASK, align 4
  %168 = load i32, i32* %17, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %17, align 4
  br label %89

170:                                              ; preds = %110, %89
  br label %238

171:                                              ; preds = %39
  br label %172

172:                                              ; preds = %195, %171
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %22, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %237

176:                                              ; preds = %172
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %20, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load i32, i32* %19, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %188, %183
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %20, align 4
  %187 = icmp sge i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %190, %189
  store i32 %191, i32* %16, align 4
  br label %184

192:                                              ; preds = %184
  br label %194

193:                                              ; preds = %180
  br label %237

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194, %176
  %196 = load i16*, i16** %26, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i16, i16* %196, i64 %198
  %200 = load i16, i16* %199, align 2
  %201 = sext i16 %200 to i32
  store i32 %201, i32* %23, align 4
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %14, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* @FP_SHIFT, align 4
  %206 = ashr i32 %204, %205
  %207 = load i32*, i32** %8, align 8
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %21, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %206
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %23, align 4
  %215 = load i32, i32* %15, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* @FP_SHIFT, align 4
  %218 = ashr i32 %216, %217
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %218
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @FP_SHIFT, align 4
  %231 = ashr i32 %229, %230
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* @FP_MASK, align 4
  %235 = load i32, i32* %17, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %17, align 4
  br label %172

237:                                              ; preds = %193, %172
  br label %238

238:                                              ; preds = %237, %170
  br label %239

239:                                              ; preds = %238, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
