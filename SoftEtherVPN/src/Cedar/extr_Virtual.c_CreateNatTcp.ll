; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatTcp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_CreateNatTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }

@NAT_TCP = common dso_local global i32 0, align 4
@NAT_TCP_CONNECTING = common dso_local global i32 0, align 4
@NAT_INITIAL_RTT_VALUE = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"NAT_ENTRY: CreateNatTcp %s %u -> %s %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"LH_NAT_TCP_CREATED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @CreateNatTcp(%struct.TYPE_17__* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = icmp eq %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %182

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = call i32 @CanCreateNewNatEntry(%struct.TYPE_17__* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %182

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = call %struct.TYPE_19__* @NatGetHubOption(%struct.TYPE_17__* %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %13, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %32 = icmp ne %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @NAT_TCP, align 4
  %42 = call i64 @GetNumNatEntriesPerIp(%struct.TYPE_17__* %39, i8* %40, i32 %41, i32 1)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %182

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %33, %28
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %51 = icmp ne %struct.TYPE_19__* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @NAT_TCP, align 4
  %61 = call i64 @GetNumNatEntriesPerIp(%struct.TYPE_17__* %58, i8* %59, i32 %60, i32 0)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* @NAT_TCP, align 4
  %70 = call %struct.TYPE_18__* @GetOldestNatEntryOfIp(%struct.TYPE_17__* %67, i8* %68, i32 %69)
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %14, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %76 = call i32 @DisconnectNatEntryNow(%struct.TYPE_17__* %74, %struct.TYPE_18__* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %52, %49
  %80 = call %struct.TYPE_18__* @ZeroMalloc(i32 120)
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %12, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @Inc(i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 20
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %89, align 8
  %90 = call i32 (...) @NewLock()
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 19
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @NAT_TCP, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 18
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 17
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 16
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 15
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 14
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 12
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 13
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 11
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 10
  store i32* null, i32** %121, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 9
  store i32 %126, i32* %130, align 4
  %131 = call i8* (...) @NewFifo()
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = call i8* (...) @NewFifo()
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @NAT_TCP_CONNECTING, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = call i32 (...) @Rand32()
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @NAT_INITIAL_RTT_VALUE, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 2
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = call i32 @Add(i32 %154, %struct.TYPE_18__* %155)
  %157 = load i32, i32* @MAX_SIZE, align 4
  %158 = zext i32 %157 to i64
  %159 = call i8* @llvm.stacksave()
  store i8* %159, i8** %17, align 8
  %160 = alloca i8, i64 %158, align 16
  store i64 %158, i64* %18, align 8
  %161 = load i32, i32* @MAX_SIZE, align 4
  %162 = zext i32 %161 to i64
  %163 = alloca i8, i64 %162, align 16
  store i64 %162, i64* %19, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @UINTToIP(i32* %15, i8* %164)
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 @UINTToIP(i32* %16, i8* %166)
  %168 = call i32 @IPToStr(i8* %160, i32 0, i32* %15)
  %169 = call i32 @IPToStr(i8* %163, i32 0, i32* %16)
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %160, i8* %170, i8* %163, i8* %171)
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @NLog(%struct.TYPE_17__* %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %176, i8* %160, i8* %177, i8* %163, i8* %178)
  %180 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %181, %struct.TYPE_18__** %6, align 8
  br label %182

182:                                              ; preds = %79, %47, %27, %22
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  ret %struct.TYPE_18__* %183
}

declare dso_local i32 @CanCreateNewNatEntry(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @NatGetHubOption(%struct.TYPE_17__*) #1

declare dso_local i64 @GetNumNatEntriesPerIp(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @GetOldestNatEntryOfIp(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @DisconnectNatEntryNow(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i8* @NewFifo(...) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @Add(i32, %struct.TYPE_18__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UINTToIP(i32*, i8*) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @Debug(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @NLog(%struct.TYPE_17__*, i8*, i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
