; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_PacketEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_PacketEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64 }

@svs = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_27__* null, align 8
@CS_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"SV_PacketEvent: fixing up a translated port\0A\00", align 1
@CS_ZOMBIE = common dso_local global i64 0, align 8
@NS_SERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_PacketEvent(i64 %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @SV_ConnectionlessPacket(i64 %23, %struct.TYPE_24__* %21)
  br label %113

25:                                               ; preds = %13, %2
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = call i32 @MSG_BeginReadingOOB(%struct.TYPE_24__* %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = call i32 @MSG_ReadLong(%struct.TYPE_24__* %28)
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = call i32 @MSG_ReadShort(%struct.TYPE_24__* %30)
  %32 = and i32 %31, 65535
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @svs, i32 0, i32 1), align 8
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %6, align 8
  br label %34

34:                                               ; preds = %103, %25
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sv_maxclients, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %108

40:                                               ; preds = %34
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CS_FREE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %103

47:                                               ; preds = %40
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @NET_CompareBaseAdr(i64 %52, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %103

58:                                               ; preds = %47
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %103

66:                                               ; preds = %58
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = call i32 @Com_Printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %66
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = call i64 @SV_Netchan_Process(%struct.TYPE_25__* %84, %struct.TYPE_24__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CS_ZOMBIE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @svs, i32 0, i32 0), align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = call i32 @SV_ExecuteClientMessage(%struct.TYPE_25__* %98, %struct.TYPE_24__* %99)
  br label %101

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101, %83
  br label %113

103:                                              ; preds = %65, %57, %46
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 1
  store %struct.TYPE_25__* %107, %struct.TYPE_25__** %6, align 8
  br label %34

108:                                              ; preds = %34
  %109 = load i32, i32* @NS_SERVER, align 4
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @NET_OutOfBandPrint(i32 %109, i64 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %108, %102, %20
  ret void
}

declare dso_local i32 @SV_ConnectionlessPacket(i64, %struct.TYPE_24__*) #1

declare dso_local i32 @MSG_BeginReadingOOB(%struct.TYPE_24__*) #1

declare dso_local i32 @MSG_ReadLong(%struct.TYPE_24__*) #1

declare dso_local i32 @MSG_ReadShort(%struct.TYPE_24__*) #1

declare dso_local i32 @NET_CompareBaseAdr(i64, i64) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i64 @SV_Netchan_Process(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @SV_ExecuteClientMessage(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
