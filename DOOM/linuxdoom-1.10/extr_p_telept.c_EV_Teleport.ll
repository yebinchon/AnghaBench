; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_telept.c_EV_Teleport.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_telept.c_EV_Teleport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i64, i64, i64, %struct.TYPE_17__*, i64, i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }

@MF_MISSILE = common dso_local global i32 0, align 4
@numsectors = common dso_local global i32 0, align 4
@sectors = common dso_local global %struct.TYPE_19__* null, align 8
@thinkercap = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@P_MobjThinker = common dso_local global i64 0, align 8
@MT_TELEPORTMAN = common dso_local global i64 0, align 8
@MT_TFOG = common dso_local global i32 0, align 4
@sfx_telept = common dso_local global i32 0, align 4
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EV_Teleport(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MF_MISSILE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %202

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %202

29:                                               ; preds = %25
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %198, %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @numsectors, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %201

37:                                               ; preds = %33
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sectors, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %197

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @thinkercap, i32 0, i32 1), align 8
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %13, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @thinkercap, i32 0, i32 1), align 8
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %13, align 8
  br label %49

49:                                               ; preds = %192, %46
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, @thinkercap
  br i1 %51, label %52, label %196

52:                                               ; preds = %49
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @P_MobjThinker, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %192

60:                                               ; preds = %52
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %62 = bitcast %struct.TYPE_18__* %61 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %10, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MT_TELEPORTMAN, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %192

69:                                               ; preds = %60
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 12
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %14, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sectors, align 8
  %77 = ptrtoint %struct.TYPE_19__* %75 to i64
  %78 = ptrtoint %struct.TYPE_19__* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %192

85:                                               ; preds = %69
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %15, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %17, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @P_TeleportMove(%struct.TYPE_20__* %95, i64 %98, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %202

105:                                              ; preds = %85
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 11
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 8
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 7
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = icmp ne %struct.TYPE_17__* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %105
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %118, %123
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %115, %105
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i32, i32* @MT_TFOG, align 4
  %134 = call %struct.TYPE_20__* @P_SpawnMobj(i64 %130, i64 %131, i64 %132, i32 %133)
  store %struct.TYPE_20__* %134, %struct.TYPE_20__** %11, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %136 = load i32, i32* @sfx_telept, align 4
  %137 = call i32 @S_StartSound(%struct.TYPE_20__* %135, i32 %136)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %142 = lshr i32 %140, %141
  store i32 %142, i32* %12, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 10
  %145 = load i64, i64* %144, align 8
  %146 = load i32*, i32** @finecosine, align 8
  %147 = load i32, i32* %12, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 20, %150
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %145, %152
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 9
  %156 = load i64, i64* %155, align 8
  %157 = load i32*, i32** @finesine, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 20, %161
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %156, %163
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @MT_TFOG, align 4
  %169 = call %struct.TYPE_20__* @P_SpawnMobj(i64 %153, i64 %164, i64 %167, i32 %168)
  store %struct.TYPE_20__* %169, %struct.TYPE_20__** %11, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %171 = load i32, i32* @sfx_telept, align 4
  %172 = call i32 @S_StartSound(%struct.TYPE_20__* %170, i32 %171)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 7
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = icmp ne %struct.TYPE_17__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %129
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 3
  store i32 18, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %129
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 6
  store i64 0, i64* %191, align 8
  store i32 1, i32* %4, align 4
  br label %202

192:                                              ; preds = %84, %68, %59
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %13, align 8
  br label %49

196:                                              ; preds = %49
  br label %197

197:                                              ; preds = %196, %37
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %33

201:                                              ; preds = %33
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %201, %180, %104, %28, %24
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @P_TeleportMove(%struct.TYPE_20__*, i64, i64) #1

declare dso_local %struct.TYPE_20__* @P_SpawnMobj(i64, i64, i64, i32) #1

declare dso_local i32 @S_StartSound(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
