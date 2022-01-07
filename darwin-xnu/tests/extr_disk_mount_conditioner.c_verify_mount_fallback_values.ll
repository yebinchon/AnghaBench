; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_disk_mount_conditioner.c_verify_mount_fallback_values.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_disk_mount_conditioner.c_verify_mount_fallback_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@DISK_CONDITIONER_IOC_SET = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fsctl(DISK_CONDITIONER_IOC_SET)\00", align 1
@DISK_CONDITIONER_IOC_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"fsctl(DISK_CONDITIONER_IOC_GET) after SET\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ioqueue_depth is the value from the mount\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"maxreadcnt is value from the mount\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"maxwritecnt is value from the mount\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"segreadcnt is value from the mount\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"segwritecnt is value from the mount\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*)* @verify_mount_fallback_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_mount_fallback_values(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 24, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @DISK_CONDITIONER_IOC_SET, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = call i32 @fsctl(i8* %8, i32 %9, %struct.TYPE_4__* %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @T_WITH_ERRNO, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @T_ASSERT_EQ_INT(i32 0, i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @DISK_CONDITIONER_IOC_GET, align 4
  %17 = call i32 @fsctl(i8* %15, i32 %16, %struct.TYPE_4__* %6, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @T_WITH_ERRNO, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @T_ASSERT_EQ_INT(i32 0, i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @T_ASSERT_GT(i32 %22, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @T_ASSERT_GT(i32 %25, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @T_ASSERT_GT(i32 %28, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @T_ASSERT_GT(i32 %31, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @T_ASSERT_GT(i32 %34, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UINT32_MAX, align 4
  %39 = call i32 @T_ASSERT_LT(i32 %37, i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UINT32_MAX, align 4
  %43 = call i32 @T_ASSERT_LT(i32 %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @UINT32_MAX, align 4
  %47 = call i32 @T_ASSERT_LT(i32 %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UINT32_MAX, align 4
  %51 = call i32 @T_ASSERT_LT(i32 %49, i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UINT32_MAX, align 4
  %55 = call i32 @T_ASSERT_LT(i32 %53, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fsctl(i8*, i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i8*) #2

declare dso_local i32 @T_ASSERT_GT(i32, i32, i8*) #2

declare dso_local i32 @T_ASSERT_LT(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
