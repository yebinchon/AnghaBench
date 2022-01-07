; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"[RSound] rsd_exec().\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[RSound] Calling rsd_start().\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[RSound] rsd_start() failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"[RSound] Closing ctl.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"[RSound] Socket: %d.\0A\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"[RSound] Failed flushing buffer.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"[RSound] Returning from rsd_exec().\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_NBIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsd_exec(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @retro_assert(i32 %10)
  %12 = call i32 (i8*, ...) @RSD_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @RSD_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i64 @rsd_start(%struct.TYPE_9__* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @RSD_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %84

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = call i32 (i8*, ...) @RSD_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i64 @rsnd_close_ctl(%struct.TYPE_9__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %84

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i8*, ...) @RSD_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call i32 @rsnd_stop_thread(%struct.TYPE_9__* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @F_SETFL, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = call i32 @fcntl(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fifo_read_avail(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %32
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fifo_read_avail(i32 %56)
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %5, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %6, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = trunc i64 %58 to i32
  %65 = call i32 @fifo_read(i32 %63, i8* %60, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = trunc i64 %58 to i32
  %68 = call i64 @rsnd_send_chunk(i32 %66, i8* %60, i32 %67, i32 1)
  %69 = icmp ne i64 %68, %58
  br i1 %69, label %70, label %74

70:                                               ; preds = %53
  %71 = call i32 (i8*, ...) @RSD_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @net_socketclose(i32 %72)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %75

74:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %86 [
    i32 0, label %78
    i32 1, label %84
  ]

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %32
  %80 = call i32 (i8*, ...) @RSD_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = call i32 @rsd_free(%struct.TYPE_9__* %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %75, %31, %23
  %85 = load i32, i32* %2, align 4
  ret i32 %85

86:                                               ; preds = %75
  unreachable
}

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @RSD_DEBUG(i8*, ...) #1

declare dso_local i64 @rsd_start(%struct.TYPE_9__*) #1

declare dso_local i32 @RSD_ERR(i8*) #1

declare dso_local i64 @rsnd_close_ctl(%struct.TYPE_9__*) #1

declare dso_local i32 @rsnd_stop_thread(%struct.TYPE_9__*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @fifo_read_avail(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fifo_read(i32, i8*, i32) #1

declare dso_local i64 @rsnd_send_chunk(i32, i8*, i32, i32) #1

declare dso_local i32 @net_socketclose(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rsd_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
