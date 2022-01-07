; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodePrintQueryStatistics.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodePrintQueryStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"QInfo:%p statis: comp blocks:%d, size:%d Bytes, elapsed time:%.2f ms\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"QInfo:%p statis: field info: %d, size:%d Bytes, avg size:%.2f Bytes, elapsed time:%.2f ms\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"QInfo:%p statis: file blocks:%d, size:%d Bytes, elapsed time:%.2f ms, skipped:%d, in-memory gen null:%d Bytes\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"QInfo:%p statis: cache blocks:%d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"QInfo:%p statis: temp file:%d Bytes\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"QInfo:%p statis: file:%d, table:%d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"QInfo:%p statis: seek ops:%d\00", align 1
@.str.7 = private unnamed_addr constant [127 x i8] c"QInfo:%p statis: total elapsed time:%.2f ms, file:%.2f ms(%.2f%), cache:%.2f ms(%.2f%). io:%.2f ms(%.2f%),comput:%.2fms(%.2f%)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodePrintQueryStatistics(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @GET_QINFO_ADDR(i32* %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = sitofp i32 %28 to double
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = fdiv double %35, 1.000000e+03
  %37 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32* %25, double %29, i32 %32, double %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 15
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 15
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = fdiv double %48, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  %56 = fdiv double %55, 1.000000e+03
  %57 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32* %38, double %41, i64 %44, double %52, double %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = sitofp i32 %61 to double
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load double, double* %67, align 8
  %69 = fdiv double %68, 1.000000e+03
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32* %58, double %62, i32 %65, double %69, i32 %72, i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = sitofp i32 %80 to double
  %82 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* %77, double %81, i32 0)
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = sitofp i32 %86 to double
  %88 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32* %83, double %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = sitofp i32 %92 to double
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* %89, double %93, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = sitofp i32 %101 to double
  %103 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32* %98, double %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load double, double* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  %109 = load double, double* %108, align 8
  %110 = fadd double %106, %109
  store double %110, double* %7, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load double, double* %115, align 8
  %117 = fadd double %113, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load double, double* %119, align 8
  %121 = fadd double %117, %120
  store double %121, double* %8, align 8
  %122 = load double, double* %7, align 8
  %123 = load double, double* %8, align 8
  %124 = fsub double %122, %123
  store double %124, double* %9, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load double, double* %7, align 8
  %127 = fdiv double %126, 1.000000e+03
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load double, double* %129, align 8
  %131 = fdiv double %130, 1.000000e+03
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load double, double* %133, align 8
  %135 = fmul double %134, 1.000000e+02
  %136 = load double, double* %7, align 8
  %137 = fdiv double %135, %136
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  %140 = load double, double* %139, align 8
  %141 = fdiv double %140, 1.000000e+03
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load double, double* %143, align 8
  %145 = fmul double %144, 1.000000e+02
  %146 = load double, double* %7, align 8
  %147 = fdiv double %145, %146
  %148 = load double, double* %8, align 8
  %149 = fdiv double %148, 1.000000e+03
  %150 = load double, double* %8, align 8
  %151 = fmul double %150, 1.000000e+02
  %152 = load double, double* %7, align 8
  %153 = fdiv double %151, %152
  %154 = load double, double* %9, align 8
  %155 = fdiv double %154, 1.000000e+03
  %156 = load double, double* %9, align 8
  %157 = fmul double %156, 1.000000e+02
  %158 = load double, double* %7, align 8
  %159 = fdiv double %157, %158
  %160 = call i32 (i8*, i32*, double, ...) @dTrace(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.7, i64 0, i64 0), i32* %125, double %127, double %131, double %137, double %141, double %147, double %149, double %153, double %155, double %159)
  ret void
}

declare dso_local i64 @GET_QINFO_ADDR(i32*) #1

declare dso_local i32 @dTrace(i8*, i32*, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
