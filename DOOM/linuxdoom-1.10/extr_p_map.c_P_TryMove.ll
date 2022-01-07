; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_TryMove.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_TryMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i8*, i8*, i64, i64 }

@floatok = common dso_local global i32 0, align 4
@MF_NOCLIP = common dso_local global i32 0, align 4
@tmceilingz = common dso_local global i64 0, align 8
@tmfloorz = common dso_local global i64 0, align 8
@MF_TELEPORT = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@MF_DROPOFF = common dso_local global i32 0, align 4
@MF_FLOAT = common dso_local global i32 0, align 4
@tmdropoffz = common dso_local global i64 0, align 8
@numspechit = common dso_local global i64 0, align 8
@spechit = common dso_local global %struct.TYPE_12__** null, align 8
@lines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_TryMove(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* @floatok, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @P_CheckPosition(%struct.TYPE_11__* %13, i8* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %164

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MF_NOCLIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %90, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* @tmceilingz, align 8
  %28 = load i64, i64* @tmfloorz, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %164

35:                                               ; preds = %26
  store i32 1, i32* @floatok, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MF_TELEPORT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* @tmceilingz, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %164

53:                                               ; preds = %42, %35
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MF_TELEPORT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load i64, i64* @tmfloorz, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i32, i32* @FRACUNIT, align 4
  %67 = mul nsw i32 24, %66
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %164

71:                                               ; preds = %60, %53
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MF_DROPOFF, align 4
  %76 = load i32, i32* @MF_FLOAT, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %71
  %81 = load i64, i64* @tmfloorz, align 8
  %82 = load i64, i64* @tmdropoffz, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i32, i32* @FRACUNIT, align 4
  %85 = mul nsw i32 24, %84
  %86 = sext i32 %85 to i64
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %164

89:                                               ; preds = %80, %71
  br label %90

90:                                               ; preds = %89, %19
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = call i32 @P_UnsetThingPosition(%struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %8, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %9, align 8
  %99 = load i64, i64* @tmfloorz, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 6
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* @tmceilingz, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = call i32 @P_SetThingPosition(%struct.TYPE_11__* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MF_TELEPORT, align 4
  %117 = load i32, i32* @MF_NOCLIP, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %163, label %121

121:                                              ; preds = %90
  br label %122

122:                                              ; preds = %161, %121
  %123 = load i64, i64* @numspechit, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* @numspechit, align 8
  %125 = icmp ne i64 %123, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %122
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spechit, align 8
  %128 = load i64, i64* @numspechit, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %127, i64 %128
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %12, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %138 = call i32 @P_PointOnLineSide(i8* %133, i8* %136, %struct.TYPE_12__* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %142 = call i32 @P_PointOnLineSide(i8* %139, i8* %140, %struct.TYPE_12__* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %126
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %153 = load i32, i32* @lines, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %155
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = call i32 @P_CrossSpecialLine(%struct.TYPE_12__* %156, i32 %157, %struct.TYPE_11__* %158)
  br label %160

160:                                              ; preds = %151, %146
  br label %161

161:                                              ; preds = %160, %126
  br label %122

162:                                              ; preds = %122
  br label %163

163:                                              ; preds = %162, %90
  store i32 1, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %88, %70, %52, %34, %18
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @P_CheckPosition(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @P_UnsetThingPosition(%struct.TYPE_11__*) #1

declare dso_local i32 @P_SetThingPosition(%struct.TYPE_11__*) #1

declare dso_local i32 @P_PointOnLineSide(i8*, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @P_CrossSpecialLine(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
