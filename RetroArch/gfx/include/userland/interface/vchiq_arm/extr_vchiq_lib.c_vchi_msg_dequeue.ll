; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_vchi_msg_dequeue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_vchi_msg_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i64, i32 }

@VCHI_FLAGS_NONE = common dso_local global i64 0, align 8
@VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE = common dso_local global i64 0, align 8
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vchi_msg_dequeue -> using peek buffer\0A\00", align 1
@VCHIQ_IOC_DEQUEUE_MESSAGE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"vchi_msg_dequeue -> %d(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchi_msg_dequeue(i32 %0, i8* %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_5__* @find_service_by_handle(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @VCHI_FLAGS_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ true, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @vcos_assert(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %31, i32* %6, align 4
  br label %103

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = call i32 @vcos_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i8* %45, i32 %48, i64 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 -1, i64* %58, align 8
  store i32 0, i32* %14, align 4
  br label %60

59:                                               ; preds = %37
  store i32 -1, i32* %14, align 4
  br label %60

60:                                               ; preds = %59, %44
  br label %89

61:                                               ; preds = %32
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i64 %71, i64* %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @VCHIQ_IOC_DEQUEUE_MESSAGE, align 4
  %80 = call i32 @ioctl(i32 %78, i32 %79, %struct.TYPE_6__* %13)
  %81 = call i32 @RETRY(i32 %75, i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %61
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** %10, align 8
  store i64 %86, i64* %87, align 8
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %61
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @EWOULDBLOCK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %92, %89
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %30
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_5__* @find_service_by_handle(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_log_error(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @RETRY(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
