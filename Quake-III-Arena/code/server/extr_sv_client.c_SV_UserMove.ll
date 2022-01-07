; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_UserMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_UserMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, %struct.TYPE_19__, i32, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@MAX_PACKET_USERCMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmdCount < 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cmdCount > MAX_PACKET_USERCMDS\0A\00", align 1
@sv = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@MAX_RELIABLE_COMMANDS = common dso_local global i32 0, align 4
@svs = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@PACKET_MASK = common dso_local global i64 0, align 8
@sv_pure = common dso_local global %struct.TYPE_23__* null, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: didn't get cp command, resending gamestate\0A\00", align 1
@CS_PRIMED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot validate pure client!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i64)* @SV_UserMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_UserMove(%struct.TYPE_21__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i32, i32* @MAX_PACKET_USERCMDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca %struct.TYPE_20__, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %31

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @MSG_ReadByte(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %201

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MAX_PACKET_USERCMDS, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %201

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sv, i32 0, i32 0), align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %53, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @Com_HashKey(i32 %62, i32 32)
  %64 = load i32, i32* %8, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = call i32 @Com_Memset(%struct.TYPE_20__* %10, i32 0, i32 8)
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %14, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %81, %44
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %73
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %13, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %79 = call i32 @MSG_ReadDeltaUsercmdKey(i32* %75, i32 %76, %struct.TYPE_20__* %77, %struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %14, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %67

84:                                               ; preds = %67
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @svs, i32 0, i32 0), align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @PACKET_MASK, align 8
  %94 = and i64 %92, %93
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  store i32 %85, i32* %96, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_pure, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %84
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CS_ACTIVE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %120, i64 %123)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = call i32 @SV_SendClientGameState(%struct.TYPE_21__* %125)
  br label %127

127:                                              ; preds = %117, %111
  store i32 1, i32* %15, align 4
  br label %201

128:                                              ; preds = %106, %101, %84
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CS_PRIMED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 0
  %137 = call i32 @SV_ClientEnterWorld(%struct.TYPE_21__* %135, %struct.TYPE_20__* %136)
  br label %138

138:                                              ; preds = %134, %128
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_pure, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %150 = call i32 @SV_DropClient(%struct.TYPE_21__* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %201

151:                                              ; preds = %143, %138
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CS_ACTIVE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  store i32 -1, i32* %159, align 8
  store i32 1, i32* %15, align 4
  br label %201

160:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %197, %160
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %170, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  br label %197

179:                                              ; preds = %165
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sle i64 %184, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %197

191:                                              ; preds = %179
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %194
  %196 = call i32 @SV_ClientThink(%struct.TYPE_21__* %192, %struct.TYPE_20__* %195)
  br label %197

197:                                              ; preds = %191, %190, %178
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %161

200:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %201

201:                                              ; preds = %200, %157, %148, %127, %42, %36
  %202 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %15, align 4
  switch i32 %203, label %205 [
    i32 0, label %204
    i32 1, label %204
  ]

204:                                              ; preds = %201, %201
  ret void

205:                                              ; preds = %201
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSG_ReadByte(i32*) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @Com_HashKey(i32, i32) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @MSG_ReadDeltaUsercmdKey(i32*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32 @Com_DPrintf(i8*, i32, i64) #2

declare dso_local i32 @SV_SendClientGameState(%struct.TYPE_21__*) #2

declare dso_local i32 @SV_ClientEnterWorld(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @SV_DropClient(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @SV_ClientThink(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
