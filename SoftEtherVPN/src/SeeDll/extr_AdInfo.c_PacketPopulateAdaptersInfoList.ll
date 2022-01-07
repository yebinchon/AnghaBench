; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketPopulateAdaptersInfoList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketPopulateAdaptersInfoList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@AdaptersInfoMutex = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@AdaptersInfoList = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"PacketPopulateAdaptersInfoList: registry scan for adapters failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"PacketPopulateAdaptersInfoList: failed to get adapters from the IP Helper API!\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"PacketPopulateAdaptersInfoList: adding fake NdisWan adapter failed.\0A\00", align 1
@p_dagc_open = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PacketPopulateAdaptersInfoList() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* @AdaptersInfoMutex, align 4
  %5 = load i32, i32* @INFINITE, align 4
  %6 = call i32 @WaitForSingleObject(i32 %4, i32 %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AdaptersInfoList, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AdaptersInfoList, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %1, align 8
  br label %11

11:                                               ; preds = %27, %9
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32 @GlobalFreePtr(%struct.TYPE_5__* %25)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = call i32 @GlobalFreePtr(%struct.TYPE_5__* %28)
  br label %11

30:                                               ; preds = %11
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @AdaptersInfoList, align 8
  br label %31

31:                                               ; preds = %30, %0
  %32 = call i32 (...) @PacketGetAdapters()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @ODS(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = call i32 (...) @PacketGetAdaptersIPH()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @ODS(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = call i32 (...) @PacketAddFakeNdisWanAdapter()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @ODS(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* @AdaptersInfoMutex, align 4
  %48 = call i32 @ReleaseMutex(i32 %47)
  ret void
}

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @GlobalFreePtr(%struct.TYPE_5__*) #1

declare dso_local i32 @PacketGetAdapters(...) #1

declare dso_local i32 @ODS(i8*) #1

declare dso_local i32 @PacketGetAdaptersIPH(...) #1

declare dso_local i32 @PacketAddFakeNdisWanAdapter(...) #1

declare dso_local i32 @ReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
