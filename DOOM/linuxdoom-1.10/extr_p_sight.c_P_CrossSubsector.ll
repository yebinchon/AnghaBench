; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_CrossSubsector.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_CrossSubsector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }

@subsectors = common dso_local global %struct.TYPE_14__* null, align 8
@segs = common dso_local global %struct.TYPE_15__* null, align 8
@validcount = common dso_local global i64 0, align 8
@strace = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@t2x = common dso_local global i64 0, align 8
@t2y = common dso_local global i64 0, align 8
@ML_TWOSIDED = common dso_local global i32 0, align 4
@sightzstart = common dso_local global i64 0, align 8
@bottomslope = common dso_local global i64 0, align 8
@topslope = common dso_local global i64 0, align 8
@numsubsectors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_CrossSubsector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @subsectors, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i64 %21
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %9, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** @segs, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i64 %29
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %4, align 8
  br label %31

31:                                               ; preds = %222, %1
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %227

34:                                               ; preds = %31
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %5, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @validcount, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %222

44:                                               ; preds = %34
  %45 = load i64, i64* @validcount, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %15, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %16, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @P_DivlineSide(i64 %56, i64 %59, %struct.TYPE_18__* @strace)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @P_DivlineSide(i64 %63, i64 %66, %struct.TYPE_18__* @strace)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %44
  br label %222

72:                                               ; preds = %44
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  store i64 %87, i64* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @strace, i32 0, i32 1), align 8
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @strace, i32 0, i32 0), align 8
  %99 = call i32 @P_DivlineSide(i64 %97, i64 %98, %struct.TYPE_18__* %14)
  store i32 %99, i32* %6, align 4
  %100 = load i64, i64* @t2x, align 8
  %101 = load i64, i64* @t2y, align 8
  %102 = call i32 @P_DivlineSide(i64 %100, i64 %101, %struct.TYPE_18__* %14)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %72
  br label %222

107:                                              ; preds = %72
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ML_TWOSIDED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %228

115:                                              ; preds = %107
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  store %struct.TYPE_16__* %118, %struct.TYPE_16__** %10, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %11, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %115
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %222

138:                                              ; preds = %129, %115
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %12, align 8
  br label %154

150:                                              ; preds = %138
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %12, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %13, align 8
  br label %170

166:                                              ; preds = %154
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %13, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i64, i64* %13, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %228

175:                                              ; preds = %170
  %176 = call i64 @P_InterceptVector2(%struct.TYPE_18__* @strace, %struct.TYPE_18__* %14)
  store i64 %176, i64* %17, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %175
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* @sightzstart, align 8
  %187 = sub nsw i64 %185, %186
  %188 = load i64, i64* %17, align 8
  %189 = call i64 @FixedDiv(i64 %187, i64 %188)
  store i64 %189, i64* %18, align 8
  %190 = load i64, i64* %18, align 8
  %191 = load i64, i64* @bottomslope, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load i64, i64* %18, align 8
  store i64 %194, i64* @bottomslope, align 8
  br label %195

195:                                              ; preds = %193, %184
  br label %196

196:                                              ; preds = %195, %175
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %199, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %196
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* @sightzstart, align 8
  %207 = sub nsw i64 %205, %206
  %208 = load i64, i64* %17, align 8
  %209 = call i64 @FixedDiv(i64 %207, i64 %208)
  store i64 %209, i64* %18, align 8
  %210 = load i64, i64* %18, align 8
  %211 = load i64, i64* @topslope, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i64, i64* %18, align 8
  store i64 %214, i64* @topslope, align 8
  br label %215

215:                                              ; preds = %213, %204
  br label %216

216:                                              ; preds = %215, %196
  %217 = load i64, i64* @topslope, align 8
  %218 = load i64, i64* @bottomslope, align 8
  %219 = icmp sle i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %228

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %137, %106, %71, %43
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 1
  store %struct.TYPE_15__* %224, %struct.TYPE_15__** %4, align 8
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %8, align 4
  br label %31

227:                                              ; preds = %31
  store i32 1, i32* %2, align 4
  br label %228

228:                                              ; preds = %227, %220, %174, %114
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @P_DivlineSide(i64, i64, %struct.TYPE_18__*) #1

declare dso_local i64 @P_InterceptVector2(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @FixedDiv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
