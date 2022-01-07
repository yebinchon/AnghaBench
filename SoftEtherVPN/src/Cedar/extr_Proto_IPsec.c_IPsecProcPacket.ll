; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_IPsecProcPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_IPsecProcPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i64, i32, i32*, i8* }

@IKE_UDP_TYPE_ISAKMP = common dso_local global i8* null, align 8
@IKE_UDP_TYPE_ESP = common dso_local global i8* null, align 8
@WFP_ESP_PACKET_TAG_1 = common dso_local global i64 0, align 8
@WFP_ESP_PACKET_TAG_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecProcPacket(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %134

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 130
  br i1 %33, label %34, label %64

34:                                               ; preds = %16
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 4
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IsZero(i32* %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 4
  store i64 %55, i64* %53, align 8
  %56 = load i8*, i8** @IKE_UDP_TYPE_ISAKMP, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %63

59:                                               ; preds = %39, %34
  %60 = load i8*, i8** @IKE_UDP_TYPE_ESP, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %45
  br label %110

64:                                               ; preds = %16
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %99

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 8
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @IsZero(i32* %77, i32 8)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 8
  store i64 %90, i64* %88, align 8
  %91 = load i8*, i8** @IKE_UDP_TYPE_ESP, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  br label %98

94:                                               ; preds = %74, %69
  %95 = load i8*, i8** @IKE_UDP_TYPE_ISAKMP, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %80
  br label %109

99:                                               ; preds = %64
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 131
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i8*, i8** @IKE_UDP_TYPE_ESP, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109, %63
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %125 [
    i32 128, label %117
    i32 129, label %121
    i32 130, label %121
    i32 131, label %121
  ]

117:                                              ; preds = %113
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = call i32 @ProcL2TPPacketRecv(i32* %118, %struct.TYPE_7__* %119)
  br label %125

121:                                              ; preds = %113, %113, %113
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = call i32 @ProcIKEPacketRecv(i32* %122, %struct.TYPE_7__* %123)
  br label %125

125:                                              ; preds = %113, %121, %117
  br label %126

126:                                              ; preds = %125, %110
  %127 = load i8*, i8** %7, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i32* %128, i32** %130, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %15
  ret void
}

declare dso_local i64 @IsZero(i32*, i32) #1

declare dso_local i32 @ProcL2TPPacketRecv(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ProcIKEPacketRecv(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
