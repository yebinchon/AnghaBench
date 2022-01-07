; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_applyDeltas.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_applyDeltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }

@SYNC_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@SYNC_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@SYNC_TYPE_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @applyDeltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applyDeltas(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %234, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %237

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @hb_list_item(i32 %26, i32 0)
  %28 = bitcast i8* %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %233

31:                                               ; preds = %17
  store i32 -1, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %112, %31
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @hb_list_count(i32 %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %115

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @hb_list_item(i32 %45, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %10, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SYNC_TYPE_SUBTITLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %7, align 4
  br label %115

65:                                               ; preds = %54
  br label %107

66:                                               ; preds = %42
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %66
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* %9, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %9, align 8
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %84, %75
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SYNC_TYPE_AUDIO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %115

105:                                              ; preds = %98, %92
  br label %106

106:                                              ; preds = %105, %66
  br label %107

107:                                              ; preds = %106, %65
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %35

115:                                              ; preds = %104, %63, %35
  %116 = load i32, i32* %7, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %232

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %158, %118
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @hb_list_count(i32 %124)
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %161

127:                                              ; preds = %120
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i8* @hb_list_item(i32 %130, i32 %131)
  %133 = bitcast i8* %132 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %10, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, %136
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %127
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, %151
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %148, %127
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %120

161:                                              ; preds = %120
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SYNC_TYPE_VIDEO, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %215

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %215

170:                                              ; preds = %167
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 1
  %176 = call i8* @hb_list_item(i32 %173, i32 %175)
  %177 = bitcast i8* %176 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %177, %struct.TYPE_13__** %10, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %181, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %170
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %193, %189
  store i64 %194, i64* %192, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %201, %197
  store i64 %202, i64* %200, align 8
  br label %214

203:                                              ; preds = %170
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  store i64 %210, i64* %213, align 8
  br label %214

214:                                              ; preds = %203, %186
  br label %215

215:                                              ; preds = %214, %167, %161
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %218
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %229 = call i32 @hb_list_rem(i32 %227, %struct.TYPE_11__* %228)
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %231 = call i32 @free(%struct.TYPE_11__* %230)
  br label %232

232:                                              ; preds = %215, %115
  br label %233

233:                                              ; preds = %232, %17
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %3, align 4
  br label %11

237:                                              ; preds = %11
  ret void
}

declare dso_local i8* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
