; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendDataPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendDataPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }

@OPENVPN_P_DATA_V1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsSendDataPacket(%struct.TYPE_5__* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [16 x i32], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* @OPENVPN_P_DATA_V1, align 4
  %18 = shl i32 %17, 3
  %19 = and i32 %18, 248
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 7
  %22 = or i32 %19, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %5
  br label %160

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @WRITE_UINT(i32* %42, i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = add i64 76, %45
  %47 = add i64 %46, 256
  %48 = call i32* @Malloc(i64 %47)
  store i32* %48, i32** %12, align 8
  store i64 76, i64* %13, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @WRITE_UINT(i32* %53, i64 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %63 = load i32*, i32** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i8*, i8** %9, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @OvsEncrypt(%struct.TYPE_6__* %58, %struct.TYPE_7__* null, i32* %61, i32* %62, i32* %65, i32* %67, i64 %68, i32* %71, i32 8)
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %79 = call i32 (i32*, ...) @Copy(i32* %77, i32* %78, i64 64)
  br label %150

80:                                               ; preds = %32
  %81 = load i64, i64* %10, align 8
  %82 = add i64 8, %81
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32* @ZeroMalloc(i64 %83)
  store i32* %84, i32** %16, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @WRITE_UINT(i32* %85, i64 %86)
  %88 = load i32*, i32** %16, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 (i32*, ...) @Copy(i32* %89, i8* %90, i64 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 4, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %99, %104
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %105, %106
  %108 = add i64 %107, 256
  %109 = call i32* @Malloc(i64 %108)
  store i32* %109, i32** %12, align 8
  store i64 4, i64* %13, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32*, i32** %16, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i64 @OvsEncrypt(%struct.TYPE_6__* %115, %struct.TYPE_7__* %118, i32* %121, i32* null, i32* %123, i32* %124, i64 %125, i32* null, i32 0)
  %127 = load i64, i64* %13, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %13, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = call i32 @Free(i32* %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i32, i32* %136, i64 %142
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i32*, ...) @Copy(i32* %133, i32* %143, i64 %148)
  br label %150

150:                                              ; preds = %80, %39
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @OvsSendPacketRawNow(i32 %153, i32 %156, i32* %157, i64 %158)
  br label %160

160:                                              ; preds = %150, %31
  ret void
}

declare dso_local i32 @WRITE_UINT(i32*, i64) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i64 @OvsEncrypt(%struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i32*, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @Copy(i32*, ...) #1

declare dso_local i32* @ZeroMalloc(i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @OvsSendPacketRawNow(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
