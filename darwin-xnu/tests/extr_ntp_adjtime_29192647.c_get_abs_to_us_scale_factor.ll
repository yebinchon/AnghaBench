; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_ntp_adjtime_29192647.c_get_abs_to_us_scale_factor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_ntp_adjtime_29192647.c_get_abs_to_us_scale_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@T_QUIET = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [94 x i8] c"Check scale factor time base (%u/%u) delta read usec %llu delta converted %llu delta abs %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @get_abs_to_us_scale_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_abs_to_us_scale_factor(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = call i32 @mach_get_times(i32* %6, i32* null, %struct.timespec* %5)
  %16 = load i32, i32* @KERN_SUCCESS, align 4
  %17 = call i32 @T_ASSERT_EQ(i32 %15, i32 %16, i32* null)
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @USEC_PER_SEC, align 4
  %22 = mul nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = sdiv i32 %25, 1000
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %8, align 4
  %28 = call i32 @sleep(i32 1)
  %29 = load i32, i32* @T_QUIET, align 4
  %30 = call i32 @mach_get_times(i32* %7, i32* null, %struct.timespec* %5)
  %31 = load i32, i32* @KERN_SUCCESS, align 4
  %32 = call i32 @T_ASSERT_EQ(i32 %30, i32 %31, i32* null)
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @USEC_PER_SEC, align 4
  %37 = mul nsw i32 %35, %36
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = sdiv i32 %40, 1000
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %9, align 4
  %43 = call i32 @mach_timebase_info(%struct.TYPE_3__* %12)
  %44 = load i32, i32* @KERN_SUCCESS, align 4
  %45 = call i32 @T_ASSERT_EQ(i32 %43, i32 %44, i32* null)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %10, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %73

69:                                               ; preds = %2
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %11, align 4
  %75 = load i64, i64* @ERROR, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @T_EXPECT_LE_ULLONG(i32 %74, i64 %75, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %3, align 8
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 1000
  %90 = load i32*, i32** %4, align 8
  store i32 %89, i32* %90, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i32*) #2

declare dso_local i32 @mach_get_times(i32*, i32*, %struct.timespec*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @mach_timebase_info(%struct.TYPE_3__*) #2

declare dso_local i32 @T_EXPECT_LE_ULLONG(i32, i64, i8*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
