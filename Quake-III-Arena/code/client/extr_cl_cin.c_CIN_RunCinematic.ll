; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CIN_RunCinematic.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CIN_RunCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_7__* null, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@currentHandle = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@FMV_IDLE = common dso_local global i64 0, align 8
@com_timescale = common dso_local global %struct.TYPE_5__* null, align 8
@FMV_PLAY = common dso_local global i64 0, align 8
@FMV_LOOPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CIN_RunCinematic(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FMV_EOF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12, %8, %1
  %22 = load i64, i64* @FMV_EOF, align 8
  store i64 %22, i64* %2, align 8
  br label %246

23:                                               ; preds = %12
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cin, i32 0, i32 0), align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* @currentHandle, align 8
  %30 = load i64, i64* @currentHandle, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cin, i32 0, i32 0), align 4
  %32 = load i64, i64* @FMV_EOF, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %34 = load i64, i64* @currentHandle, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  %37 = call i32 (...) @RoQReset()
  br label %38

38:                                               ; preds = %27, %23
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, -1
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %2, align 8
  br label %246

53:                                               ; preds = %38
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* @currentHandle, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %57 = load i64, i64* @currentHandle, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %64 = load i64, i64* @CA_CINEMATIC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %68 = load i64, i64* @currentHandle, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %2, align 8
  br label %246

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %75 = load i64, i64* @currentHandle, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FMV_IDLE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %83 = load i64, i64* @currentHandle, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %2, align 8
  br label %246

87:                                               ; preds = %73
  %88 = call i32 (...) @CL_ScaledMilliseconds()
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_timescale, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %94 = load i64, i64* @currentHandle, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %87
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %102 = load i64, i64* @currentHandle, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %100, %105
  %107 = call i32 @abs(i32 %106) #3
  %108 = icmp sgt i32 %107, 100
  br i1 %108, label %109, label %123

109:                                              ; preds = %99
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %112 = load i64, i64* @currentHandle, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %110, %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %118 = load i64, i64* @currentHandle, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, %116
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %109, %99, %87
  %124 = call i32 (...) @CL_ScaledMilliseconds()
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_timescale, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %130 = load i64, i64* @currentHandle, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %128, %133
  %135 = mul nsw i32 %134, 3
  %136 = sdiv i32 %135, 100
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %138 = load i64, i64* @currentHandle, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  store i32 %136, i32* %140, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %142 = load i64, i64* @currentHandle, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %200, %123
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %148 = load i64, i64* @currentHandle, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %153 = load i64, i64* @currentHandle, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %151, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %146
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %160 = load i64, i64* @currentHandle, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @FMV_PLAY, align 8
  %165 = icmp eq i64 %163, %164
  br label %166

166:                                              ; preds = %158, %146
  %167 = phi i1 [ false, %146 ], [ %165, %158 ]
  br i1 %167, label %168, label %201

168:                                              ; preds = %166
  %169 = call i32 (...) @RoQInterrupt()
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %172 = load i64, i64* @currentHandle, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %170, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %168
  %178 = call i32 (...) @CL_ScaledMilliseconds()
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_timescale, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %178, %181
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %184 = load i64, i64* @currentHandle, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %182, %187
  %189 = mul nsw i32 %188, 3
  %190 = sdiv i32 %189, 100
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %192 = load i64, i64* @currentHandle, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  store i32 %190, i32* %194, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %196 = load i64, i64* @currentHandle, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %177, %168
  br label %146

201:                                              ; preds = %166
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %204 = load i64, i64* @currentHandle, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  store i32 %202, i32* %206, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %208 = load i64, i64* @currentHandle, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @FMV_LOOPED, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %201
  %215 = load i64, i64* @FMV_PLAY, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %217 = load i64, i64* @currentHandle, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i64 %215, i64* %219, align 8
  br label %220

220:                                              ; preds = %214, %201
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %222 = load i64, i64* @currentHandle, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @FMV_EOF, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %220
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %230 = load i64, i64* @currentHandle, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %228
  %236 = call i32 (...) @RoQReset()
  br label %239

237:                                              ; preds = %228
  %238 = call i32 (...) @RoQShutdown()
  br label %239

239:                                              ; preds = %237, %235
  br label %240

240:                                              ; preds = %239, %220
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cinTable, align 8
  %242 = load i64, i64* @currentHandle, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %2, align 8
  br label %246

246:                                              ; preds = %240, %81, %66, %46, %21
  %247 = load i64, i64* %2, align 8
  ret i64 %247
}

declare dso_local i32 @RoQReset(...) #1

declare dso_local i32 @CL_ScaledMilliseconds(...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @RoQInterrupt(...) #1

declare dso_local i32 @RoQShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
