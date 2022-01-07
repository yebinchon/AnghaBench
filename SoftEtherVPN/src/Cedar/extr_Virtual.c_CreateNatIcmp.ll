; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatIcmp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatIcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }

@NAT_ICMP = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"NAT_ENTRY: CreateNatIcmp %s %u -> %s %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @CreateNatIcmp(%struct.TYPE_16__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = icmp eq %struct.TYPE_16__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %15, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %7
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  br label %149

33:                                               ; preds = %29
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = call i32 @CanCreateNewNatEntry(%struct.TYPE_16__* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  br label %149

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = call %struct.TYPE_18__* @NatGetHubOption(%struct.TYPE_16__* %39)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %17, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %42 = icmp ne %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @NAT_ICMP, align 4
  %52 = call i64 @GetNumNatEntriesPerIp(%struct.TYPE_16__* %49, i64 %50, i32 %51, i32 0)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* @NAT_ICMP, align 4
  %61 = call %struct.TYPE_17__* @GetOldestNatEntryOfIp(%struct.TYPE_16__* %58, i64 %59, i32 %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %18, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %67 = call i32 @DisconnectNatEntryNow(%struct.TYPE_16__* %65, %struct.TYPE_17__* %66)
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %43, %38
  %71 = call %struct.TYPE_17__* @ZeroMalloc(i32 104)
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %16, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @Inc(i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 14
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 13
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %80, align 8
  %81 = call i32 (...) @NewLock()
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @NAT_ICMP, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 10
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 9
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 8
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 6
  store i32 %101, i32* %105, align 4
  %106 = call i8* (...) @NewQueue()
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = call i8* (...) @NewQueue()
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @Clone(i32* %114, i64 %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @SetSockEvent(i32 %124)
  %126 = load i32, i32* @MAX_SIZE, align 4
  %127 = zext i32 %126 to i64
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %21, align 8
  %129 = alloca i8, i64 %127, align 16
  store i64 %127, i64* %22, align 8
  %130 = load i32, i32* @MAX_SIZE, align 4
  %131 = zext i32 %130 to i64
  %132 = alloca i8, i64 %131, align 16
  store i64 %131, i64* %23, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @UINTToIP(i32* %19, i64 %133)
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @UINTToIP(i32* %20, i64 %135)
  %137 = call i32 @IPToStr(i8* %129, i32 0, i32* %19)
  %138 = call i32 @IPToStr(i8* %132, i32 0, i32* %20)
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %129, i64 %139, i8* %132, i64 %140)
  %142 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %147 = call i32 @Add(i32 %145, %struct.TYPE_17__* %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %8, align 8
  br label %149

149:                                              ; preds = %70, %37, %32
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %150
}

declare dso_local i32 @CanCreateNewNatEntry(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @NatGetHubOption(%struct.TYPE_16__*) #1

declare dso_local i64 @GetNumNatEntriesPerIp(%struct.TYPE_16__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_17__* @GetOldestNatEntryOfIp(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @DisconnectNatEntryNow(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i8* @NewQueue(...) #1

declare dso_local i32 @Clone(i32*, i64) #1

declare dso_local i32 @SetSockEvent(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @Debug(i8*, i8*, i64, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Add(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
