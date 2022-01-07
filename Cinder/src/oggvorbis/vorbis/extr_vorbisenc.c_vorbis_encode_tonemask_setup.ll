; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_tonemask_setup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_tonemask_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32*, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@P_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, double, i32, %struct.TYPE_13__*, i32*, %struct.TYPE_9__*)* @vorbis_encode_tonemask_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vorbis_encode_tonemask_setup(%struct.TYPE_11__* %0, double %1, i32 %2, %struct.TYPE_13__* %3, i32* %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store double %1, double* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %12, align 8
  %18 = load double, double* %8, align 8
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load double, double* %8, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sitofp i32 %21 to double
  %23 = fsub double %20, %22
  store double %23, double* %15, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %16, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %17, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = load double, double* %15, align 8
  %44 = fsub double 1.000000e+00, %43
  %45 = fmul double %42, %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sitofp i32 %54 to double
  %56 = load double, double* %15, align 8
  %57 = fmul double %55, %56
  %58 = fadd double %45, %57
  %59 = fptosi double %58 to i32
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to double
  %73 = load double, double* %15, align 8
  %74 = fsub double 1.000000e+00, %73
  %75 = fmul double %72, %74
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = sitofp i32 %84 to double
  %86 = load double, double* %15, align 8
  %87 = fmul double %85, %86
  %88 = fadd double %75, %87
  %89 = fptosi double %88 to i32
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to double
  %103 = load double, double* %15, align 8
  %104 = fsub double 1.000000e+00, %103
  %105 = fmul double %102, %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = sitofp i32 %114 to double
  %116 = load double, double* %15, align 8
  %117 = fmul double %115, %116
  %118 = fadd double %105, %117
  %119 = fptosi double %118 to i32
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sitofp i32 %129 to double
  %131 = load double, double* %15, align 8
  %132 = fsub double 1.000000e+00, %131
  %133 = fmul double %130, %132
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sitofp i32 %140 to double
  %142 = load double, double* %15, align 8
  %143 = fmul double %141, %142
  %144 = fadd double %133, %143
  %145 = fptosi double %144 to i32
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to double
  %155 = load double, double* %15, align 8
  %156 = fsub double 1.000000e+00, %155
  %157 = fmul double %154, %156
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sitofp i32 %164 to double
  %166 = load double, double* %15, align 8
  %167 = fmul double %165, %166
  %168 = fadd double %157, %167
  %169 = fptosi double %168 to i32
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sitofp i32 %176 to double
  %178 = load double, double* %15, align 8
  %179 = fsub double 1.000000e+00, %178
  %180 = fmul double %177, %179
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sitofp i32 %186 to double
  %188 = load double, double* %15, align 8
  %189 = fmul double %187, %188
  %190 = fadd double %180, %189
  %191 = fptosi double %190 to i32
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 8
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %235, %6
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @P_BANDS, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %238

198:                                              ; preds = %194
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sitofp i32 %208 to double
  %210 = load double, double* %15, align 8
  %211 = fsub double 1.000000e+00, %210
  %212 = fmul double %209, %211
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sitofp i32 %223 to double
  %225 = load double, double* %15, align 8
  %226 = fmul double %224, %225
  %227 = fadd double %212, %226
  %228 = fptosi double %227 to i32
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %228, i32* %234, align 4
  br label %235

235:                                              ; preds = %198
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %13, align 4
  br label %194

238:                                              ; preds = %194
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
