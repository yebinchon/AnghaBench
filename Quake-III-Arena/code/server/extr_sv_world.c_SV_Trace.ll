; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_world.c_SV_Trace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_world.c_SV_Trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, i32 }
%struct.TYPE_8__ = type { i32, i64*, i64*, i64*, i64*, i32, i32, i64*, i64*, %struct.TYPE_7__ }

@vec3_origin = common dso_local global i64* null, align 8
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_Trace(%struct.TYPE_7__* %0, i64* %1, i64* %2, i64* %3, i64* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i64*, i64** %11, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %8
  %22 = load i64*, i64** @vec3_origin, align 8
  store i64* %22, i64** %11, align 8
  br label %23

23:                                               ; preds = %21, %8
  %24 = load i64*, i64** %12, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i64*, i64** @vec3_origin, align 8
  store i64* %27, i64** %12, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = call i32 @Com_Memset(%struct.TYPE_8__* %17, i32 0, i32 80)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %31 = load i64*, i64** %10, align 8
  %32 = load i64*, i64** %13, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @CM_BoxTrace(%struct.TYPE_7__* %30, i64* %31, i64* %32, i64* %33, i64* %34, i32 0, i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fcmp une double %40, 1.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @ENTITYNUM_WORLD, align 4
  br label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @ENTITYNUM_NONE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fcmp oeq double %52, 0.000000e+00
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %57 = bitcast %struct.TYPE_7__* %55 to i8*
  %58 = bitcast %struct.TYPE_7__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  br label %179

59:                                               ; preds = %46
  %60 = load i32, i32* %15, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i64* %62, i64** %63, align 8
  %64 = load i64*, i64** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @VectorCopy(i64* %64, i64* %66)
  %68 = load i64*, i64** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i64* %68, i64** %69, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i64* %70, i64** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %16, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %170, %59
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %173

79:                                               ; preds = %76
  %80 = load i64*, i64** %13, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %10, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %84, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %97, %103
  %105 = sub nsw i64 %104, 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %105, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %116, %122
  %124 = add nsw i64 %123, 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 8
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %124, i64* %129, align 8
  br label %169

130:                                              ; preds = %79
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %136, %142
  %144 = sub nsw i64 %143, 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 %144, i64* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %155, %161
  %163 = add nsw i64 %162, 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 8
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  store i64 %163, i64* %168, align 8
  br label %169

169:                                              ; preds = %130, %91
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %76

173:                                              ; preds = %76
  %174 = call i32 @SV_ClipMoveToEntities(%struct.TYPE_8__* %17)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %177 = bitcast %struct.TYPE_7__* %175 to i8*
  %178 = bitcast %struct.TYPE_7__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  br label %179

179:                                              ; preds = %173, %54
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CM_BoxTrace(%struct.TYPE_7__*, i64*, i64*, i64*, i64*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @SV_ClipMoveToEntities(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
