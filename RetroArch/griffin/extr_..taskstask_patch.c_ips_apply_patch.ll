; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_patch.c_ips_apply_patch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_patch.c_ips_apply_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATCH_UNKNOWN = common dso_local global i32 0, align 4
@PATCH_PATCH_INVALID = common dso_local global i32 0, align 4
@PATCH_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8**, i32*)* @ips_apply_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_apply_patch(i8* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 5, i32* %14, align 4
  %19 = load i32, i32* @PATCH_UNKNOWN, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %52, label %22

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 80
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 65
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 84
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 67
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 72
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40, %34, %28, %22, %6
  %53 = load i32, i32* @PATCH_PATCH_INVALID, align 4
  store i32 %53, i32* %7, align 4
  br label %257

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i8**, i8*** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @ips_alloc_targetdata(i8* %55, i32 %56, i32 %57, i8** %58, i32* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @PATCH_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %257

66:                                               ; preds = %54
  %67 = load i8**, i8*** %12, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 @memcpy(i8* %68, i8* %69, i64 %71)
  br label %73

73:                                               ; preds = %254, %66
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 3
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %255

79:                                               ; preds = %73
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = shl i32 %86, 16
  store i32 %87, i32* %16, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %16, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %16, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = shl i32 %104, 0
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, 4542278
  br i1 %109, label %110, label %153

110:                                              ; preds = %79
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %115, i32* %7, align 4
  br label %257

116:                                              ; preds = %110
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 3
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %116
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = shl i32 %128, 16
  store i32 %129, i32* %18, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = shl i32 %136, 8
  %138 = load i32, i32* %18, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %18, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = shl i32 %146, 0
  %148 = load i32, i32* %18, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %150, i32* %7, align 4
  br label %257

151:                                              ; preds = %116
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %79
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sub nsw i32 %155, 2
  %157 = icmp sgt i32 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %255

159:                                              ; preds = %153
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = shl i32 %166, 8
  store i32 %167, i32* %17, align 4
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = shl i32 %174, 0
  %176 = load i32, i32* %17, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %159
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sub i32 %182, %183
  %185 = icmp ugt i32 %181, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %255

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %192, %187
  %189 = load i32, i32* %17, align 4
  %190 = add i32 %189, -1
  store i32 %190, i32* %17, align 4
  %191 = icmp ne i32 %189, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = load i8**, i8*** %12, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %16, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 %198, i8* %204, align 1
  br label %188

205:                                              ; preds = %188
  br label %254

206:                                              ; preds = %159
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %9, align 4
  %209 = sub nsw i32 %208, 3
  %210 = icmp sgt i32 %207, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %255

212:                                              ; preds = %206
  %213 = load i8*, i8** %8, align 8
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = shl i32 %219, 8
  store i32 %220, i32* %17, align 4
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = shl i32 %227, 0
  %229 = load i32, i32* %17, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %212
  br label %255

234:                                              ; preds = %212
  br label %235

235:                                              ; preds = %239, %234
  %236 = load i32, i32* %17, align 4
  %237 = add i32 %236, -1
  store i32 %237, i32* %17, align 4
  %238 = icmp ne i32 %236, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = load i8*, i8** %8, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = load i8**, i8*** %12, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  store i8 %244, i8* %250, align 1
  br label %235

251:                                              ; preds = %235
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %251, %205
  br label %73

255:                                              ; preds = %233, %211, %186, %158, %78
  %256 = load i32, i32* @PATCH_PATCH_INVALID, align 4
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %255, %121, %114, %64, %52
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i32 @ips_alloc_targetdata(i8*, i32, i32, i8**, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
