; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnBuildUdpPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnBuildUdpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@IP_PROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @NnBuildUdpPacket(%struct.TYPE_16__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %11, align 8
  %16 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %12, align 8
  %17 = call i32 @Zero(%struct.TYPE_15__* %13, i32 72)
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 8
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 7
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i8* @Endian16(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i8* @Endian16(i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @IP_PROTO_UDP, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, 72
  %35 = call i8* @Endian16(i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %39 = call i32 @WriteBuf(%struct.TYPE_16__* %38, %struct.TYPE_15__* %13, i32 72)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = call i32 @WriteBufBuf(%struct.TYPE_16__* %40, %struct.TYPE_16__* %41)
  %43 = call i32 @Zero(%struct.TYPE_15__* %14, i32 72)
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @Endian16(i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i8* @Endian16(i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, 72
  %55 = call i8* @Endian16(i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IpChecksum(%struct.TYPE_15__* %59, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = call i32 @WriteBuf(%struct.TYPE_16__* %65, %struct.TYPE_15__* %14, i32 72)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @WriteBuf(%struct.TYPE_16__* %67, %struct.TYPE_15__* %70, i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %76 = call i32 @SeekBufToBegin(%struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = call i32 @FreeBuf(%struct.TYPE_16__* %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %80 = call i32 @FreeBuf(%struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  ret %struct.TYPE_16__* %81
}

declare dso_local %struct.TYPE_16__* @NewBuf(...) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @Endian16(i64) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @WriteBufBuf(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @IpChecksum(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SeekBufToBegin(%struct.TYPE_16__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
