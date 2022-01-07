; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_PollingNatIcmp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_PollingNatIcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i64, i32, i32, i8*, i32 }

@ICMP_TYPE_DESTINATION_UNREACHABLE = common dso_local global i64 0, align 8
@ICMP_TYPE_TIME_EXCEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PollingNatIcmp(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = icmp eq %struct.TYPE_14__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  br label %173

23:                                               ; preds = %19
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %173

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %161, %30
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = call %struct.TYPE_17__* @GetNext(%struct.TYPE_13__* %34)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %5, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %164

37:                                               ; preds = %31
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %6, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 40
  br i1 %47, label %48, label %161

48:                                               ; preds = %37
  %49 = load i32*, i32** %6, align 8
  %50 = bitcast i32* %49 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %8, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = bitcast %struct.TYPE_16__* %51 to i32*
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @GetIpHeaderSize(i32* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %56, 40
  br i1 %57, label %58, label %160

58:                                               ; preds = %48
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @Endian16(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %160

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %10, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @Endian16(i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %77, 44
  br i1 %78, label %79, label %159

79:                                               ; preds = %65
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = bitcast i32* %83 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %12, align 8
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %13, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ICMP_TYPE_DESTINATION_UNREACHABLE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %79
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ICMP_TYPE_TIME_EXCEEDED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %91, %79
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp uge i64 %99, 84
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 40
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = bitcast i32* %107 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %14, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %110, 44
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %114 = bitcast %struct.TYPE_16__* %113 to i32*
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @GetIpHeaderSize(i32* %114, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp uge i64 %118, 40
  br i1 %119, label %120, label %133

120:                                              ; preds = %101
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  store i8* null, i8** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i8* @IpChecksum(%struct.TYPE_16__* %128, i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %120, %101
  br label %134

134:                                              ; preds = %133, %97
  br label %135

135:                                              ; preds = %134, %91
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i8* @IpChecksum(%struct.TYPE_16__* %136, i32 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 1
  %157 = call i32 @MAX(i64 %156, i32 1)
  %158 = call i32 @SendIpEx(%struct.TYPE_14__* %141, i32 %144, i32 %147, i32 %150, i32* %151, i32 %152, i32 %157)
  br label %159

159:                                              ; preds = %135, %65
  br label %160

160:                                              ; preds = %159, %58, %48
  br label %161

161:                                              ; preds = %160, %37
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %163 = call i32 @FreeBlock(%struct.TYPE_17__* %162)
  br label %31

164:                                              ; preds = %31
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %164
  br label %173

173:                                              ; preds = %22, %172, %23
  ret void
}

declare dso_local %struct.TYPE_17__* @GetNext(%struct.TYPE_13__*) #1

declare dso_local i32 @GetIpHeaderSize(i32*, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i8* @IpChecksum(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @SendIpEx(%struct.TYPE_14__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
