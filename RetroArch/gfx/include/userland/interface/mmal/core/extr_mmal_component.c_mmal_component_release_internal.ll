; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_component.c_mmal_component_release_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_component.c_mmal_component_release_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s %d preparing for destruction\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s %d delaying destruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @mmal_component_release_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_component_release_internal(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = bitcast %struct.TYPE_8__* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @vcos_verify(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %241

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = call i32 @vcos_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call i32 @vcos_mutex_unlock(i32* %34)
  %36 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %36, i32* %2, align 4
  br label %241

37:                                               ; preds = %21
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = call i32 @vcos_mutex_unlock(i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %77, %37
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %59, i64 %61
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %56
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %70, i64 %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = call i32 @mmal_port_disable(%struct.TYPE_11__* %74)
  br label %76

76:                                               ; preds = %67, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %50

80:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %108, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %90, i64 %92
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %87
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %101, i64 %103
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = call i32 @mmal_port_disable(%struct.TYPE_11__* %105)
  br label %107

107:                                              ; preds = %98, %87
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %81

111:                                              ; preds = %81
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %139, %111
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %112
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %121, i64 %123
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %118
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %132, i64 %134
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = call i32 @mmal_port_disable(%struct.TYPE_11__* %136)
  br label %138

138:                                              ; preds = %129, %118
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %112

142:                                              ; preds = %112
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 9
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 9
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = call i32 @mmal_port_disable(%struct.TYPE_11__* %152)
  br label %154

154:                                              ; preds = %149, %142
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %170, %154
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 8
  %164 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %164, i64 %166
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = call i32 @mmal_port_disconnect(%struct.TYPE_11__* %168)
  br label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %5, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %155

173:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %189, %173
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ult i32 %175, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %174
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 7
  %183 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %183, i64 %185
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = call i32 @mmal_port_disconnect(%struct.TYPE_11__* %187)
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %5, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %174

192:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %208, %192
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %202, i64 %204
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = call i32 @mmal_port_disconnect(%struct.TYPE_11__* %206)
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %5, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %193

211:                                              ; preds = %193
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = call i32 @vcos_mutex_lock(i32* %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %211
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  store i32 0, i32* %223, align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = call i32 @vcos_mutex_unlock(i32* %225)
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %229, i32 %232)
  %234 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %234, i32* %2, align 4
  br label %241

235:                                              ; preds = %211
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = call i32 @vcos_mutex_unlock(i32* %237)
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = call i32 @mmal_component_destroy_internal(%struct.TYPE_9__* %239)
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %235, %221, %32, %19
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i32 @LOG_TRACE(i8*, i32, i32) #1

declare dso_local i32 @mmal_port_disable(%struct.TYPE_11__*) #1

declare dso_local i32 @mmal_port_disconnect(%struct.TYPE_11__*) #1

declare dso_local i32 @mmal_component_destroy_internal(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
