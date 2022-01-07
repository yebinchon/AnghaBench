; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_CalculateAreaTravelTimes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_route.c_AAS_CalculateAreaTravelTimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i16***, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 (i32, i8*, i32)* }

@aasworld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CalculateAreaTravelTimes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = call i32 (...) @Sys_MilliSeconds()
  store i32 %12, i32* %11, align 4
  %13 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %14 = icmp ne i16*** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %17 = call i32 @FreeMemory(i16*** %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %58, %18
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 4), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 2
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %27
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @GetClearedMemory(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to i16***
  store i16*** %66, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %5, align 8
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %175, %61
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %178

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 4), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %10, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = bitcast i8* %85 to i16**
  %87 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16**, i16*** %87, i64 %89
  store i16** %86, i16*** %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %171, %76
  %99 = load i32, i32* %2, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %174

104:                                              ; preds = %98
  %105 = load i8*, i8** %5, align 8
  %106 = bitcast i8* %105 to i16*
  %107 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16**, i16*** %107, i64 %109
  %111 = load i16**, i16*** %110, align 8
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16*, i16** %111, i64 %113
  store i16* %106, i16** %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 2
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %5, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %128
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %3, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %8, align 8
  br label %133

133:                                              ; preds = %164, %104
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = icmp ne %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %170

136:                                              ; preds = %133
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @VectorCopy(i32 %143, i32 %144)
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call zeroext i16 @AAS_AreaTravelTime(i32 %146, i32 %147, i32 %150)
  %152 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16**, i16*** %152, i64 %154
  %156 = load i16**, i16*** %155, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16*, i16** %156, i64 %158
  %160 = load i16*, i16** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i16, i16* %160, i64 %162
  store i16 %151, i16* %163, align 2
  br label %164

164:                                              ; preds = %136
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %8, align 8
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %133

170:                                              ; preds = %133
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %2, align 4
  br label %98

174:                                              ; preds = %98
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %1, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %1, align 4
  br label %72

178:                                              ; preds = %72
  ret void
}

declare dso_local i32 @Sys_MilliSeconds(...) #1

declare dso_local i32 @FreeMemory(i16***) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local zeroext i16 @AAS_AreaTravelTime(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
