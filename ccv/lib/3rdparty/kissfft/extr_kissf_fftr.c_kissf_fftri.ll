; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fftr.c_kissf_fftri.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fftr.c_kissf_fftri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"kiss fft usage error: improper alloc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kissf_fftri(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #4
  unreachable

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %33, %39
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %49, %55
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i64 0
  %66 = bitcast %struct.TYPE_18__* %65 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = call i32 @C_FIXDIV(i64 %67, i32 2)
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %172, %24
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %71, 2
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %175

74:                                               ; preds = %69
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i64 %77
  %79 = bitcast %struct.TYPE_18__* %9 to i8*
  %80 = bitcast %struct.TYPE_18__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 8, i1 false)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 0, %97
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = bitcast %struct.TYPE_18__* %9 to i64*
  %101 = load i64, i64* %100, align 4
  %102 = call i32 @C_FIXDIV(i64 %101, i32 2)
  %103 = bitcast %struct.TYPE_18__* %10 to i64*
  %104 = load i64, i64* %103, align 4
  %105 = call i32 @C_FIXDIV(i64 %104, i32 2)
  %106 = bitcast %struct.TYPE_18__* %11 to i64*
  %107 = load i64, i64* %106, align 4
  %108 = bitcast %struct.TYPE_18__* %9 to i64*
  %109 = load i64, i64* %108, align 4
  %110 = bitcast %struct.TYPE_18__* %10 to i64*
  %111 = load i64, i64* %110, align 4
  %112 = call i32 @C_ADD(i64 %107, i64 %109, i64 %111)
  %113 = bitcast %struct.TYPE_18__* %13 to i64*
  %114 = load i64, i64* %113, align 4
  %115 = bitcast %struct.TYPE_18__* %9 to i64*
  %116 = load i64, i64* %115, align 4
  %117 = bitcast %struct.TYPE_18__* %10 to i64*
  %118 = load i64, i64* %117, align 4
  %119 = call i32 @C_SUB(i64 %114, i64 %116, i64 %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = bitcast %struct.TYPE_18__* %12 to i64*
  %129 = load i64, i64* %128, align 4
  %130 = bitcast %struct.TYPE_18__* %13 to i64*
  %131 = load i64, i64* %130, align 4
  %132 = call i32 @C_MUL(i64 %129, i64 %131, i32 %127)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i64 %137
  %139 = bitcast %struct.TYPE_18__* %138 to i64*
  %140 = load i64, i64* %139, align 4
  %141 = bitcast %struct.TYPE_18__* %11 to i64*
  %142 = load i64, i64* %141, align 4
  %143 = bitcast %struct.TYPE_18__* %12 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call i32 @C_ADD(i64 %140, i64 %142, i64 %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 %152
  %154 = bitcast %struct.TYPE_18__* %153 to i64*
  %155 = load i64, i64* %154, align 4
  %156 = bitcast %struct.TYPE_18__* %11 to i64*
  %157 = load i64, i64* %156, align 4
  %158 = bitcast %struct.TYPE_18__* %12 to i64*
  %159 = load i64, i64* %158, align 4
  %160 = call i32 @C_SUB(i64 %155, i64 %157, i64 %159)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %170, -1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %74
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %69

175:                                              ; preds = %69
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = bitcast i32* %182 to %struct.TYPE_18__*
  %184 = call i32 @kissf_fft(%struct.TYPE_19__* %178, %struct.TYPE_18__* %181, %struct.TYPE_18__* %183)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @C_FIXDIV(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @C_ADD(i64, i64, i64) #1

declare dso_local i32 @C_SUB(i64, i64, i64) #1

declare dso_local i32 @C_MUL(i64, i64, i32) #1

declare dso_local i32 @kissf_fft(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
