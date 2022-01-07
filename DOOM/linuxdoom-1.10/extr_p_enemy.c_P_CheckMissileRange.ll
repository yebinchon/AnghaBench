; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_CheckMissileRange.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_P_CheckMissileRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_8__*, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@MF_JUSTHIT = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@MT_VILE = common dso_local global i64 0, align 8
@MT_UNDEAD = common dso_local global i64 0, align 8
@MT_CYBORG = common dso_local global i64 0, align 8
@MT_SPIDER = common dso_local global i64 0, align 8
@MT_SKULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_CheckMissileRange(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = call i32 @P_CheckSight(%struct.TYPE_7__* %5, %struct.TYPE_8__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MF_JUSTHIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i32, i32* @MF_JUSTHIT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  store i32 1, i32* %2, align 4
  br label %133

26:                                               ; preds = %12
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %133

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %44, %49
  %51 = call i32 @P_AproxDistance(i64 %41, i64 %50)
  %52 = load i32, i32* @FRACUNIT, align 4
  %53 = mul nsw i32 64, %52
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %32
  %62 = load i32, i32* @FRACUNIT, align 4
  %63 = mul nsw i32 128, %62
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %32
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 16
  store i32 %68, i32* %4, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MT_VILE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %75, 896
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %133

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MT_UNDEAD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 196
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %133

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %79
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MT_CYBORG, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MT_SPIDER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MT_SKULL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98, %92
  %111 = load i32, i32* %4, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %4, align 4
  %115 = icmp sgt i32 %114, 200
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 200, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MT_CYBORG, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* %4, align 4
  %125 = icmp sgt i32 %124, 160
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 160, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %123, %117
  %128 = call i32 (...) @P_Random()
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %133

132:                                              ; preds = %127
  store i32 1, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %131, %88, %77, %31, %19, %11
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @P_CheckSight(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @P_AproxDistance(i64, i64) #1

declare dso_local i32 @P_Random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
