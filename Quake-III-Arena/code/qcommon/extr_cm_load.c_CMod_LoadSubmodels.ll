; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadSubmodels.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadSubmodels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i8**, i8** }
%struct.TYPE_7__ = type { i32, i32*, i32, i32* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32*, i32* }

@cmod_base = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CMod_LoadSubmodels: funny lump size\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Map with no models\00", align 1
@h_high = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MAX_SUBMODELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"MAX_SUBMODELS exceeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CMod_LoadSubmodels(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load i64, i64* @cmod_base, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = urem i64 %19, 32
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ERR_DROP, align 4
  %24 = call i32 @Com_Error(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 32
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = call i32 @Com_Error(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 48
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @h_high, align 4
  %43 = call i8* @Hunk_Alloc(i32 %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 3), align 8
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 0), align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAX_SUBMODELS, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @ERR_DROP, align 4
  %51 = call i32 @Com_Error(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %37
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %194, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %201

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 3), align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %96, %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %99

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @LittleFloat(i32 %72)
  %74 = getelementptr i8, i8* %73, i64 -1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @LittleFloat(i32 %87)
  %89 = getelementptr i8, i8* %88, i64 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %89, i8** %95, align 8
  br label %96

96:                                               ; preds = %65
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %62

99:                                               ; preds = %62
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %194

103:                                              ; preds = %99
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @LittleLong(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 4
  %116 = load i32, i32* @h_high, align 4
  %117 = call i8* @Hunk_Alloc(i32 %115, i32 %116)
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %8, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 1), align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i32* %123, i32** %126, align 8
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %145, %103
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @LittleLong(i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %127

148:                                              ; preds = %127
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @LittleLong(i32 %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 4
  %161 = load i32, i32* @h_high, align 4
  %162 = call i8* @Hunk_Alloc(i32 %160, i32 %161)
  %163 = bitcast i8* %162 to i32*
  store i32* %163, i32** %8, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cm, i32 0, i32 2), align 8
  %166 = sext i32 %165 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  store i32* %168, i32** %171, align 8
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %190, %148
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %172
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @LittleLong(i32 %182)
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %179
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %172

193:                                              ; preds = %172
  br label %194

194:                                              ; preds = %193, %102
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 1
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %3, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 1
  store %struct.TYPE_10__* %200, %struct.TYPE_10__** %4, align 8
  br label %53

201:                                              ; preds = %53
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i8* @Hunk_Alloc(i32, i32) #1

declare dso_local i8* @LittleFloat(i32) #1

declare dso_local i32 @LittleLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
