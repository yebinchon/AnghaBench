; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_verify.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c_ccv_convnet_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@CCV_CONVNET_FULL_CONNECT = common dso_local global i64 0, align 8
@CCV_CONVNET_CONVOLUTIONAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_convnet_verify(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %240

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CCV_CONVNET_FULL_CONNECT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %240

34:                                               ; preds = %19
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %240

50:                                               ; preds = %34
  store i32 3, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %136, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %139

57:                                               ; preds = %51
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i64 %62
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %11, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %66
  store i32 -1, i32* %3, align 4
  br label %240

83:                                               ; preds = %74, %57
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CCV_CONVNET_FULL_CONNECT, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %240

98:                                               ; preds = %91, %83
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ccv_convnet_make_output(%struct.TYPE_18__* %99, i32 %104, i32 %109, i32* %7, i32* %8, i32* %9)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CCV_CONVNET_CONVOLUTIONAL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %98
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %121, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  store i32 -1, i32* %3, align 4
  br label %240

129:                                              ; preds = %116
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %129, %98
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %51

139:                                              ; preds = %51
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 -1, i32* %3, align 4
  br label %240

146:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %168, %146
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %147
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 %158
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %13, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CCV_CONVNET_FULL_CONNECT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %12, align 4
  br label %171

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %147

171:                                              ; preds = %165, %147
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %236, %171
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %239

179:                                              ; preds = %173
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CCV_CONVNET_FULL_CONNECT, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %234, label %190

190:                                              ; preds = %179
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %200, %210
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %211, %221
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %222, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %190, %179
  store i32 -1, i32* %3, align 4
  br label %240

235:                                              ; preds = %190
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %173

239:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %234, %145, %128, %97, %82, %49, %33, %18
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @ccv_convnet_make_output(%struct.TYPE_18__*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
