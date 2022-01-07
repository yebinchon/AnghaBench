; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_DoDMA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_DoDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAMemoryType = common dso_local global i32* null, align 8
@HighWram = common dso_local global i32* null, align 8
@LowWram = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @DoDMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoDMA(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %172

28:                                               ; preds = %5
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 535822336
  %31 = icmp eq i32 %30, 2097152
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 503316480
  %35 = icmp eq i32 %34, 100663296
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 535822336
  %39 = icmp eq i32 %38, 94371840
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 502267904
  %43 = icmp eq i32 %42, 96468992
  br label %44

44:                                               ; preds = %40, %36, %32, %28
  %45 = phi i1 [ true, %36 ], [ true, %32 ], [ true, %28 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 536870911
  %49 = icmp sge i32 %48, 94371840
  br i1 %49, label %50, label %122

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 536870911
  %53 = icmp slt i32 %52, 100597760
  br i1 %53, label %54, label %122

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @MappedMemoryReadWord(i32 %62)
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i32 @MappedMemoryReadWord(i32 %66)
  %68 = or i32 %64, %67
  store i32 %68, i32* %13, align 4
  br label %72

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @MappedMemoryReadLong(i32 %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %69, %61
  br label %73

73:                                               ; preds = %77, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 16
  %81 = call i32 @MappedMemoryWriteWord(i32 %78, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @MappedMemoryWriteWord(i32 %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 4
  store i32 %92, i32* %12, align 4
  br label %73

93:                                               ; preds = %73
  br label %121

94:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %99, %94
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @MappedMemoryReadLong(i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %15, align 4
  %104 = ashr i32 %103, 16
  %105 = call i32 @MappedMemoryWriteWord(i32 %102, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @MappedMemoryWriteWord(i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %14, align 4
  br label %95

120:                                              ; preds = %95
  br label %121

121:                                              ; preds = %120, %93
  br label %171

122:                                              ; preds = %50, %44
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @MappedMemoryReadLong(i32 %127)
  store i32 %128, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %133, %126
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @MappedMemoryWriteLong(i32 %134, i32 %135)
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 4
  store i32 %144, i32* %18, align 4
  br label %129

145:                                              ; preds = %129
  br label %165

146:                                              ; preds = %122
  store i32 0, i32* %19, align 4
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @MappedMemoryReadLong(i32 %153)
  %155 = call i32 @MappedMemoryWriteLong(i32 %152, i32 %154)
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %6, align 4
  %158 = add i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %19, align 4
  br label %147

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %145
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %167, %168
  %170 = call i32 @SH2WriteNotify(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %165, %121
  br label %270

172:                                              ; preds = %5
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, 536870911
  %175 = icmp sge i32 %174, 94371840
  br i1 %175, label %176, label %245

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = and i32 %177, 536870911
  %179 = icmp slt i32 %178, 100597760
  br i1 %179, label %180, label %245

180:                                              ; preds = %176
  store i32 0, i32* %20, align 4
  %181 = load i32, i32* %6, align 4
  %182 = and i32 %181, 2
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %180
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @MappedMemoryReadWord(i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %21, align 4
  %189 = call i32 @MappedMemoryWriteWord(i32 %187, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %20, align 4
  br label %197

197:                                              ; preds = %184, %180
  %198 = load i32, i32* %10, align 4
  %199 = icmp sge i32 %198, 3
  br i1 %199, label %200, label %227

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %206, %200
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %10, align 4
  %204 = sub nsw i32 %203, 2
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %201
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @MappedMemoryReadLong(i32 %207)
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %22, align 4
  %211 = ashr i32 %210, 16
  %212 = call i32 @MappedMemoryWriteWord(i32 %209, i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %8, align 4
  %215 = add i32 %214, %213
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %22, align 4
  %218 = call i32 @MappedMemoryWriteWord(i32 %216, i32 %217)
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %8, align 4
  %221 = add i32 %220, %219
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 4
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 4
  store i32 %225, i32* %20, align 4
  br label %201

226:                                              ; preds = %201
  br label %227

227:                                              ; preds = %226, %197
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %227
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @MappedMemoryReadWord(i32 %232)
  store i32 %233, i32* %23, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %23, align 4
  %236 = call i32 @MappedMemoryWriteWord(i32 %234, i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %8, align 4
  %239 = add i32 %238, %237
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 2
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* %20, align 4
  br label %244

244:                                              ; preds = %231, %227
  br label %269

245:                                              ; preds = %176, %172
  store i32 0, i32* %24, align 4
  %246 = load i32, i32* %8, align 4
  store i32 %246, i32* %25, align 4
  br label %247

247:                                              ; preds = %251, %245
  %248 = load i32, i32* %24, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %263

251:                                              ; preds = %247
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @MappedMemoryReadLong(i32 %253)
  %255 = call i32 @MappedMemoryWriteLong(i32 %252, i32 %254)
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, 4
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %8, align 4
  %260 = add i32 %259, %258
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %24, align 4
  %262 = add nsw i32 %261, 4
  store i32 %262, i32* %24, align 4
  br label %247

263:                                              ; preds = %247
  %264 = load i32, i32* %25, align 4
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* %25, align 4
  %267 = sub nsw i32 %265, %266
  %268 = call i32 @SH2WriteNotify(i32 %264, i32 %267)
  br label %269

269:                                              ; preds = %263, %244
  br label %270

270:                                              ; preds = %269, %171
  ret void
}

declare dso_local i32 @MappedMemoryReadWord(i32) #1

declare dso_local i32 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @MappedMemoryWriteWord(i32, i32) #1

declare dso_local i32 @MappedMemoryWriteLong(i32, i32) #1

declare dso_local i32 @SH2WriteNotify(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
