; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualTcpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualTcpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }

@TCP_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualTcpReceived(%struct.TYPE_9__* %0, i64 %1, i64 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %6
  br label %122

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @TCP_HEADER_SIZE, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %122

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %13, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Endian16(i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @Endian16(i32 %41)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i64, i64* %15, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %32
  br label %122

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 4294967295
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 4294967295
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59, %56, %53, %49
  br label %122

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @UINTToIP(%struct.TYPE_11__* %19, i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @UINTToIP(%struct.TYPE_11__* %20, i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 127
  br i1 %75, label %82, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 127
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %66
  br label %122

83:                                               ; preds = %76
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IsInNetwork(i64 %84, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %122

94:                                               ; preds = %83
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %96 = call i32 @TCP_GET_HEADER_SIZE(%struct.TYPE_10__* %95)
  %97 = mul nsw i32 %96, 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %122

103:                                              ; preds = %94
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %16, align 8
  %106 = sub nsw i64 %104, %105
  store i64 %106, i64* %17, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i64, i64* %16, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = bitcast i32* %110 to i8*
  store i8* %111, i8** %18, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %118 = load i8*, i8** %18, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @TcpRecvForInternet(%struct.TYPE_9__* %112, i64 %113, i64 %114, i64 %115, i64 %116, %struct.TYPE_10__* %117, i8* %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %103, %102, %93, %82, %65, %48, %31, %26
  ret void
}

declare dso_local i64 @Endian16(i32) #1

declare dso_local i32 @UINTToIP(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @IsInNetwork(i64, i32, i32) #1

declare dso_local i32 @TCP_GET_HEADER_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @TcpRecvForInternet(%struct.TYPE_9__*, i64, i64, i64, i64, %struct.TYPE_10__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
