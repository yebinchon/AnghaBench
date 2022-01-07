; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c_timespec_subtract.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_timesupp.c_timespec_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@TB_NSPERSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timespec_subtract(%struct.timespec* %0, %struct.timespec* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %12 = load %struct.timespec*, %struct.timespec** %4, align 8
  %13 = bitcast %struct.timespec* %7 to i8*
  %14 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  store %struct.timespec* %7, %struct.timespec** %8, align 8
  %15 = load i32, i32* @TB_NSPERSEC, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.timespec*, %struct.timespec** %5, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.timespec*, %struct.timespec** %8, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %3
  %24 = load %struct.timespec*, %struct.timespec** %8, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.timespec*, %struct.timespec** %5, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %30, %32
  %34 = add nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load %struct.timespec*, %struct.timespec** %8, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.timespec*, %struct.timespec** %8, align 8
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %23, %3
  %51 = load %struct.timespec*, %struct.timespec** %5, align 8
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.timespec*, %struct.timespec** %8, align 8
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %50
  %62 = load %struct.timespec*, %struct.timespec** %8, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.timespec*, %struct.timespec** %5, align 8
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = sdiv i64 %68, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = load %struct.timespec*, %struct.timespec** %8, align 8
  %78 = getelementptr inbounds %struct.timespec, %struct.timespec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.timespec*, %struct.timespec** %8, align 8
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %61, %50
  %88 = load %struct.timespec*, %struct.timespec** %5, align 8
  %89 = getelementptr inbounds %struct.timespec, %struct.timespec* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.timespec*, %struct.timespec** %8, align 8
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = load %struct.timespec*, %struct.timespec** %6, align 8
  %96 = getelementptr inbounds %struct.timespec, %struct.timespec* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.timespec*, %struct.timespec** %5, align 8
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.timespec*, %struct.timespec** %8, align 8
  %101 = getelementptr inbounds %struct.timespec, %struct.timespec* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load %struct.timespec*, %struct.timespec** %6, align 8
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
