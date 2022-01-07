; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_p32x_pwm_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_pwm.c_p32x_pwm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i16*, i64* }

@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@pwm_silent = common dso_local global i32 0, align 4
@pwm_ptr = common dso_local global i32 0, align 4
@Pico32xMem = common dso_local global %struct.TYPE_3__* null, align 8
@EL_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"pwm_update: pwm_ptr %d, len %d, step %04x, done %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_pwm_update(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 (...) @SekCyclesDone()
  %12 = call i32 @consume_fifo(i32* null, i32 %11)
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 24
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 15
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %3
  br label %201

29:                                               ; preds = %25
  %30 = load i32, i32* @pwm_silent, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %218

33:                                               ; preds = %29
  %34 = load i32, i32* @pwm_ptr, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i16*, i16** %39, align 8
  store i16* %40, i16** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %159

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %80

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  %50 = icmp sgt i32 %48, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i16*, i16** %7, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 0
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %4, align 8
  %58 = load i32, i32* %56, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %56, align 4
  %60 = load i16*, i16** %7, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 1
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %4, align 8
  %66 = load i32, i32* %64, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %64, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 16
  %73 = mul nsw i32 %72, 2
  %74 = load i16*, i16** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i16, i16* %74, i64 %75
  store i16* %76, i16** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 65535
  store i32 %78, i32* %9, align 4
  br label %47

79:                                               ; preds = %47
  br label %158

80:                                               ; preds = %43
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %5, align 4
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = load i16*, i16** %7, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 1
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %4, align 8
  %95 = load i32, i32* %93, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %93, align 4
  %97 = load i16*, i16** %7, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 0
  %99 = load i16, i16* %98, align 2
  %100 = sext i16 %99 to i32
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %4, align 8
  %103 = load i32, i32* %101, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %101, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 16
  %110 = mul nsw i32 %109, 2
  %111 = load i16*, i16** %7, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i16, i16* %111, i64 %112
  store i16* %113, i16** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 65535
  store i32 %115, i32* %9, align 4
  br label %84

116:                                              ; preds = %84
  br label %157

117:                                              ; preds = %80
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 6
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i16*, i16** %7, align 8
  %123 = getelementptr inbounds i16, i16* %122, i32 1
  store i16* %123, i16** %7, align 8
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 12
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %4, align 8
  br label %131

131:                                              ; preds = %128, %124
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %5, align 4
  %135 = icmp sgt i32 %133, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  %137 = load i16*, i16** %7, align 8
  %138 = load i16, i16* %137, align 2
  %139 = sext i16 %138 to i32
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %139
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = ashr i32 %146, 16
  %148 = mul nsw i32 %147, 2
  %149 = load i16*, i16** %7, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i16, i16* %149, i64 %150
  store i16* %151, i16** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 65535
  store i32 %153, i32* %9, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32* %155, i32** %4, align 8
  br label %132

156:                                              ; preds = %132
  br label %157

157:                                              ; preds = %156, %116
  br label %158

158:                                              ; preds = %157, %79
  br label %185

159:                                              ; preds = %33
  br label %160

160:                                              ; preds = %164, %159
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %5, align 4
  %163 = icmp sgt i32 %161, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %160
  %165 = load i16*, i16** %7, align 8
  %166 = getelementptr inbounds i16, i16* %165, i64 0
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i32
  %169 = load i32*, i32** %4, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %4, align 8
  %171 = load i32, i32* %169, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %169, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = ashr i32 %176, 16
  %178 = mul nsw i32 %177, 2
  %179 = load i16*, i16** %7, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i16, i16* %179, i64 %180
  store i16* %181, i16** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = and i32 %182, 65535
  store i32 %183, i32* %9, align 4
  br label %160

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %158
  %186 = load i32, i32* @EL_PWM, align 4
  %187 = load i32, i32* @pwm_ptr, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i16*, i16** %7, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i16*, i16** %192, align 8
  %194 = ptrtoint i16* %190 to i64
  %195 = ptrtoint i16* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 2
  %198 = sdiv i64 %197, 2
  %199 = trunc i64 %198 to i32
  %200 = call i32 @elprintf(i32 %186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %188, i32 %189, i32 %199)
  br label %201

201:                                              ; preds = %185, %28
  store i32 0, i32* @pwm_ptr, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %201
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br label %215

215:                                              ; preds = %208, %201
  %216 = phi i1 [ false, %201 ], [ %214, %208 ]
  %217 = zext i1 %216 to i32
  store i32 %217, i32* @pwm_silent, align 4
  br label %218

218:                                              ; preds = %215, %32
  ret void
}

declare dso_local i32 @consume_fifo(i32*, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
