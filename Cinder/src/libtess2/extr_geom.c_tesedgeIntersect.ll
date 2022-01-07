; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_geom.c_tesedgeIntersect.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_geom.c_tesedgeIntersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tesedgeIntersect(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2, %struct.TYPE_25__* %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %10, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %15 = call i64 @VertLeq(%struct.TYPE_25__* %13, %struct.TYPE_25__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %20 = call i32 @Swap(%struct.TYPE_25__* %18, %struct.TYPE_25__* %19)
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %24 = call i64 @VertLeq(%struct.TYPE_25__* %22, %struct.TYPE_25__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %29 = call i32 @Swap(%struct.TYPE_25__* %27, %struct.TYPE_25__* %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %33 = call i64 @VertLeq(%struct.TYPE_25__* %31, %struct.TYPE_25__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %38 = call i32 @Swap(%struct.TYPE_25__* %36, %struct.TYPE_25__* %37)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %41 = call i32 @Swap(%struct.TYPE_25__* %39, %struct.TYPE_25__* %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %45 = call i64 @VertLeq(%struct.TYPE_25__* %43, %struct.TYPE_25__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sdiv i32 %54, 2
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %127

58:                                               ; preds = %42
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %61 = call i64 @VertLeq(%struct.TYPE_25__* %59, %struct.TYPE_25__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %67 = call i32 @EdgeEval(%struct.TYPE_25__* %64, %struct.TYPE_25__* %65, %struct.TYPE_25__* %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %71 = call i32 @EdgeEval(%struct.TYPE_25__* %68, %struct.TYPE_25__* %69, %struct.TYPE_25__* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %76, %63
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @Interpolate(i32 %82, i32 %85, i32 %86, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %126

94:                                               ; preds = %58
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %98 = call i32 @EdgeSign(%struct.TYPE_25__* %95, %struct.TYPE_25__* %96, %struct.TYPE_25__* %97)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %102 = call i32 @EdgeSign(%struct.TYPE_25__* %99, %struct.TYPE_25__* %100, %struct.TYPE_25__* %101)
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %108, %94
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @Interpolate(i32 %114, i32 %117, i32 %118, i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %113, %81
  br label %127

127:                                              ; preds = %126, %47
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %130 = call i64 @TransLeq(%struct.TYPE_25__* %128, %struct.TYPE_25__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %135 = call i32 @Swap(%struct.TYPE_25__* %133, %struct.TYPE_25__* %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %139 = call i64 @TransLeq(%struct.TYPE_25__* %137, %struct.TYPE_25__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %144 = call i32 @Swap(%struct.TYPE_25__* %142, %struct.TYPE_25__* %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %148 = call i64 @TransLeq(%struct.TYPE_25__* %146, %struct.TYPE_25__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %153 = call i32 @Swap(%struct.TYPE_25__* %151, %struct.TYPE_25__* %152)
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %156 = call i32 @Swap(%struct.TYPE_25__* %154, %struct.TYPE_25__* %155)
  br label %157

157:                                              ; preds = %150, %145
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %160 = call i64 @TransLeq(%struct.TYPE_25__* %158, %struct.TYPE_25__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  %170 = sdiv i32 %169, 2
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %242

173:                                              ; preds = %157
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %176 = call i64 @TransLeq(%struct.TYPE_25__* %174, %struct.TYPE_25__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %209

178:                                              ; preds = %173
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %182 = call i32 @TransEval(%struct.TYPE_25__* %179, %struct.TYPE_25__* %180, %struct.TYPE_25__* %181)
  store i32 %182, i32* %11, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %186 = call i32 @TransEval(%struct.TYPE_25__* %183, %struct.TYPE_25__* %184, %struct.TYPE_25__* %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %187, %188
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %178
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %12, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %191, %178
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @Interpolate(i32 %197, i32 %200, i32 %201, i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %241

209:                                              ; preds = %173
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %213 = call i32 @TransSign(%struct.TYPE_25__* %210, %struct.TYPE_25__* %211, %struct.TYPE_25__* %212)
  store i32 %213, i32* %11, align 4
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %217 = call i32 @TransSign(%struct.TYPE_25__* %214, %struct.TYPE_25__* %215, %struct.TYPE_25__* %216)
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %219, %220
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %209
  %224 = load i32, i32* %11, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %12, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %223, %209
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @Interpolate(i32 %229, i32 %232, i32 %233, i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %228, %196
  br label %242

242:                                              ; preds = %241, %162
  ret void
}

declare dso_local i64 @VertLeq(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @Swap(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @EdgeEval(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i8* @Interpolate(i32, i32, i32, i32) #1

declare dso_local i32 @EdgeSign(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i64 @TransLeq(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @TransEval(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @TransSign(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
