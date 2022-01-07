; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnBuildTcpPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnBuildTcpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_14__ = type { i8*, i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, i64, i8*, i64, i8*, i8*, i8*, i8* }

@NnBuildTcpPacket.tcp_mss_option = internal global [8 x i32] [i32 2, i32 4, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0], align 16
@TCP_HEADER_SIZE = common dso_local global i32 0, align 4
@IP_PROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @NnBuildTcpPacket(%struct.TYPE_15__* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8**, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %27 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %24, align 8
  %29 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 40, %30
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = add i64 %35, 32
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_14__* @Malloc(i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %22, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %40 = bitcast %struct.TYPE_14__* %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 40
  %42 = bitcast i32* %41 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %23, align 8
  %43 = load i64, i64* %20, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %10
  store i8** bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @NnBuildTcpPacket.tcp_mss_option, i64 0, i64 2) to i8**), i8*** %26, align 8
  %46 = load i64, i64* %20, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i8* @Endian16(i8* %47)
  %49 = load i8**, i8*** %26, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i64, i64* %24, align 8
  %51 = add i64 %50, 32
  store i64 %51, i64* %24, align 8
  br label %52

52:                                               ; preds = %45, %10
  %53 = load i64, i64* %24, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  store i64 %57, i64* %25, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @IP_PROTO_TCP, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %25, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i8* @Endian16(i8* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @Endian16(i8* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i8* @Endian16(i8* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i8* @Endian32(i64 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i8* @Endian32(i64 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %93 = load i64, i64* %24, align 8
  %94 = sdiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @TCP_SET_HEADER_SIZE(%struct.TYPE_13__* %92, i32 %95)
  %97 = load i64, i64* %18, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %19, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = call i8* @Endian16(i8* %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %20, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %52
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %114 = bitcast %struct.TYPE_13__* %113 to i32*
  %115 = load i32, i32* @TCP_HEADER_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @Copy(i32* %117, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @NnBuildTcpPacket.tcp_mss_option, i64 0, i64 0), i32 32)
  br label %119

119:                                              ; preds = %112, %52
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %121 = bitcast %struct.TYPE_13__* %120 to i32*
  %122 = load i64, i64* %24, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @Copy(i32* %123, i32* %126, i32 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %133 = load i64, i64* %25, align 8
  %134 = add nsw i64 %133, 12
  %135 = call i64 @IpChecksum(%struct.TYPE_14__* %132, i64 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %139 = load i64, i64* %25, align 8
  %140 = call %struct.TYPE_15__* @NewBufFromMemory(%struct.TYPE_13__* %138, i64 %139)
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %21, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %142 = call i32 @Free(%struct.TYPE_14__* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %144 = call i32 @FreeBuf(%struct.TYPE_15__* %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  ret %struct.TYPE_15__* %145
}

declare dso_local %struct.TYPE_14__* @Malloc(i32) #1

declare dso_local i8* @Endian16(i8*) #1

declare dso_local i8* @Endian32(i64) #1

declare dso_local i32 @TCP_SET_HEADER_SIZE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @IpChecksum(%struct.TYPE_14__*, i64) #1

declare dso_local %struct.TYPE_15__* @NewBufFromMemory(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_14__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
