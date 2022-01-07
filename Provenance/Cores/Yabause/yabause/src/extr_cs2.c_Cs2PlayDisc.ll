; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2PlayDisc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2PlayDisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32)* }

@Cs2Area = common dso_local global %struct.TYPE_6__* null, align 8
@CDB_STAT_PLAY = common dso_local global i32 0, align 4
@CDB_PLAYTYPE_SECTOR = common dso_local global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2PlayDisc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 255
  %9 = shl i32 %8, 16
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %9, %13
  store i32 %14, i32* %1, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %20, %24
  store i32 %25, i32* %2, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 16777215
  br i1 %32, label %36, label %33

33:                                               ; preds = %0
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %0
  br label %99

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = and i32 %38, 8388608
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32, i32* %1, align 4
  %43 = and i32 %42, 1048575
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @Cs2FADToTrack(i32 %48)
  %50 = call i32 @Cs2SetupDefaultPlayStats(i8* %49, i32 0)
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %41
  br label %98

61:                                               ; preds = %37
  %62 = load i32, i32* %1, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 256, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %1, align 4
  %71 = ashr i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @Cs2SetupDefaultPlayStats(i8* %73, i32 1)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %1, align 4
  %81 = ashr i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 9
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  br label %97

91:                                               ; preds = %65
  %92 = load i32, i32* %1, align 4
  %93 = ashr i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @Cs2SetupDefaultPlayStats(i8* %95, i32 0)
  br label %97

97:                                               ; preds = %91, %69
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98, %36
  %100 = load i32, i32* %3, align 4
  %101 = and i32 %100, 127
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 127
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %2, align 4
  %110 = icmp eq i32 %109, 16777215
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %155

112:                                              ; preds = %108
  %113 = load i32, i32* %2, align 4
  %114 = and i32 %113, 8388608
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %2, align 4
  %121 = and i32 %120, 1048575
  %122 = add nsw i32 %119, %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %154

125:                                              ; preds = %112
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 256
  store i32 %130, i32* %2, align 4
  %131 = load i32, i32* %2, align 4
  %132 = and i32 %131, 255
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i32, i32* %2, align 4
  %136 = or i32 %135, 99
  %137 = call i8* @Cs2TrackToFAD(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %147

141:                                              ; preds = %128
  %142 = load i32, i32* %2, align 4
  %143 = call i8* @Cs2TrackToFAD(i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %134
  br label %153

148:                                              ; preds = %125
  %149 = call i8* @Cs2TrackToFAD(i32 65535)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %148, %147
  br label %154

154:                                              ; preds = %153, %116
  br label %155

155:                                              ; preds = %154, %111
  %156 = call i32 @Cs2SetTiming(i32 1)
  %157 = load i32, i32* @CDB_STAT_PLAY, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @CDB_PLAYTYPE_SECTOR, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32 (i32)*, i32 (i32)** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 %167(i32 %170)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @doCDReport(i32 %174)
  %176 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 8
  ret void
}

declare dso_local i32 @Cs2SetupDefaultPlayStats(i8*, i32) #1

declare dso_local i8* @Cs2FADToTrack(i32) #1

declare dso_local i8* @Cs2TrackToFAD(i32) #1

declare dso_local i32 @Cs2SetTiming(i32) #1

declare dso_local i32 @doCDReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
