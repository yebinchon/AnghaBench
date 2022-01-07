; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c_ogg_stream_iovecin.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c_ogg_stream_iovecin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32*, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i32 }

@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ogg_stream_iovecin(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i64 @ogg_stream_check(%struct.TYPE_8__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %240

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %240

23:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %59, %23
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LONG_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %240

38:                                               ; preds = %28
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @LONG_MAX, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %40, %46
  %48 = icmp sgt i64 %39, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %240

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %24

62:                                               ; preds = %24
  %63 = load i64, i64* %12, align 8
  %64 = sdiv i64 %63, 255
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %13, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %62
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %70
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @memmove(i64 %85, i64 %92, i64 %95)
  br label %97

97:                                               ; preds = %82, %70
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 8
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %62
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @_os_body_expand(%struct.TYPE_8__* %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @_os_lacing_expand(%struct.TYPE_8__* %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %100
  store i32 -1, i32* %6, align 4
  br label %240

111:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %149, %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %112
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @memcpy(i64 %123, i32 %129, i64 %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %116
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %112

152:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %183, %152
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %13, align 8
  %157 = sub nsw i64 %156, 1
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %153
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  store i32 255, i32* %169, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %175, i64 %181
  store i32 %172, i32* %182, align 4
  br label %183

183:                                              ; preds = %159
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %153

186:                                              ; preds = %153
  %187 = load i64, i64* %12, align 8
  %188 = srem i64 %187, 255
  %189 = trunc i64 %188 to i32
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %192, i64 %198
  store i32 %189, i32* %199, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  store i32 %200, i32* %210, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 5
  store i32 %200, i32* %212, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, 256
  store i32 %222, i32* %220, align 4
  %223 = load i64, i64* %13, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %223
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = load i64, i64* %10, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %186
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  store i32 1, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %186
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %239, %110, %49, %37, %22, %18
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i64 @ogg_stream_check(%struct.TYPE_8__*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i64 @_os_body_expand(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @_os_lacing_expand(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
