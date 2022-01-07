; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AASLinkEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_sample.c_AAS_AASLinkEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_10__**, i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32 }

@aasworld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AAS_LinkEntity: aas not loaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"AAS_LinkEntity: stack overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @AAS_AASLinkEntity(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x %struct.TYPE_9__], align 16
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 3), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %20 = load i32, i32* @PRT_ERROR, align 4
  %21 = call i32 %19(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %191

22:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  %23 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %10, i64 0, i64 0
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 1
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %11, align 8
  br label %28

28:                                               ; preds = %22, %66, %120, %130, %188
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 -1
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %11, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %10, i64 0, i64 0
  %33 = icmp ult %struct.TYPE_9__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %189

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %127

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 0, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %14, align 8
  br label %48

48:                                               ; preds = %59, %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %63

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %14, align 8
  br label %48

63:                                               ; preds = %57, %48
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %28

67:                                               ; preds = %63
  %68 = call %struct.TYPE_10__* (...) @AAS_AllocAASLink()
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %14, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %4, align 8
  br label %191

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %87 = icmp ne %struct.TYPE_10__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %73
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %91, align 8
  br label %92

92:                                               ; preds = %88, %73
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %15, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %95, align 8
  %96 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 0, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %96, i64 %99
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %103, align 8
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 0, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %104, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %92
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 0, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %116
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %119, align 8
  br label %120

120:                                              ; preds = %111, %92
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %122 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 2), align 8
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 0, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %122, i64 %125
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %126, align 8
  br label %28

127:                                              ; preds = %35
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %28

131:                                              ; preds = %127
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 1), align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %12, align 8
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @aasworld, i32 0, i32 0), align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32* %140, i32** %13, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @AAS_BoxOnPlaneSide2(i32 %141, i32 %142, i32* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %131
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 1
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %11, align 8
  br label %158

158:                                              ; preds = %148, %131
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %160 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %10, i64 0, i64 127
  %161 = icmp uge %struct.TYPE_9__* %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %164 = load i32, i32* @PRT_ERROR, align 4
  %165 = call i32 %163(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %189

166:                                              ; preds = %158
  %167 = load i32, i32* %8, align 4
  %168 = and i32 %167, 2
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 1
  store %struct.TYPE_9__* %179, %struct.TYPE_9__** %11, align 8
  br label %180

180:                                              ; preds = %170, %166
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %182 = getelementptr inbounds [128 x %struct.TYPE_9__], [128 x %struct.TYPE_9__]* %10, i64 0, i64 127
  %183 = icmp uge %struct.TYPE_9__* %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @botimport, i32 0, i32 0), align 8
  %186 = load i32, i32* @PRT_ERROR, align 4
  %187 = call i32 %185(i32 %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %189

188:                                              ; preds = %180
  br label %28

189:                                              ; preds = %184, %162, %34
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %190, %struct.TYPE_10__** %4, align 8
  br label %191

191:                                              ; preds = %189, %71, %18
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %192
}

declare dso_local %struct.TYPE_10__* @AAS_AllocAASLink(...) #1

declare dso_local i32 @AAS_BoxOnPlaneSide2(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
