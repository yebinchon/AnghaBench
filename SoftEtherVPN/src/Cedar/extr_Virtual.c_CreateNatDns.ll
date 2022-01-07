; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatDns.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatDns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64 }

@NAT_DNS = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"NAT_ENTRY: CreateNatDns %s %u -> %s %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @CreateNatDns(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %27 = icmp eq %struct.TYPE_16__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i8*, i8** %17, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  br label %139

32:                                               ; preds = %28
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %34 = call i32 @CanCreateNewNatEntry(%struct.TYPE_16__* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  br label %139

37:                                               ; preds = %32
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %39 = call %struct.TYPE_18__* @NatGetHubOption(%struct.TYPE_16__* %38)
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %19, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %41 = icmp ne %struct.TYPE_18__* %40, null
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @NAT_DNS, align 4
  %51 = call i64 @GetNumNatEntriesPerIp(%struct.TYPE_16__* %48, i8* %49, i32 %50, i32 0)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* @NAT_DNS, align 4
  %60 = call %struct.TYPE_17__* @GetOldestNatEntryOfIp(%struct.TYPE_16__* %57, i8* %58, i32 %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %20, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %66 = call i32 @DisconnectNatEntryNow(%struct.TYPE_16__* %64, %struct.TYPE_17__* %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %42, %37
  %70 = call %struct.TYPE_17__* @ZeroMalloc(i32 88)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %18, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @Inc(i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 13
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 12
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %79, align 8
  %80 = call i32 (...) @NewLock()
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @NAT_DNS, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 9
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 4
  store i32 %103, i32* %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load i8*, i8** %17, align 8
  %113 = call i32 @CopyStr(i8* %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %120 = call i32 @Add(i32 %118, %struct.TYPE_17__* %119)
  %121 = load i32, i32* @MAX_SIZE, align 4
  %122 = zext i32 %121 to i64
  %123 = call i8* @llvm.stacksave()
  store i8* %123, i8** %23, align 8
  %124 = alloca i8, i64 %122, align 16
  store i64 %122, i64* %24, align 8
  %125 = load i32, i32* @MAX_SIZE, align 4
  %126 = zext i32 %125 to i64
  %127 = alloca i8, i64 %126, align 16
  store i64 %126, i64* %25, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @UINTToIP(i32* %21, i8* %128)
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @UINTToIP(i32* %22, i8* %130)
  %132 = call i32 @IPToStr(i8* %124, i32 0, i32* %21)
  %133 = call i32 @IPToStr(i8* %127, i32 0, i32* %22)
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %124, i8* %134, i8* %127, i8* %135)
  %137 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %9, align 8
  br label %139

139:                                              ; preds = %69, %36, %31
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  ret %struct.TYPE_17__* %140
}

declare dso_local i32 @CanCreateNewNatEntry(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @NatGetHubOption(%struct.TYPE_16__*) #1

declare dso_local i64 @GetNumNatEntriesPerIp(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @GetOldestNatEntryOfIp(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @DisconnectNatEntryNow(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @Add(i32, %struct.TYPE_17__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UINTToIP(i32*, i8*) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @Debug(i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
