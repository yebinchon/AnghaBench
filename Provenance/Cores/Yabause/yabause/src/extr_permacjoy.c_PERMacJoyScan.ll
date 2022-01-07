; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_permacjoy.c_PERMacJoyScan.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_permacjoy.c_PERMacJoyScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@joycount = common dso_local global i32 0, align 4
@joys = common dso_local global %struct.TYPE_11__** null, align 8
@AXIS_POSITIVE_VALUE = common dso_local global i32 0, align 4
@AXIS_NEGATIVE_VALUE = common dso_local global i32 0, align 4
@HAT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PERMacJoyScan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %203, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @joycount, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %206

14:                                               ; preds = %10
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @joys, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %15, i64 %17
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %203

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %112, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %115

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MIDDLE(i32 %38, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @joy_read_axis(%struct.TYPE_11__* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %30
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MIDDLE(i32 %62, i32 %70)
  %72 = icmp sgt i32 %61, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = shl i32 %74, 24
  %76 = load i32, i32* @AXIS_POSITIVE_VALUE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %2, align 4
  br label %207

80:                                               ; preds = %60, %30
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %80
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MIDDLE(i32 %92, i32 %100)
  %102 = icmp slt i32 %91, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %90
  %104 = load i32, i32* %4, align 4
  %105 = shl i32 %104, 24
  %106 = load i32, i32* @AXIS_NEGATIVE_VALUE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %2, align 4
  br label %207

110:                                              ; preds = %90, %80
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %24

115:                                              ; preds = %24
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %142, %115
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %117, %120
  br i1 %121, label %122, label %145

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @joy_read_button(%struct.TYPE_11__* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %126, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load i32, i32* %4, align 4
  %138 = shl i32 %137, 24
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %2, align 4
  br label %207

141:                                              ; preds = %122
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %116

145:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %199, %145
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %202

152:                                              ; preds = %146
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %158
  %160 = call i32 @joy_read_element(%struct.TYPE_11__* %153, %struct.TYPE_12__* %159)
  store i32 %160, i32* %7, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %195, %152
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %170, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %169
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load i32, i32* %4, align 4
  %186 = shl i32 %185, 24
  %187 = load i32, i32* @HAT_VALUE, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %6, align 4
  %190 = shl i32 %189, 8
  %191 = or i32 %188, %190
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %191, %192
  store i32 %193, i32* %2, align 4
  br label %207

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %169

198:                                              ; preds = %169
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %146

202:                                              ; preds = %146
  br label %203

203:                                              ; preds = %202, %22
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %10

206:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %184, %136, %103, %73
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @MIDDLE(i32, i32) #1

declare dso_local i32 @joy_read_axis(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @joy_read_button(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @joy_read_element(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
