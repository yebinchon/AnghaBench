; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualDhcpSend.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualDhcpSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64* }
%struct.TYPE_11__ = type { i32, i8*, i32, i64, i64, i64, i8*, i64, i64, i64 }

@DHCP_MAGIC_COOKIE = common dso_local global i64 0, align 8
@DHCP_MIN_SIZE = common dso_local global i64 0, align 8
@NAT_DHCP_SERVER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualDhcpSend(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, %struct.TYPE_12__* %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  store i64 192, i64* %19, align 8
  %25 = load i64, i64* @DHCP_MAGIC_COOKIE, align 8
  %26 = call i8* @Endian32(i64 %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %21, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %9
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %9
  br label %114

34:                                               ; preds = %30
  %35 = load i64, i64* %19, align 8
  %36 = add i64 %35, 80
  %37 = add i64 %36, 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add i64 %37, %41
  store i64 %42, i64* %20, align 8
  %43 = load i64, i64* %20, align 8
  %44 = load i64, i64* @DHCP_MIN_SIZE, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* @DHCP_MIN_SIZE, align 8
  store i64 %47, i64* %20, align 8
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i64, i64* %20, align 8
  %50 = call %struct.TYPE_11__* @ZeroMalloc(i64 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %22, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 2, i32* %52, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 9
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 8
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i8* @Endian32(i64 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i64*, i64** %15, align 8
  %81 = call i32 @Copy(i8* %79, i64* %80, i32 6)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %83 = bitcast %struct.TYPE_11__* %82 to i64*
  %84 = getelementptr inbounds i64, i64* %83, i64 80
  %85 = load i64, i64* %19, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = bitcast i64* %86 to i8*
  store i8* %87, i8** %23, align 8
  %88 = load i8*, i8** %23, align 8
  %89 = bitcast i8* %88 to i64*
  %90 = getelementptr inbounds i64, i64* %89, i64 8
  %91 = bitcast i64* %90 to i8*
  store i8* %91, i8** %24, align 8
  %92 = load i8*, i8** %23, align 8
  %93 = call i32 @Copy(i8* %92, i64* %21, i32 8)
  %94 = load i8*, i8** %24, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Copy(i8* %94, i64* %97, i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NAT_DHCP_SERVER_PORT, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %110 = load i64, i64* %20, align 8
  %111 = call i32 @SendUdp(%struct.TYPE_10__* %102, i64 %103, i64 %104, i32 %107, i32 %108, %struct.TYPE_11__* %109, i64 %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %113 = call i32 @Free(%struct.TYPE_11__* %112)
  br label %114

114:                                              ; preds = %48, %33
  ret void
}

declare dso_local i8* @Endian32(i64) #1

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i64) #1

declare dso_local i32 @Copy(i8*, i64*, i32) #1

declare dso_local i32 @SendUdp(%struct.TYPE_10__*, i64, i64, i32, i32, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
