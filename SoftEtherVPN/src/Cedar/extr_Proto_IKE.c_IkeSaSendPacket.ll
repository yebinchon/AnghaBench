; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeSaSendPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeSaSendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, i64, i32*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@IKE_EXCHANGE_TYPE_INFORMATION = common dso_local global i64 0, align 8
@IKE_SA_RESEND_INTERVAL = common dso_local global i64 0, align 8
@IKE_UDP_TYPE_ISAKMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeSaSendPacket(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = icmp eq %struct.TYPE_18__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %127

15:                                               ; preds = %11
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = icmp eq %struct.TYPE_20__* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @FreeBuf(i32* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %127

27:                                               ; preds = %15
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = call %struct.TYPE_22__* @IkeBuild(%struct.TYPE_20__* %33, %struct.TYPE_21__* null)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %7, align 8
  br label %58

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @Copy(i32 %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = call %struct.TYPE_22__* @IkeBuild(%struct.TYPE_20__* %49, %struct.TYPE_21__* %8)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %7, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @IkeSaUpdateIv(%struct.TYPE_19__* %51, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %35, %32
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = icmp eq %struct.TYPE_22__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %127

62:                                               ; preds = %58
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IKE_EXCHANGE_TYPE_INFORMATION, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %62
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @FreeBuf(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = call i32* @CloneBuf(%struct.TYPE_22__* %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IKE_SA_RESEND_INTERVAL, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @AddInterrupt(i32 %92, i64 %95)
  br label %97

97:                                               ; preds = %78, %62
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = load i32, i32* @IKE_UDP_TYPE_ISAKMP, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @IkeSendUdpPacket(%struct.TYPE_18__* %98, i32 %99, i32* %103, i32 %108, i32* %112, i32 %117, i32 %120, i32 %123)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = call i32 @Free(%struct.TYPE_22__* %125)
  br label %127

127:                                              ; preds = %97, %61, %18, %14
  ret void
}

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local %struct.TYPE_22__* @IkeBuild(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i32 @IkeSaUpdateIv(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @CloneBuf(%struct.TYPE_22__*) #1

declare dso_local i32 @AddInterrupt(i32, i64) #1

declare dso_local i32 @IkeSendUdpPacket(%struct.TYPE_18__*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
