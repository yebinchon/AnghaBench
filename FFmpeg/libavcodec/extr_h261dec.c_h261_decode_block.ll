; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261dec.c_h261_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261dec.c_h261_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ff_h261_rl_tcoeff = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"illegal dc %d at %d %d\0A\00", align 1
@re = common dso_local global i32 0, align 4
@TCOEFF_VLC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"illegal ac vlc code at %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"run overflow at %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i32)* @h261_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h261_decode_block(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_8__* @ff_h261_rl_tcoeff, %struct.TYPE_8__** %15, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %16, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = call i32 @get_bits(i32* %30, i32 8)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 127
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i32, i8*, i32, i32, ...) @av_log(i32 %38, i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  store i32 -1, i32* %5, align 4
  br label %219

48:                                               ; preds = %28
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 128, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  store i32 1, i32* %12, align 4
  br label %80

56:                                               ; preds = %4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = call i32 @show_bits(i32* %61, i32 2)
  store i32 %62, i32* %17, align 4
  store i32 0, i32* %12, align 4
  %63 = load i32, i32* %17, align 4
  %64 = and i32 %63, 2
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = call i32 @skip_bits(i32* %68, i32 2)
  %70 = load i32, i32* %17, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 -1, i32 1
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %66, %59
  br label %79

78:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %219

92:                                               ; preds = %80
  %93 = load i32, i32* @re, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = call i32 @OPEN_READER(i32 %93, i32* %95)
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %196, %92
  %100 = load i32, i32* @re, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = call i32 @UPDATE_CACHE(i32 %100, i32* %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @re, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TCOEFF_VLC_BITS, align 4
  %115 = call i32 @GET_RL_VLC(i32 %104, i32 %105, i32 %106, i32* %108, i32 %113, i32 %114, i32 2, i32 0)
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, 66
  br i1 %117, label %118, label %155

118:                                              ; preds = %99
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i32, i32* @re, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = call i32 @CLOSE_READER(i32 %122, i32* %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i32, i8*, i32, i32, ...) @av_log(i32 %128, i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %135)
  store i32 -1, i32* %5, align 4
  br label %219

137:                                              ; preds = %118
  %138 = load i32, i32* @re, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = call i32 @SHOW_UBITS(i32 %138, i32* %140, i32 6)
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* @re, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = call i32 @SKIP_CACHE(i32 %143, i32* %145, i32 6)
  %147 = load i32, i32* @re, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = call i32 @SHOW_SBITS(i32 %147, i32* %149, i32 8)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* @re, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = call i32 @SKIP_COUNTER(i32 %151, i32* %153, i32 14)
  br label %174

155:                                              ; preds = %99
  %156 = load i32, i32* %11, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %207

159:                                              ; preds = %155
  %160 = load i32, i32* @re, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = call i32 @SHOW_UBITS(i32 %160, i32* %162, i32 1)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %165, %159
  %169 = load i32, i32* @re, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = call i32 @SKIP_COUNTER(i32 %169, i32* %171, i32 1)
  br label %173

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %137
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sge i32 %178, 64
  br i1 %179, label %180, label %196

180:                                              ; preds = %174
  %181 = load i32, i32* @re, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = call i32 @CLOSE_READER(i32 %181, i32* %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i32, i8*, i32, i32, ...) @av_log(i32 %187, i32 %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %194)
  store i32 -1, i32* %5, align 4
  br label %219

196:                                              ; preds = %174
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %99

207:                                              ; preds = %158
  %208 = load i32, i32* @re, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = call i32 @CLOSE_READER(i32 %208, i32* %210)
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %212, i32* %218, align 4
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %207, %180, %121, %83, %35
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_RL_VLC(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_CACHE(i32, i32*, i32) #1

declare dso_local i32 @SHOW_SBITS(i32, i32*, i32) #1

declare dso_local i32 @SKIP_COUNTER(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
