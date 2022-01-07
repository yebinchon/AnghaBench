; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_IPsecServerSetServices.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_IPsecServerSetServices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i64, i64 }

@IPSEC_PORT_L2TP = common dso_local global i32 0, align 4
@IPSEC_PORT_IPSEC_ISAKMP = common dso_local global i32 0, align 4
@IPSEC_PORT_IPSEC_ESP_UDP = common dso_local global i32 0, align 4
@IPSEC_PORT_IPSEC_ESP_RAW = common dso_local global i32 0, align 4
@IPSEC_PORT_IPSEC_ESP_RAW_WPF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecServerSetServices(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = icmp eq %struct.TYPE_18__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = icmp eq %struct.TYPE_17__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %137

11:                                               ; preds = %7
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = call i32 @IsZero(%struct.TYPE_17__* %12, i32 32)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %137

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %11
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Lock(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = call i32 @Copy(i32* %28, %struct.TYPE_17__* %29, i32 32)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = call i32 @Copy(i32* %34, %struct.TYPE_17__* %40, i32 4)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %22
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i32, i32* @IPSEC_PORT_L2TP, align 4
  %51 = call i32 @AddPortToUdpListener(%struct.TYPE_13__* %49, i32 %50)
  br label %58

52:                                               ; preds = %22
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* @IPSEC_PORT_L2TP, align 4
  %57 = call i32 @DeletePortFromUdpListener(%struct.TYPE_13__* %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32, i32* @IPSEC_PORT_IPSEC_ISAKMP, align 4
  %73 = call i32 @AddPortToUdpListener(%struct.TYPE_13__* %71, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_UDP, align 4
  %78 = call i32 @AddPortToUdpListener(%struct.TYPE_13__* %76, i32 %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_RAW, align 4
  %83 = call i32 @AddPortToUdpListener(%struct.TYPE_13__* %81, i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_RAW_WPF, align 4
  %88 = call i32 @AddPortToUdpListener(%struct.TYPE_13__* %86, i32 %87)
  br label %110

89:                                               ; preds = %63
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* @IPSEC_PORT_IPSEC_ISAKMP, align 4
  %94 = call i32 @DeletePortFromUdpListener(%struct.TYPE_13__* %92, i32 %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_UDP, align 4
  %99 = call i32 @DeletePortFromUdpListener(%struct.TYPE_13__* %97, i32 %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_RAW, align 4
  %104 = call i32 @DeletePortFromUdpListener(%struct.TYPE_13__* %102, i32 %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i32, i32* @IPSEC_PORT_IPSEC_ESP_RAW_WPF, align 4
  %109 = call i32 @DeletePortFromUdpListener(%struct.TYPE_13__* %107, i32 %108)
  br label %110

110:                                              ; preds = %89, %68
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @IsEmptyStr(i32 %113)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @StrCpy(i32 %121, i32 4, i32 %124)
  br label %126

126:                                              ; preds = %116, %110
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %128 = call i32 @IPsecNormalizeServiceSetting(%struct.TYPE_18__* %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @Unlock(i32 %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @Set(i32 %135)
  br label %137

137:                                              ; preds = %126, %20, %10
  ret void
}

declare dso_local i32 @IsZero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @AddPortToUdpListener(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DeletePortFromUdpListener(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @IPsecNormalizeServiceSetting(%struct.TYPE_18__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
