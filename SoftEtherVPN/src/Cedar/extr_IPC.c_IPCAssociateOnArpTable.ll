; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCAssociateOnArpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCAssociateOnArpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@IPC_ARP_LIFETIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPCAssociateOnArpTable(%struct.TYPE_13__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @IsValidUnicastIPAddress4(i32* %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @IsValidUnicastMacAddress(i32* %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %11, %3
  br label %112

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @CmpIpAddr(i32* %25, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @Cmp(i32 %32, i32* %33, i32 6)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %23
  br label %112

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = call i32 @IsInSameNetwork4(i32* %38, i32* %40, i32* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %112

46:                                               ; preds = %37
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @CmpIpAddr(i32* %48, i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %112

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call %struct.TYPE_12__* @IPCSearchArpTable(%struct.TYPE_13__* %54, i32* %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call %struct.TYPE_12__* @IPCNewARP(i32* %60, i32* %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %7, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = call i32 @Insert(i32 %65, %struct.TYPE_12__* %66)
  br label %112

68:                                               ; preds = %53
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @Copy(i32 %71, i32* %72, i32 6)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %68
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %91
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_14__* @GetNext(i32 %86)
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %8, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = icmp eq %struct.TYPE_14__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %105

91:                                               ; preds = %83
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IPCSendIPv4WithDestMacAddr(%struct.TYPE_13__* %92, i32 %95, i32 %98, i32 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = call i32 @FreeBlock(%struct.TYPE_14__* %103)
  br label %83

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %68
  %107 = call i64 (...) @Tick64()
  %108 = load i64, i64* @IPC_ARP_LIFETIME, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %22, %36, %45, %52, %106, %59
  ret void
}

declare dso_local i32 @IsValidUnicastIPAddress4(i32*) #1

declare dso_local i32 @IsValidUnicastMacAddress(i32*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i64 @Cmp(i32, i32*, i32) #1

declare dso_local i32 @IsInSameNetwork4(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @IPCSearchArpTable(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @IPCNewARP(i32*, i32*) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @Copy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @GetNext(i32) #1

declare dso_local i32 @IPCSendIPv4WithDestMacAddr(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_14__*) #1

declare dso_local i64 @Tick64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
