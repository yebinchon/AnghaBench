; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testutil.c_cttest_opt_none.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testutil.c_cttest_opt_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32*, i32*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i32* }

@srv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@Portdef = common dso_local global i32 0, align 4
@job_data_size_limit = common dso_local global i64 0, align 8
@JOB_DATA_SIZE_LIMIT_DEFAULT = common dso_local global i64 0, align 8
@Filesizedef = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_opt_none() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %4 = call i32 @optparse(%struct.TYPE_5__* @srv, i8** %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 3), align 8
  %6 = load i32, i32* @Portdef, align 4
  %7 = call i64 @strcmp(i32 %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 2), align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @job_data_size_limit, align 8
  %16 = load i64, i64* @JOB_DATA_SIZE_LIMIT_DEFAULT, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 0, i32 0), align 8
  %21 = load i64, i64* @Filesizedef, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 0, i32 1), align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 1), align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 0, i32 3), align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srv, i32 0, i32 0, i32 2), align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @verbose, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @optparse(%struct.TYPE_5__*, i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strcmp(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
