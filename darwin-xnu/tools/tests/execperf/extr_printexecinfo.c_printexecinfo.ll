; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/execperf/extr_printexecinfo.c_printexecinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/execperf/extr_printexecinfo.c_printexecinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@_mh_execute_header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CPU_SUBTYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"executable load address = 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"executable cputype 0x%08x cpusubtype 0x%08x (%s:%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"kern.usrstack64\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"sysctlbyname\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"          stack address = 0x%016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printexecinfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i64 4, i64* %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_mh_execute_header, i32 0, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_mh_execute_header, i32 0, i32 1), align 4
  %7 = load i32, i32* @CPU_SUBTYPE_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = call %struct.TYPE_4__* @NXGetArchInfoFromCpuType(i32 %5, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 ptrtoint (%struct.TYPE_5__* @_mh_execute_header to i32))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_mh_execute_header, i32 0, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_mh_execute_header, i32 0, i32 1), align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %20 ]
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %29 ]
  %32 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13, i8* %22, i8* %31)
  %33 = call i32 @sysctlbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %2, i64* %3, i32* null, i32 0)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  ret void
}

declare dso_local %struct.TYPE_4__* @NXGetArchInfoFromCpuType(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
