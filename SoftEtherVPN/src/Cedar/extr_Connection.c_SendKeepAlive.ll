; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_SendKeepAlive.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_SendKeepAlive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }

@MAX_KEEPALIVE_SIZE = common dso_local global i64 0, align 8
@KEEP_ALIVE_MAGIC = common dso_local global i64 0, align 8
@UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendKeepAlive(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %136

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  %23 = call i64 (...) @rand()
  %24 = load i64, i64* @MAX_KEEPALIVE_SIZE, align 8
  %25 = urem i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* @KEEP_ALIVE_MAGIC, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = load i32*, i32** @UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE, align 8
  %49 = call i32 @StrLen(i32* %48)
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @MAX(i64 %47, i32 %52)
  store i64 %53, i64* %5, align 8
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %46, %39
  br label %55

55:                                               ; preds = %54, %34, %29, %19
  %56 = load i64, i64* %5, align 8
  %57 = call i64* @MallocFast(i64 %56)
  store i64* %57, i64** %10, align 8
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %67, %55
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = call i64 (...) @rand()
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %58

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @Endian16(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i64*, i64** %10, align 8
  %82 = load i32*, i32** @UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE, align 8
  %83 = load i32*, i32** @UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE, align 8
  %84 = call i32 @StrLen(i32* %83)
  %85 = call i32 @Copy(i64* %81, i32* %82, i32 %84)
  %86 = load i64*, i64** %10, align 8
  %87 = load i32*, i32** @UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE, align 8
  %88 = call i32 @StrLen(i32* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = call i32 @Copy(i64* %90, i32* %12, i32 4)
  br label %92

92:                                               ; preds = %73, %70
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @Endian32(i64 %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @Endian32(i64 %95)
  store i64 %96, i64* %8, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @WriteSendFifo(%struct.TYPE_7__* %99, i32* %100, i64* %7, i64 8)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @WriteSendFifo(%struct.TYPE_7__* %104, i32* %105, i64* %8, i64 8)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i64*, i64** %10, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @WriteSendFifo(%struct.TYPE_7__* %109, i32* %110, i64* %111, i64 %112)
  %114 = load i64, i64* %5, align 8
  %115 = add i64 16, %114
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %115
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load i64, i64* %5, align 8
  %125 = add i64 16, %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, %125
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load i64*, i64** %10, align 8
  %135 = call i32 @Free(i64* %134)
  br label %136

136:                                              ; preds = %92, %18
  ret void
}

declare dso_local i64 @rand(...) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @StrLen(i32*) #1

declare dso_local i64* @MallocFast(i64) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @Copy(i64*, i32*, i32) #1

declare dso_local i64 @Endian32(i64) #1

declare dso_local i32 @WriteSendFifo(%struct.TYPE_7__*, i32*, i64*, i64) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
