; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_WriteSnapshotToClient.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_snapshot.c_SV_WriteSnapshotToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }

@PACKET_MASK = common dso_local global i64 0, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@PACKET_BACKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Delta request from out of date packet.\0A\00", align 1
@svs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Delta request from out of date entities.\0A\00", align 1
@svc_snapshot = common dso_local global i32 0, align 4
@SNAPFLAG_RATE_DELAYED = common dso_local global i32 0, align 4
@SNAPFLAG_NOT_ACTIVE = common dso_local global i32 0, align 4
@sv_padPackets = common dso_local global %struct.TYPE_13__* null, align 8
@svc_nop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @SV_WriteSnapshotToClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_WriteSnapshotToClient(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PACKET_MASK, align 8
  %18 = and i64 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i64 %18
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CS_ACTIVE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %82

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = load i32, i32* @PACKET_BACKUP, align 4
  %41 = sub nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %81

49:                                               ; preds = %31
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PACKET_MASK, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %57
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 1), align 8
  %73 = sub nsw i64 %71, %72
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %49
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %49
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @svc_snapshot, align 4
  %85 = call i32 @MSG_WriteByte(i32* %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 3), align 4
  %88 = call i32 @MSG_WriteLong(i32* %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @MSG_WriteByte(i32* %89, i32 %90)
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 2), align 8
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load i32, i32* @SNAPFLAG_RATE_DELAYED, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %82
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CS_ACTIVE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @SNAPFLAG_NOT_ACTIVE, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @MSG_WriteByte(i32* %112, i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @MSG_WriteByte(i32* %115, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @MSG_WriteData(i32* %120, i32 %123, i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = icmp ne %struct.TYPE_11__* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %111
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = call i32 @MSG_WriteDeltaPlayerstate(i32* %131, i32* %133, i32* %135)
  br label %142

137:                                              ; preds = %111
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = call i32 @MSG_WriteDeltaPlayerstate(i32* %138, i32* null, i32* %140)
  br label %142

142:                                              ; preds = %137, %130
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @SV_EmitPacketEntities(%struct.TYPE_11__* %143, %struct.TYPE_11__* %144, i32* %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_padPackets, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %142
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %162, %151
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_padPackets, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @svc_nop, align 4
  %161 = call i32 @MSG_WriteByte(i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %152

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %142
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @MSG_WriteByte(i32*, i32) #1

declare dso_local i32 @MSG_WriteLong(i32*, i32) #1

declare dso_local i32 @MSG_WriteData(i32*, i32, i32) #1

declare dso_local i32 @MSG_WriteDeltaPlayerstate(i32*, i32*, i32*) #1

declare dso_local i32 @SV_EmitPacketEntities(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
