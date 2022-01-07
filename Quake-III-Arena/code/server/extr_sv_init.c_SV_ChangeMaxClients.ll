; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_ChangeMaxClients.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_ChangeMaxClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@sv_maxclients = common dso_local global %struct.TYPE_12__* null, align 8
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CS_CONNECTED = common dso_local global i64 0, align 8
@com_dedicated = common dso_local global %struct.TYPE_13__* null, align 8
@PACKET_BACKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_ChangeMaxClients() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %28, %0
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CS_CONNECTED, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SV_BoundMaxClients(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %151

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_10__* @Hunk_AllocateTempMemory(i32 %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %82, %45
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CS_CONNECTED, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = bitcast %struct.TYPE_10__* %68 to i8*
  %74 = bitcast %struct.TYPE_10__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  br label %81

75:                                               ; preds = %55
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = call i32 @Com_Memset(%struct.TYPE_10__* %79, i32 0, i32 8)
  br label %81

81:                                               ; preds = %75, %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %51

85:                                               ; preds = %51
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %87 = call i32 @Z_Free(%struct.TYPE_10__* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = call %struct.TYPE_10__* @Z_Malloc(i32 %93)
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @Com_Memset(%struct.TYPE_10__* %95, i32 0, i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %128, %85
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CS_CONNECTED, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %107
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 1), align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = bitcast %struct.TYPE_10__* %120 to i8*
  %126 = bitcast %struct.TYPE_10__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 8, i1 false)
  br label %127

127:                                              ; preds = %116, %107
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  br label %103

131:                                              ; preds = %103
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = call i32 @Hunk_FreeTempMemory(%struct.TYPE_10__* %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dedicated, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PACKET_BACKUP, align 4
  %143 = mul nsw i32 %141, %142
  %144 = mul nsw i32 %143, 64
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 8
  br label %151

145:                                              ; preds = %131
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sv_maxclients, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 4
  %150 = mul nsw i32 %149, 64
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 8
  br label %151

151:                                              ; preds = %44, %145, %138
  ret void
}

declare dso_local i32 @SV_BoundMaxClients(i32) #1

declare dso_local %struct.TYPE_10__* @Hunk_AllocateTempMemory(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @Z_Free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @Z_Malloc(i32) #1

declare dso_local i32 @Hunk_FreeTempMemory(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
