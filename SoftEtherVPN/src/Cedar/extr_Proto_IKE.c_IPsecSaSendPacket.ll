; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecSaSendPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecSaSendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i64, i32*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }

@IKE_SA_RESEND_INTERVAL = common dso_local global i64 0, align 8
@IKE_UDP_TYPE_ISAKMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecSaSendPacket(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = icmp eq %struct.TYPE_21__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = icmp eq %struct.TYPE_20__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %137

15:                                               ; preds = %11
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = icmp eq %struct.TYPE_22__* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @FreeBuf(i32* %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %137

27:                                               ; preds = %15
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = call %struct.TYPE_24__* @IkeBuild(%struct.TYPE_22__* %33, %struct.TYPE_23__* null)
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %7, align 8
  br label %75

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Copy(i32 %37, i32 %40, i32 %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = call %struct.TYPE_24__* @IkeBuild(%struct.TYPE_22__* %53, %struct.TYPE_23__* %8)
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %7, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IPsecSaUpdateIv(%struct.TYPE_20__* %55, i32 %57, i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IPsecSaUpdateIv(%struct.TYPE_20__* %66, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %35, %32
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %77 = icmp eq %struct.TYPE_24__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %137

79:                                               ; preds = %75
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @FreeBuf(i32* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %91 = call i32* @CloneBuf(%struct.TYPE_24__* %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IKE_SA_RESEND_INTERVAL, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @AddInterrupt(i32 %103, i64 %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = load i32, i32* @IKE_UDP_TYPE_ISAKMP, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @IkeSendUdpPacket(%struct.TYPE_21__* %108, i32 %109, i32* %113, i32 %118, i32* %122, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %136 = call i32 @Free(%struct.TYPE_24__* %135)
  br label %137

137:                                              ; preds = %89, %78, %18, %14
  ret void
}

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local %struct.TYPE_24__* @IkeBuild(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i32 @IPsecSaUpdateIv(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @CloneBuf(%struct.TYPE_24__*) #1

declare dso_local i32 @AddInterrupt(i32, i64) #1

declare dso_local i32 @IkeSendUdpPacket(%struct.TYPE_21__*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
