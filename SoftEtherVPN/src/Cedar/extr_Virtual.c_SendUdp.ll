; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendUdp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendUdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i32, i64 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8* }

@UDP_HEADER_SIZE = common dso_local global i32 0, align 4
@IP_PROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendUdp(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* @UDP_HEADER_SIZE, align 4
  %20 = load i32, i32* %14, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i8*, i8** %13, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %7
  br label %99

28:                                               ; preds = %24
  %29 = load i32, i32* %17, align 4
  %30 = icmp sgt i32 %29, 65536
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %99

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 32, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_8__* @Malloc(i32 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %15, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = bitcast %struct.TYPE_8__* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = bitcast i32* %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %16, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @IP_PROTO_UDP, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i8* @Endian16(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i8* @Endian16(i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @Endian16(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %17, align 4
  %66 = call i8* @Endian16(i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %72 = bitcast %struct.TYPE_7__* %71 to i32*
  %73 = load i32, i32* @UDP_HEADER_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @Copy(i32* %75, i8* %76, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 12
  %82 = call i32 @IpChecksum(%struct.TYPE_8__* %79, i32 %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %32
  store i32 65535, i32* %18, align 4
  br label %86

86:                                               ; preds = %85, %32
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @IP_PROTO_UDP, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @SendIp(i32* %90, i32 %91, i32 %92, i32 %93, %struct.TYPE_7__* %94, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %98 = call i32 @Free(%struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %86, %31, %27
  ret void
}

declare dso_local %struct.TYPE_8__* @Malloc(i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @Copy(i32*, i8*, i32) #1

declare dso_local i32 @IpChecksum(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SendIp(i32*, i32, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
