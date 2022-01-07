; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_darknet.c_oneoff.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_darknet.c_oneoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@gpu_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oneoff(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* @gpu_index, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.TYPE_6__* @parse_network_cfg(i8* %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @scal_cpu(i32 %37, double 1.000000e-01, i32 %48, i32 1)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @scal_cpu(i32 %50, double 0.000000e+00, i32 %61, i32 1)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 11921, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 5
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 5, %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %86
  store i32 %98, i32* %96, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @load_weights(%struct.TYPE_6__* %102, i8* %103)
  br label %105

105:                                              ; preds = %101, %3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 5
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 5, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, %119
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %132, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %152
  %154 = bitcast %struct.TYPE_7__* %10 to i8*
  %155 = bitcast %struct.TYPE_7__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 4 %155, i64 16, i1 false)
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %157, 3
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 3
  %166 = add nsw i32 %162, %165
  %167 = call i32 @copy_cpu(i32 %158, i32 %160, i32 1, i32 %166, i32 1)
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 3
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 2, %176
  %178 = sdiv i32 %177, 3
  %179 = add nsw i32 %174, %178
  %180 = call i32 @copy_cpu(i32 %170, i32 %172, i32 1, i32 %179, i32 1)
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %182, 3
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %183, %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %192, 3
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %193, %195
  %197 = add nsw i32 %190, %196
  %198 = call i32 @copy_cpu(i32 %186, i32 %188, i32 1, i32 %197, i32 1)
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 3
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %201, %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 2, %210
  %212 = sdiv i32 %211, 3
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %212, %214
  %216 = add nsw i32 %208, %215
  %217 = call i32 @copy_cpu(i32 %204, i32 %206, i32 1, i32 %216, i32 1)
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  store i64 0, i64* %220, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %222 = load i8*, i8** %6, align 8
  %223 = call i32 @save_weights(%struct.TYPE_6__* %221, i8* %222)
  ret void
}

declare dso_local %struct.TYPE_6__* @parse_network_cfg(i8*) #1

declare dso_local i32 @scal_cpu(i32, double, i32, i32) #1

declare dso_local i32 @load_weights(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @save_weights(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
