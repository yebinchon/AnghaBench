; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_mergeSubtitleOverlaps.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_mergeSubtitleOverlaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i64, i64 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @mergeSubtitleOverlaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeSubtitleOverlaps(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_18__* @hb_buffer_list_head(i32* %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = icmp ne %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %223

28:                                               ; preds = %19, %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = icmp eq %struct.TYPE_18__* %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %31, %28
  store i32 -1, i32* %2, align 4
  br label %223

46:                                               ; preds = %38
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %6, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = icmp ne %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %223

63:                                               ; preds = %52, %46
  br label %64

64:                                               ; preds = %103, %63
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %77, %67, %64
  %87 = phi i1 [ false, %67 ], [ false, %64 ], [ %85, %77 ]
  br i1 %87, label %88, label %107

88:                                               ; preds = %86
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %88
  store i32 -1, i32* %2, align 4
  br label %223

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  store %struct.TYPE_18__* %106, %struct.TYPE_18__** %6, align 8
  br label %64

107:                                              ; preds = %86
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = icmp eq %struct.TYPE_18__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 -1, i32* %2, align 4
  br label %223

111:                                              ; preds = %107
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i64, i64* @INT64_MAX, align 8
  store i64 %120, i64* %10, align 8
  br label %126

121:                                              ; preds = %111
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %10, align 8
  br label %126

126:                                              ; preds = %121, %119
  %127 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %7)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = call %struct.TYPE_18__* @hb_buffer_list_head(i32* %129)
  store %struct.TYPE_18__* %130, %struct.TYPE_18__** %5, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %8, align 8
  store i64 %134, i64* %9, align 8
  br label %135

135:                                              ; preds = %216, %126
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %217

139:                                              ; preds = %135
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call %struct.TYPE_18__* @findOverlap(%struct.TYPE_17__* %140, i64 %141, i64* %9)
  store %struct.TYPE_18__* %142, %struct.TYPE_18__** %11, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %144 = icmp eq %struct.TYPE_18__* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %217

146:                                              ; preds = %139
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %148

148:                                              ; preds = %151, %146
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = icmp ne %struct.TYPE_18__* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = call %struct.TYPE_18__* @merge_ssa(%struct.TYPE_18__* %152, %struct.TYPE_18__* %153)
  store %struct.TYPE_18__* %154, %struct.TYPE_18__** %12, align 8
  %155 = call i32 @hb_buffer_close(%struct.TYPE_18__** %4)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %156, %struct.TYPE_18__** %4, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %5, align 8
  br label %148

160:                                              ; preds = %148
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  store i64 %161, i64* %164, align 8
  %165 = call i32 @hb_buffer_close(%struct.TYPE_18__** %11)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = call i32 @hb_buffer_list_append(i32* %7, %struct.TYPE_18__* %166)
  %168 = load i64, i64* %9, align 8
  store i64 %168, i64* %8, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = call %struct.TYPE_18__* @hb_buffer_list_head(i32* %170)
  store %struct.TYPE_18__* %171, %struct.TYPE_18__** %5, align 8
  br label %172

172:                                              ; preds = %214, %160
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %174 = icmp ne %struct.TYPE_18__* %173, null
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %9, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %175
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  br label %191

191:                                              ; preds = %182, %175, %172
  %192 = phi i1 [ false, %175 ], [ false, %172 ], [ %190, %182 ]
  br i1 %192, label %193, label %216

193:                                              ; preds = %191
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %13, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %9, align 8
  %202 = icmp sle i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %193
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %207 = call i32 @hb_buffer_list_rem(i32* %205, %struct.TYPE_18__* %206)
  %208 = call i32 @hb_buffer_close(%struct.TYPE_18__** %5)
  br label %214

209:                                              ; preds = %193
  %210 = load i64, i64* %9, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  store i64 %210, i64* %213, align 8
  br label %214

214:                                              ; preds = %209, %203
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %215, %struct.TYPE_18__** %5, align 8
  br label %172

216:                                              ; preds = %191
  br label %135

217:                                              ; preds = %145, %135
  %218 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %7)
  store %struct.TYPE_18__* %218, %struct.TYPE_18__** %4, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = call i32 @hb_buffer_list_prepend(i32* %220, %struct.TYPE_18__* %221)
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %217, %110, %102, %62, %45, %27
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.TYPE_18__* @hb_buffer_list_head(i32*) #1

declare dso_local %struct.TYPE_18__* @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_18__* @findOverlap(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local %struct.TYPE_18__* @merge_ssa(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_18__**) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @hb_buffer_list_rem(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @hb_buffer_list_prepend(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
