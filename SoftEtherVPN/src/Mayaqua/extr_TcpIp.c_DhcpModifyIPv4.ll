; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_DhcpModifyIPv4.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_DhcpModifyIPv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i8*, i64, %struct.TYPE_17__, %struct.TYPE_15__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@L3_IPV4 = common dso_local global i64 0, align 8
@L4_UDP = common dso_local global i64 0, align 8
@L7_DHCPV4 = common dso_local global i64 0, align 8
@IP_PROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @DhcpModifyIPv4(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %153

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.TYPE_19__* @ParsePacketEx4(i8* %23, i64 %24, i32 0, i32 0, i32 0, i32 0, i32 0)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %8, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = icmp ne %struct.TYPE_19__* %26, null
  br i1 %27, label %28, label %82

28:                                               ; preds = %22
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @L3_IPV4, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %28
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @L4_UDP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %34
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @L7_DHCPV4, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.TYPE_20__* @DhcpModify(i32* %47, i32 %50, i64 %53)
  store %struct.TYPE_20__* %54, %struct.TYPE_20__** %10, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = icmp ne %struct.TYPE_20__* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %46
  %58 = call %struct.TYPE_20__* (...) @NewBuf()
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %9, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @WriteBuf(%struct.TYPE_20__* %59, i8* %62, i64 %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @WriteBuf(%struct.TYPE_20__* %71, i8* %74, i64 %77)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %80 = call i32 @FreeBuf(%struct.TYPE_20__* %79)
  br label %81

81:                                               ; preds = %57, %46
  br label %82

82:                                               ; preds = %81, %40, %34, %28, %22
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = call i32 @FreePacket(%struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %86 = icmp ne %struct.TYPE_20__* %85, null
  br i1 %86, label %87, label %151

87:                                               ; preds = %82
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call %struct.TYPE_19__* @ParsePacketEx4(i8* %90, i64 %93, i32 0, i32 0, i32 0, i32 0, i32 0)
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %11, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = icmp ne %struct.TYPE_19__* %95, null
  br i1 %96, label %97, label %150

97:                                               ; preds = %87
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @L3_IPV4, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %97
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @L4_UDP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %103
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %12, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IP_PROTO_UDP, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %134 = bitcast %struct.TYPE_18__* %133 to i32*
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = ptrtoint i32* %134 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = sub nsw i64 %132, %142
  %144 = call i64 @CalcChecksumForIPv4(i32 %121, i32 %127, i32 %128, %struct.TYPE_18__* %129, i64 %143, i32 0)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %109, %103, %97
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %149 = call i32 @FreePacket(%struct.TYPE_19__* %148)
  br label %150

150:                                              ; preds = %147, %87
  br label %151

151:                                              ; preds = %150, %82
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %152, %struct.TYPE_20__** %4, align 8
  br label %153

153:                                              ; preds = %151, %21
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %154
}

declare dso_local %struct.TYPE_19__* @ParsePacketEx4(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @DhcpModify(i32*, i32, i64) #1

declare dso_local %struct.TYPE_20__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_20__*, i8*, i64) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_20__*) #1

declare dso_local i32 @FreePacket(%struct.TYPE_19__*) #1

declare dso_local i64 @CalcChecksumForIPv4(i32, i32, i32, %struct.TYPE_18__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
