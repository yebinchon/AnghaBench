; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatUdp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatUdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }

@NAT_UDP = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"NAT_ENTRY: CreateNatUdp %s %u -> %s %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"LH_NAT_UDP_CREATED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @CreateNatUdp(%struct.TYPE_17__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = icmp eq %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %149

25:                                               ; preds = %6
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = call i32 @CanCreateNewNatEntry(%struct.TYPE_17__* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %149

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = call %struct.TYPE_19__* @NatGetHubOption(%struct.TYPE_17__* %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %15, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @NAT_UDP, align 4
  %44 = call i64 @GetNumNatEntriesPerIp(%struct.TYPE_17__* %41, i64 %42, i32 %43, i32 0)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @NAT_UDP, align 4
  %53 = call %struct.TYPE_18__* @GetOldestNatEntryOfIp(%struct.TYPE_17__* %50, i64 %51, i32 %52)
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %16, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %59 = call i32 @DisconnectNatEntryNow(%struct.TYPE_17__* %57, %struct.TYPE_18__* %58)
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %35, %30
  %63 = call %struct.TYPE_18__* @ZeroMalloc(i32 96)
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %14, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Inc(i32 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 14
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %72, align 8
  %73 = call i32 (...) @NewLock()
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @NAT_UDP, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 12
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 11
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 10
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 9
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 8
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %62
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %62
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 6
  store i32 %102, i32* %106, align 4
  %107 = call i8* (...) @NewQueue()
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = call i8* (...) @NewQueue()
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SetSockEvent(i32 %117)
  %119 = load i32, i32* @MAX_SIZE, align 4
  %120 = zext i32 %119 to i64
  %121 = call i8* @llvm.stacksave()
  store i8* %121, i8** %19, align 8
  %122 = alloca i8, i64 %120, align 16
  store i64 %120, i64* %20, align 8
  %123 = load i32, i32* @MAX_SIZE, align 4
  %124 = zext i32 %123 to i64
  %125 = alloca i8, i64 %124, align 16
  store i64 %124, i64* %21, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @UINTToIP(i32* %17, i64 %126)
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @UINTToIP(i32* %18, i64 %128)
  %130 = call i32 @IPToStr(i8* %122, i32 0, i32* %17)
  %131 = call i32 @IPToStr(i8* %125, i32 0, i32* %18)
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %122, i64 %132, i8* %125, i64 %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @NLog(%struct.TYPE_17__* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %138, i8* %122, i64 %139, i8* %125, i64 %140)
  %142 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %147 = call i32 @Add(i32 %145, %struct.TYPE_18__* %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %7, align 8
  br label %149

149:                                              ; preds = %99, %29, %24
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  ret %struct.TYPE_18__* %150
}

declare dso_local i32 @CanCreateNewNatEntry(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @NatGetHubOption(%struct.TYPE_17__*) #1

declare dso_local i64 @GetNumNatEntriesPerIp(%struct.TYPE_17__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_18__* @GetOldestNatEntryOfIp(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @DisconnectNatEntryNow(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i8* @NewQueue(...) #1

declare dso_local i32 @SetSockEvent(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @Debug(i8*, i8*, i64, i8*, i64) #1

declare dso_local i32 @NLog(%struct.TYPE_17__*, i8*, i32, i8*, i64, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Add(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
