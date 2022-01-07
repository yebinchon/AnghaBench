; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_parse_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_parse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_REG_N = common dso_local global i32 0, align 4
@A_SR = common dso_local global i32 0, align 4
@A_PR = common dso_local global i32 0, align 4
@A_DISP_PC = common dso_local global i32 0, align 4
@A_GBR = common dso_local global i32 0, align 4
@A_VBR = common dso_local global i32 0, align 4
@A_MACL = common dso_local global i32 0, align 4
@A_MACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_reg(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 114
  br i1 %12, label %13, label %76

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 49
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 53
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @isalnum(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @A_REG_N, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 10, %43
  %45 = sub nsw i32 %44, 48
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 3, i32* %4, align 4
  br label %259

47:                                               ; preds = %31, %25, %19
  br label %48

48:                                               ; preds = %47, %13
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @isalnum(i8 signext %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @A_REG_N, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  store i32 2, i32* %4, align 4
  br label %259

75:                                               ; preds = %60, %54, %48
  br label %76

76:                                               ; preds = %75, %3
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 115
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 114
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @isalnum(i8 signext %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @A_SR, align 4
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  store i32 2, i32* %4, align 4
  br label %259

97:                                               ; preds = %88, %82, %76
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 115
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 112
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @isalnum(i8 signext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @A_REG_N, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 15, i32* %118, align 4
  store i32 2, i32* %4, align 4
  br label %259

119:                                              ; preds = %109, %103, %97
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 112
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 114
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @isalnum(i8 signext %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @A_PR, align 4
  %139 = load i32*, i32** %6, align 8
  store i32 %138, i32* %139, align 4
  store i32 2, i32* %4, align 4
  br label %259

140:                                              ; preds = %131, %125, %119
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 112
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 99
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 2
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @isalnum(i8 signext %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* @A_DISP_PC, align 4
  %160 = load i32*, i32** %6, align 8
  store i32 %159, i32* %160, align 4
  store i32 2, i32* %4, align 4
  br label %259

161:                                              ; preds = %152, %146, %140
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 103
  br i1 %166, label %167, label %188

167:                                              ; preds = %161
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 98
  br i1 %172, label %173, label %188

173:                                              ; preds = %167
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 2
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 114
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = call i32 @isalnum(i8 signext %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = load i32, i32* @A_GBR, align 4
  %187 = load i32*, i32** %6, align 8
  store i32 %186, i32* %187, align 4
  store i32 3, i32* %4, align 4
  br label %259

188:                                              ; preds = %179, %173, %167, %161
  %189 = load i8*, i8** %5, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 118
  br i1 %193, label %194, label %215

194:                                              ; preds = %188
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 98
  br i1 %199, label %200, label %215

200:                                              ; preds = %194
  %201 = load i8*, i8** %5, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 2
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 114
  br i1 %205, label %206, label %215

206:                                              ; preds = %200
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 3
  %209 = load i8, i8* %208, align 1
  %210 = call i32 @isalnum(i8 signext %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* @A_VBR, align 4
  %214 = load i32*, i32** %6, align 8
  store i32 %213, i32* %214, align 4
  store i32 3, i32* %4, align 4
  br label %259

215:                                              ; preds = %206, %200, %194, %188
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 109
  br i1 %220, label %221, label %258

221:                                              ; preds = %215
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 97
  br i1 %226, label %227, label %258

227:                                              ; preds = %221
  %228 = load i8*, i8** %5, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 99
  br i1 %232, label %233, label %258

233:                                              ; preds = %227
  %234 = load i8*, i8** %5, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 4
  %236 = load i8, i8* %235, align 1
  %237 = call i32 @isalnum(i8 signext %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %258, label %239

239:                                              ; preds = %233
  %240 = load i8*, i8** %5, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 3
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 108
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i32, i32* @A_MACL, align 4
  %247 = load i32*, i32** %6, align 8
  store i32 %246, i32* %247, align 4
  store i32 4, i32* %4, align 4
  br label %259

248:                                              ; preds = %239
  %249 = load i8*, i8** %5, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 3
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 104
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32, i32* @A_MACH, align 4
  %256 = load i32*, i32** %6, align 8
  store i32 %255, i32* %256, align 4
  store i32 4, i32* %4, align 4
  br label %259

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257, %233, %227, %221, %215
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %258, %254, %245, %212, %185, %158, %137, %115, %94, %66, %37
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
