; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_filter_csm.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_filter_csm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @nlmeans_filter_csm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmeans_filter_csm(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %24, align 4
  br label %39

39:                                               ; preds = %243, %6
  %40 = load i32, i32* %24, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %246

43:                                               ; preds = %39
  store i32 0, i32* %25, align 4
  br label %44

44:                                               ; preds = %239, %43
  %45 = load i32, i32* %25, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %242

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %26, align 4
  br label %50

50:                                               ; preds = %110, %48
  %51 = load i32, i32* %26, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %27, align 4
  br label %56

56:                                               ; preds = %105, %54
  %57 = load i32, i32* %27, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %56
  %61 = load i32, i32* %26, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %27, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %109

67:                                               ; preds = %63, %60
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %27, align 4
  %72 = add nsw i32 %70, %71
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %67
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %23, align 4
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %17, align 4
  br label %109

92:                                               ; preds = %85, %67
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %23, align 4
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %102, %98
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %27, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %27, align 4
  br label %56

108:                                              ; preds = %56
  br label %109

109:                                              ; preds = %108, %89, %66
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %26, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %26, align 4
  br label %50

113:                                              ; preds = %50
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %114, %115
  %117 = sdiv i32 %116, 2
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %22, align 4
  %120 = add nsw i32 %118, %119
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %22, align 4
  %124 = add nsw i32 %122, %123
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %126, %127
  %129 = sdiv i32 %128, 2
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %130, %131
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %21, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %24, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %25, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %113
  %148 = load i32, i32* %16, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %24, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %25, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %148, i32* %157, align 4
  br label %238

158:                                              ; preds = %113
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load i32, i32* %17, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %24, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %163, i32* %172, align 4
  br label %237

173:                                              ; preds = %158
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load i32, i32* %18, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %24, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %178, i32* %187, align 4
  br label %236

188:                                              ; preds = %173
  %189 = load i32, i32* %23, align 4
  %190 = load i32, i32* %19, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %188
  %193 = load i32, i32* %19, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %24, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %25, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %193, i32* %202, align 4
  br label %235

203:                                              ; preds = %188
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* %20, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i32, i32* %20, align 4
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %24, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %25, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %208, i32* %217, align 4
  br label %234

218:                                              ; preds = %203
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %21, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load i32, i32* %21, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %24, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  %230 = load i32, i32* %25, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %223, i32* %232, align 4
  br label %233

233:                                              ; preds = %222, %218
  br label %234

234:                                              ; preds = %233, %207
  br label %235

235:                                              ; preds = %234, %192
  br label %236

236:                                              ; preds = %235, %177
  br label %237

237:                                              ; preds = %236, %162
  br label %238

238:                                              ; preds = %237, %147
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %25, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %25, align 4
  br label %44

242:                                              ; preds = %44
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %24, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %24, align 4
  br label %39

246:                                              ; preds = %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
