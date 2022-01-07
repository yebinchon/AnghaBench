; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsBuildPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsBuildPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32, i64*, i32 }

@OPENVPN_P_DATA_V1 = common dso_local global i32 0, align 4
@OPENVPN_MAX_NUMACK = common dso_local global i32 0, align 4
@OPENVPN_P_ACK_V1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OvsBuildPacket(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %121

11:                                               ; preds = %1
  %12 = call i32* (...) @NewBuf()
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 3
  %17 = and i32 %16, 248
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 7
  %22 = or i32 %17, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WriteBufChar(i32* %23, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OPENVPN_P_DATA_V1, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %11
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @WriteBuf(i32* %32, i32* %35, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @SeekBuf(i32* %40, i32 0, i32 0)
  %42 = load i32*, i32** %4, align 8
  store i32* %42, i32** %2, align 8
  br label %121

43:                                               ; preds = %11
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @WriteBufInt64(i32* %44, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OPENVPN_MAX_NUMACK, align 4
  %53 = call i64 @MIN(i32 %51, i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @WriteBufChar(i32* %54, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %86

62:                                               ; preds = %43
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 7
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @WriteBufInt(i32* %68, i32 %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %63

80:                                               ; preds = %63
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @WriteBufInt64(i32* %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %43
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @OPENVPN_P_ACK_V1, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @WriteBufInt(i32* %93, i32 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 1
  br i1 %101, label %102, label %116

102:                                              ; preds = %92
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @WriteBuf(i32* %108, i32* %111, i32 %114)
  br label %116

116:                                              ; preds = %107, %102, %92
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @SeekBuf(i32* %118, i32 0, i32 0)
  %120 = load i32*, i32** %4, align 8
  store i32* %120, i32** %2, align 8
  br label %121

121:                                              ; preds = %117, %31, %10
  %122 = load i32*, i32** %2, align 8
  ret i32* %122
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBufChar(i32*, i32) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i32 @WriteBufInt64(i32*, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @WriteBufInt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
