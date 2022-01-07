; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCProcessArp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCProcessArp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i8*, i32*, i8*, i32*, i64 }

@ARP_HARDWARE_TYPE_ETHERNET = common dso_local global i64 0, align 8
@MAC_PROTO_IPV4 = common dso_local global i64 0, align 8
@ARP_OPERATION_REQUEST = common dso_local global i64 0, align 8
@MAC_PROTO_ARPV4 = common dso_local global i32 0, align 4
@ARP_OPERATION_RESPONSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPCProcessArp(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [78 x i32], align 16
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 78
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16, %2
  br label %167

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %5, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32* %34, i32** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 14
  %39 = bitcast i32* %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ARP_HARDWARE_TYPE_ETHERNET, align 8
  %44 = call i64 @Endian16(i64 %43)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %167

47:                                               ; preds = %26
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAC_PROTO_IPV4, align 8
  %52 = call i64 @Endian16(i64 %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %167

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 6
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  br label %167

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %8, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 6
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @UINTToIP(i32* %9, i8* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %10, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @UINTToIP(i32* %11, i8* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i64 @CmpIpAddr(i32* %9, i32* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  br label %167

86:                                               ; preds = %66
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @IPCAssociateOnArpTable(%struct.TYPE_8__* %87, i32* %9, i32* %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @IPCAssociateOnArpTable(%struct.TYPE_8__* %90, i32* %11, i32* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @Endian16(i64 %95)
  %97 = load i64, i64* @ARP_OPERATION_REQUEST, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %167

99:                                               ; preds = %86
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = call i64 @CmpIpAddr(i32* %11, i32* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %166

104:                                              ; preds = %99
  %105 = load i32*, i32** %8, align 8
  %106 = call i64 @IsValidUnicastMacAddress(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %165

108:                                              ; preds = %104
  %109 = getelementptr inbounds [78 x i32], [78 x i32]* %12, i64 0, i64 0
  %110 = getelementptr inbounds i32, i32* %109, i64 14
  %111 = bitcast i32* %110 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %13, align 8
  %112 = getelementptr inbounds [78 x i32], [78 x i32]* %12, i64 0, i64 0
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @Copy(i32* %113, i32* %114, i32 6)
  %116 = getelementptr inbounds [78 x i32], [78 x i32]* %12, i64 0, i64 0
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @Copy(i32* %117, i32* %120, i32 6)
  %122 = getelementptr inbounds [78 x i32], [78 x i32]* %12, i64 0, i64 0
  %123 = getelementptr inbounds i32, i32* %122, i64 12
  %124 = load i32, i32* @MAC_PROTO_ARPV4, align 4
  %125 = call i32 @WRITE_USHORT(i32* %123, i32 %124)
  %126 = load i64, i64* @ARP_HARDWARE_TYPE_ETHERNET, align 8
  %127 = call i64 @Endian16(i64 %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* @MAC_PROTO_IPV4, align 8
  %131 = call i64 @Endian16(i64 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  store i32 6, i32* %135, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store i32 4, i32* %137, align 4
  %138 = load i64, i64* @ARP_OPERATION_RESPONSE, align 8
  %139 = call i64 @Endian16(i64 %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 8
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @Copy(i32* %144, i32* %147, i32 6)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = call i8* @IPToUINT(i32* %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = call i32 @Copy(i32* %156, i32* %157, i32 6)
  %159 = call i8* @IPToUINT(i32* %9)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds [78 x i32], [78 x i32]* %12, i64 0, i64 0
  %164 = call i32 @IPCSendL2(%struct.TYPE_8__* %162, i32* %163, i32 312)
  br label %165

165:                                              ; preds = %108, %104
  br label %166

166:                                              ; preds = %165, %99
  br label %167

167:                                              ; preds = %25, %46, %54, %65, %85, %166, %86
  ret void
}

declare dso_local i64 @Endian16(i64) #1

declare dso_local i32 @UINTToIP(i32*, i8*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i32 @IPCAssociateOnArpTable(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @IsValidUnicastMacAddress(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @WRITE_USHORT(i32*, i32) #1

declare dso_local i8* @IPToUINT(i32*) #1

declare dso_local i32 @IPCSendL2(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
