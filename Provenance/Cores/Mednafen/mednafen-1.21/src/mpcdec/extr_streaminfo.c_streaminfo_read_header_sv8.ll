; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_streaminfo.c_streaminfo_read_header_sv8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_streaminfo.c_streaminfo_read_header_sv8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, double, double, i32, double, i32, i32, i32, i32, double, double, double, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@MPC_STATUS_FAIL = common dso_local global i32 0, align 4
@samplefreqs = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @streaminfo_read_header_sv8(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = bitcast %struct.TYPE_9__* %9 to i8*
  %12 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 16)
  %14 = shl i32 %13, 16
  %15 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 16)
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %20, %24
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 %27, 4
  %29 = call i32 @mpc_crc32(i64 %25, i32 %28)
  %30 = icmp ne i32 %17, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %110

33:                                               ; preds = %3
  %34 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 8)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 8
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %42, i32* %4, align 4
  br label %110

43:                                               ; preds = %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = call i32 @mpc_bits_get_size(%struct.TYPE_9__* %9, double* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = call i32 @mpc_bits_get_size(%struct.TYPE_9__* %9, double* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 1, i32* %51, align 8
  %52 = load double*, double** @samplefreqs, align 8
  %53 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 3)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  store double %56, double* %58, align 8
  %59 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 5)
  %60 = add nsw i32 %59, 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 4)
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 1)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = call i32 @mpc_bits_read(%struct.TYPE_9__* %9, i32 3)
  %71 = mul nsw i32 %70, 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 12
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load double, double* %80, align 8
  %82 = fsub double %78, %81
  %83 = fcmp une double %82, 0.000000e+00
  br i1 %83, label %84, label %107

84:                                               ; preds = %43
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 10
  %87 = load double, double* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 11
  %90 = load double, double* %89, align 8
  %91 = fsub double %87, %90
  %92 = fmul double %91, 8.000000e+00
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load double, double* %94, align 8
  %96 = fmul double %92, %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load double, double* %101, align 8
  %103 = fsub double %99, %102
  %104 = fdiv double %96, %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 9
  store double %104, double* %106, align 8
  br label %107

107:                                              ; preds = %84, %43
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = call i32 @check_streaminfo(%struct.TYPE_8__* %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %41, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mpc_bits_read(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @mpc_crc32(i64, i32) #2

declare dso_local i32 @mpc_bits_get_size(%struct.TYPE_9__*, double*) #2

declare dso_local i32 @check_streaminfo(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
