; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_CreateSilenceBuf.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_CreateSilenceBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { double, double, double }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_20__*, double, double)* @CreateSilenceBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @CreateSilenceBuf(%struct.TYPE_20__* %0, double %1, double %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %169

26:                                               ; preds = %3
  %27 = load double, double* %6, align 8
  store double %27, double* %10, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double 9.000000e+04, %36
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %37, %46
  store double %47, double* %8, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hb_mixdown_get_discrete_channel_count(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = mul i64 %57, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = call %struct.TYPE_21__* @hb_buffer_list_clear(i32* %12)
  %71 = load double, double* %7, align 8
  store double %71, double* %9, align 8
  br label %72

72:                                               ; preds = %76, %26
  %73 = load double, double* %10, align 8
  %74 = load double, double* %8, align 8
  %75 = fcmp oge double %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = call %struct.TYPE_21__* @hb_buffer_init(i32 %77)
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %13, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memset(i32 %81, i32 0, i32 %84)
  %86 = load double, double* %9, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store double %86, double* %89, align 8
  %90 = load double, double* %8, align 8
  %91 = load double, double* %9, align 8
  %92 = fadd double %91, %90
  store double %92, double* %9, align 8
  %93 = load double, double* %9, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  store double %93, double* %96, align 8
  %97 = load double, double* %8, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  store double %97, double* %100, align 8
  %101 = load double, double* %8, align 8
  %102 = load double, double* %10, align 8
  %103 = fsub double %102, %101
  store double %103, double* %10, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %105 = call i32 @hb_buffer_list_append(i32* %12, %struct.TYPE_21__* %104)
  br label %72

106:                                              ; preds = %72
  %107 = load double, double* %10, align 8
  %108 = fcmp ogt double %107, 0.000000e+00
  br i1 %108, label %109, label %167

109:                                              ; preds = %106
  %110 = load double, double* %10, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sitofp i32 %118 to double
  %120 = fmul double %110, %119
  %121 = fdiv double %120, 9.000000e+04
  %122 = fptosi double %121 to i32
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @hb_mixdown_get_discrete_channel_count(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = mul i64 %124, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %109
  %140 = load i32, i32* %11, align 4
  %141 = call %struct.TYPE_21__* @hb_buffer_init(i32 %140)
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %13, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @memset(i32 %144, i32 0, i32 %147)
  %149 = load double, double* %9, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  store double %149, double* %152, align 8
  %153 = load double, double* %10, align 8
  %154 = load double, double* %9, align 8
  %155 = fadd double %154, %153
  store double %155, double* %9, align 8
  %156 = load double, double* %9, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  store double %156, double* %159, align 8
  %160 = load double, double* %10, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  store double %160, double* %163, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %165 = call i32 @hb_buffer_list_append(i32* %12, %struct.TYPE_21__* %164)
  br label %166

166:                                              ; preds = %139, %109
  br label %167

167:                                              ; preds = %166, %106
  %168 = call %struct.TYPE_21__* @hb_buffer_list_clear(i32* %12)
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %4, align 8
  br label %169

169:                                              ; preds = %167, %25
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %170
}

declare dso_local i32 @hb_mixdown_get_discrete_channel_count(i32) #1

declare dso_local %struct.TYPE_21__* @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_21__* @hb_buffer_init(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
