; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_eq.c_do_3band.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_eq.c_do_3band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, i32, i32, i32, double, double, i32, i32, i32, double, double, double, double, i32, i32 }

@vsa = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @do_3band(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sitofp i32 %11 to double
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = fsub double %12, %15
  %17 = fmul double %10, %16
  %18 = load i64, i64* @vsa, align 8
  %19 = sitofp i64 %18 to double
  %20 = fadd double %17, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fadd double %23, %20
  store double %24, double* %22, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sitofp i32 %33 to double
  %35 = fsub double %30, %34
  %36 = fmul double %27, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, %36
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = sitofp i32 %52 to double
  %54 = fmul double %45, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = fadd double %58, %54
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load double, double* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = sitofp i32 %70 to double
  %72 = fmul double %63, %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = sitofp i32 %75 to double
  %77 = fadd double %76, %72
  %78 = fptosi double %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sitofp i32 %81 to double
  store double %82, double* %5, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 6
  %85 = load double, double* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sitofp i32 %86 to double
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load double, double* %89, align 8
  %91 = fsub double %87, %90
  %92 = fmul double %85, %91
  %93 = load i64, i64* @vsa, align 8
  %94 = sitofp i64 %93 to double
  %95 = fadd double %92, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load double, double* %97, align 8
  %99 = fadd double %98, %95
  store double %99, double* %97, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  %102 = load double, double* %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load double, double* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = sitofp i32 %108 to double
  %110 = fsub double %105, %109
  %111 = fmul double %102, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = sitofp i32 %114 to double
  %116 = fadd double %115, %111
  %117 = fptosi double %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 6
  %120 = load double, double* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = sitofp i32 %127 to double
  %129 = fmul double %120, %128
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = sitofp i32 %132 to double
  %134 = fadd double %133, %129
  %135 = fptosi double %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  %138 = load double, double* %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %141, %144
  %146 = sitofp i32 %145 to double
  %147 = fmul double %138, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = sitofp i32 %150 to double
  %152 = fadd double %151, %147
  %153 = fptosi double %152 to i32
  store i32 %153, i32* %149, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 10
  %156 = load double, double* %155, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = sitofp i32 %159 to double
  %161 = fsub double %156, %160
  store double %161, double* %7, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sitofp i32 %162 to double
  %164 = load double, double* %7, align 8
  %165 = load double, double* %5, align 8
  %166 = fadd double %164, %165
  %167 = fsub double %163, %166
  store double %167, double* %6, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 11
  %170 = load double, double* %169, align 8
  %171 = load double, double* %5, align 8
  %172 = fmul double %171, %170
  store double %172, double* %5, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 12
  %175 = load double, double* %174, align 8
  %176 = load double, double* %6, align 8
  %177 = fmul double %176, %175
  store double %177, double* %6, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 13
  %180 = load double, double* %179, align 8
  %181 = load double, double* %7, align 8
  %182 = fmul double %181, %180
  store double %182, double* %7, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 8
  %186 = sitofp i32 %185 to double
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  store double %186, double* %188, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 14
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 15
  store i32 %194, i32* %196, align 4
  %197 = load double, double* %5, align 8
  %198 = load double, double* %6, align 8
  %199 = fadd double %197, %198
  %200 = load double, double* %7, align 8
  %201 = fadd double %199, %200
  %202 = fptosi double %201 to i32
  %203 = sitofp i32 %202 to double
  ret double %203
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
