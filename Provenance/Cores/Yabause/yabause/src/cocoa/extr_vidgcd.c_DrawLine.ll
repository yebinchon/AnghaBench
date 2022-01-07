; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_DrawLine.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_DrawLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, double }

@leftColumnColor = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@currentPixel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, double, double, double, double, double)* @DrawLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawLine(i32 %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6, double %7, double %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store double %4, double* %15, align 8
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store double %7, double* %18, align 8
  store double %8, double* %19, align 8
  store i32 0, i32* %28, align 4
  store i32 123456789, i32* %29, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %9
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %20, align 4
  store i32 1, i32* %22, align 4
  br label %41

37:                                               ; preds = %9
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %20, align 4
  store i32 -1, i32* %22, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %21, align 4
  store i32 1, i32* %23, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %21, align 4
  store i32 -1, i32* %23, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %145

57:                                               ; preds = %53
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %20, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %20, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %25, align 4
  store i32 0, i32* %27, align 4
  br label %67

67:                                               ; preds = %139, %57
  %68 = load i32, i32* %27, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %142

71:                                               ; preds = %67
  %72 = load double, double* %17, align 8
  %73 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 0), align 8
  %74 = fadd double %73, %72
  store double %74, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 0), align 8
  %75 = load double, double* %18, align 8
  %76 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 1), align 8
  %77 = fadd double %76, %75
  store double %77, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 1), align 8
  %78 = load double, double* %19, align 8
  %79 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 2), align 8
  %80 = fadd double %79, %78
  store double %80, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 2), align 8
  %81 = load double, double* %15, align 8
  %82 = load i32, i32* %27, align 4
  %83 = sitofp i32 %82 to double
  %84 = load double, double* %16, align 8
  %85 = fmul double %83, %84
  %86 = fptosi double %85 to i32
  %87 = call i64 @getpixel(double %81, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %71
  %90 = load i32, i32* @currentPixel, align 4
  %91 = load i32, i32* %29, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* %27, align 4
  %95 = sitofp i32 %94 to double
  %96 = load double, double* %16, align 8
  %97 = fmul double %95, %96
  %98 = fptosi double %97 to i32
  store i32 %98, i32* %29, align 4
  %99 = load i32, i32* %28, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %28, align 4
  br label %101

101:                                              ; preds = %93, %89
  br label %106

102:                                              ; preds = %71
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @putpixel(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %101
  %107 = load i32, i32* @currentPixel, align 4
  store i32 %107, i32* %29, align 4
  %108 = load i32, i32* %28, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %142

111:                                              ; preds = %106
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %26, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %26, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %26, align 4
  br label %138

121:                                              ; preds = %111
  %122 = load double, double* %15, align 8
  %123 = load i32, i32* %27, align 4
  %124 = sitofp i32 %123 to double
  %125 = load double, double* %16, align 8
  %126 = fmul double %124, %125
  %127 = fptosi double %126 to i32
  %128 = call i64 @getpixel(double %122, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @putpixel(i32 %129, i32 %130)
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %26, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %26, align 4
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %121, %117
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %27, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %27, align 4
  br label %67

142:                                              ; preds = %110, %67
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %233

145:                                              ; preds = %53
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %21, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %26, align 4
  %152 = load i32, i32* %26, align 4
  %153 = load i32, i32* %21, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %25, align 4
  store i32 0, i32* %27, align 4
  br label %155

155:                                              ; preds = %227, %145
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %230

159:                                              ; preds = %155
  %160 = load double, double* %17, align 8
  %161 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 0), align 8
  %162 = fadd double %161, %160
  store double %162, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 0), align 8
  %163 = load double, double* %18, align 8
  %164 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 1), align 8
  %165 = fadd double %164, %163
  store double %165, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 1), align 8
  %166 = load double, double* %19, align 8
  %167 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 2), align 8
  %168 = fadd double %167, %166
  store double %168, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @leftColumnColor, i32 0, i32 2), align 8
  %169 = load double, double* %15, align 8
  %170 = load i32, i32* %27, align 4
  %171 = sitofp i32 %170 to double
  %172 = load double, double* %16, align 8
  %173 = fmul double %171, %172
  %174 = fptosi double %173 to i32
  %175 = call i64 @getpixel(double %169, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %159
  %178 = load i32, i32* @currentPixel, align 4
  %179 = load i32, i32* %29, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i32, i32* %27, align 4
  %183 = sitofp i32 %182 to double
  %184 = load double, double* %16, align 8
  %185 = fmul double %183, %184
  %186 = fptosi double %185 to i32
  store i32 %186, i32* %29, align 4
  %187 = load i32, i32* %28, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %28, align 4
  br label %189

189:                                              ; preds = %181, %177
  br label %194

190:                                              ; preds = %159
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @putpixel(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %190, %189
  %195 = load i32, i32* @currentPixel, align 4
  store i32 %195, i32* %29, align 4
  %196 = load i32, i32* %28, align 4
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %230

199:                                              ; preds = %194
  %200 = load i32, i32* %23, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %26, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %26, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %26, align 4
  br label %226

209:                                              ; preds = %199
  %210 = load double, double* %15, align 8
  %211 = load i32, i32* %27, align 4
  %212 = sitofp i32 %211 to double
  %213 = load double, double* %16, align 8
  %214 = fmul double %212, %213
  %215 = fptosi double %214 to i32
  %216 = call i64 @getpixel(double %210, i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @putpixel(i32 %217, i32 %218)
  %220 = load i32, i32* %25, align 4
  %221 = load i32, i32* %26, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %26, align 4
  %223 = load i32, i32* %22, align 4
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %209, %205
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %27, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %27, align 4
  br label %155

230:                                              ; preds = %198, %155
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %230, %142
  %234 = load i32, i32* %10, align 4
  ret i32 %234
}

declare dso_local i64 @getpixel(double, i32) #1

declare dso_local i32 @putpixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
