; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtSetVLan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtSetVLan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@ERR_VLAN_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@VLAN_ADAPTER_NAME_TAG = common dso_local global i32 0, align 4
@VLAN_ADAPTER_NAME_TAG_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtSetVLan(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = icmp eq %struct.TYPE_15__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %58

14:                                               ; preds = %10
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LockList(i32 %17)
  %19 = call i32 @Zero(%struct.TYPE_13__* %6, i32 8)
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @StrCpy(i32 %21, i32 4, i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_13__* @Search(i32 %28, %struct.TYPE_13__* %6)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = icmp eq %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %14
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = load i32, i32* @ERR_VLAN_ALREADY_EXISTS, align 4
  %35 = call i32 @CiSetError(%struct.TYPE_15__* %33, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @UnlockList(i32 %38)
  store i32 0, i32* %3, align 4
  br label %58

40:                                               ; preds = %14
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @StrToMac(i32 %43, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @UnlockList(i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = call i32 @CiSaveConfigurationFile(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @CiNotify(%struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = call i32 @CiSendGlobalPulse(%struct.TYPE_15__* %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %40, %32, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @Search(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @StrToMac(i32, i32) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_15__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_15__*) #1

declare dso_local i32 @CiSendGlobalPulse(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
