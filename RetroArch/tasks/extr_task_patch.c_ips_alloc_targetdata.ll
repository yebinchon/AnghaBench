; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_ips_alloc_targetdata.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_ips_alloc_targetdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATCH_TARGET_ALLOC_FAILED = common dso_local global i32 0, align 4
@PATCH_SUCCESS = common dso_local global i32 0, align 4
@PATCH_PATCH_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32**, i32*)* @ips_alloc_targetdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_alloc_targetdata(i32* %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %11, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %213, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 3
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %214

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 0
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 4542278
  br i1 %52, label %53, label %125

53:                                               ; preds = %25
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @PATCH_TARGET_ALLOC_FAILED, align 4
  store i32 %66, i32* %6, align 4
  br label %216

67:                                               ; preds = %57
  %68 = load i32**, i32*** %10, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @free(i32* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = load i32**, i32*** %10, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %73, i32* %6, align 4
  br label %216

74:                                               ; preds = %53
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 3
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  store i32 %86, i32* %16, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 0
  %103 = load i32, i32* %16, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = call i64 @malloc(i64 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %79
  %115 = load i32, i32* @PATCH_TARGET_ALLOC_FAILED, align 4
  store i32 %115, i32* %6, align 4
  br label %216

116:                                              ; preds = %79
  %117 = load i32**, i32*** %10, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = load i32**, i32*** %10, align 8
  store i32* %120, i32** %121, align 8
  %122 = load i32, i32* @PATCH_SUCCESS, align 4
  store i32 %122, i32* %6, align 4
  br label %216

123:                                              ; preds = %74
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %25
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %127, 2
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %214

131:                                              ; preds = %125
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  store i32 %138, i32* %15, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 0
  %146 = load i32, i32* %15, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %131
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sub i32 %152, %153
  %155 = icmp ugt i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %214

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %162, %157
  %159 = load i32, i32* %15, align 4
  %160 = add i32 %159, -1
  store i32 %160, i32* %15, align 4
  %161 = icmp ne i32 %159, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %158

167:                                              ; preds = %158
  br label %205

168:                                              ; preds = %131
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %170, 3
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %214

174:                                              ; preds = %168
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 8
  store i32 %181, i32* %15, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 0
  %189 = load i32, i32* %15, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %174
  br label %214

194:                                              ; preds = %174
  br label %195

195:                                              ; preds = %199, %194
  %196 = load i32, i32* %15, align 4
  %197 = add i32 %196, -1
  store i32 %197, i32* %15, align 4
  %198 = icmp ne i32 %196, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %195

202:                                              ; preds = %195
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %202, %167
  %206 = load i32, i32* %14, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %206, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %14, align 4
  %212 = load i32*, i32** %11, align 8
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %205
  br label %19

214:                                              ; preds = %193, %173, %156, %130, %24
  %215 = load i32, i32* @PATCH_PATCH_INVALID, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %116, %114, %67, %65
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
