; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_utimensat.c_prepare_times_array_and_attrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_utimensat.c_prepare_times_array_and_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64 }
%struct.timeval = type { i32 }

@UTIME_OMIT = common dso_local global i64 0, align 8
@UTIME_NOW = common dso_local global i64 0, align 8
@ATTR_CMN_MODTIME = common dso_local global i32 0, align 4
@ATTR_CMN_ACCTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec*, %struct.timespec*, i64*)* @prepare_times_array_and_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_times_array_and_attrs(%struct.timespec* %0, %struct.timespec* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %5, align 8
  store %struct.timespec* %1, %struct.timespec** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.timespec*, %struct.timespec** %5, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i64 0
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UTIME_OMIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.timespec*, %struct.timespec** %5, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 1
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UTIME_OMIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %115

26:                                               ; preds = %18, %3
  %27 = load %struct.timespec*, %struct.timespec** %5, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i64 0
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UTIME_NOW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.timespec*, %struct.timespec** %5, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i64 1
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UTIME_NOW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %33, %26
  %41 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 8, i1 false)
  %42 = call i64 @__commpage_gettimeofday(%struct.timeval* %9)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @__gettimeofday(%struct.timeval* %9, i32* null)
  br label %46

46:                                               ; preds = %44, %40
  %47 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %9, %struct.timespec* %8)
  %48 = load %struct.timespec*, %struct.timespec** %5, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %48, i64 0
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UTIME_NOW, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.timespec*, %struct.timespec** %5, align 8
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %55, i64 0
  %57 = bitcast %struct.timespec* %56 to i8*
  %58 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  br label %59

59:                                               ; preds = %54, %46
  %60 = load %struct.timespec*, %struct.timespec** %5, align 8
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %60, i64 1
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UTIME_NOW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.timespec*, %struct.timespec** %5, align 8
  %68 = getelementptr inbounds %struct.timespec, %struct.timespec* %67, i64 1
  %69 = bitcast %struct.timespec* %68 to i8*
  %70 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71, %33
  store i32 0, i32* %10, align 4
  %73 = load i64*, i64** %7, align 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.timespec*, %struct.timespec** %6, align 8
  store %struct.timespec* %74, %struct.timespec** %11, align 8
  %75 = load %struct.timespec*, %struct.timespec** %5, align 8
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %75, i64 1
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UTIME_OMIT, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load i32, i32* @ATTR_CMN_MODTIME, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.timespec*, %struct.timespec** %11, align 8
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %85, i32 1
  store %struct.timespec* %86, %struct.timespec** %11, align 8
  %87 = load %struct.timespec*, %struct.timespec** %5, align 8
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i64 1
  %89 = bitcast %struct.timespec* %85 to i8*
  %90 = bitcast %struct.timespec* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 8, i1 false)
  %91 = load i64*, i64** %7, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 8
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %81, %72
  %95 = load %struct.timespec*, %struct.timespec** %5, align 8
  %96 = getelementptr inbounds %struct.timespec, %struct.timespec* %95, i64 0
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @UTIME_OMIT, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = load i32, i32* @ATTR_CMN_ACCTIME, align 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load %struct.timespec*, %struct.timespec** %11, align 8
  %106 = load %struct.timespec*, %struct.timespec** %5, align 8
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i64 0
  %108 = bitcast %struct.timespec* %105 to i8*
  %109 = bitcast %struct.timespec* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  %110 = load i64*, i64** %7, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 8
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %101, %94
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %25
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__commpage_gettimeofday(%struct.timeval*) #2

declare dso_local i32 @__gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
