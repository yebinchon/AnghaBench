; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnTcpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnTcpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i8*, i8*, i32, i32, i32 }

@NAT_TCP = common dso_local global i32 0, align 4
@TCP_FIN = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@NAT_TCP_WAIT_DISCONNECT = common dso_local global i64 0, align 8
@TCP_SYN = common dso_local global i32 0, align 4
@TCP_ACK = common dso_local global i32 0, align 4
@NAT_TCP_ESTABLISHED = common dso_local global i64 0, align 8
@IP_PROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnTcpReceived(%struct.TYPE_14__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = icmp eq %struct.TYPE_14__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %7
  br label %173

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %173

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %15, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %36 = call i32 @TCP_GET_HEADER_SIZE(%struct.TYPE_12__* %35)
  %37 = mul nsw i32 %36, 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 32
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %32
  br label %173

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %16, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* @NAT_TCP, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Endian16(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @Endian16(i32 %64)
  %66 = call i32 @NnSetNat(%struct.TYPE_13__* %19, i32 %55, i32 0, i32 0, i32 %56, i32 %60, i32 %61, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_13__* @SearchHash(i32 %69, %struct.TYPE_13__* %19)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %20, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %173

73:                                               ; preds = %46
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @Endian16(i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TCP_FIN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %73
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TCP_RST, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103, %73
  %111 = load i64, i64* @NAT_TCP_WAIT_DISCONNECT, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TCP_SYN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TCP_ACK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NAT_TCP_WAIT_DISCONNECT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i64, i64* @NAT_TCP_ESTABLISHED, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %128
  br label %139

139:                                              ; preds = %138, %121, %114
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @Endian32(i32 %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @Endian32(i32 %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @IP_PROTO_TCP, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i64 @CalcChecksumForIPv4(i32 %152, i32 %155, i32 %156, %struct.TYPE_12__* %157, i32 %158, i32 0)
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @IP_PROTO_TCP, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @SendIp(%struct.TYPE_15__* %164, i32 %167, i32 %168, i32 %169, %struct.TYPE_12__* %170, i32 %171)
  br label %173

173:                                              ; preds = %26, %31, %45, %139, %46
  ret void
}

declare dso_local i32 @TCP_GET_HEADER_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @NnSetNat(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local %struct.TYPE_13__* @SearchHash(i32, %struct.TYPE_13__*) #1

declare dso_local i8* @Endian32(i32) #1

declare dso_local i64 @CalcChecksumForIPv4(i32, i32, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @SendIp(%struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
