; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12.c_ff_mpeg1_find_frame_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12.c_ff_mpeg1_find_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@EXT_START_CODE = common dso_local global i32 0, align 4
@SLICE_MIN_START_CODE = common dso_local global i32 0, align 4
@SLICE_MAX_START_CODE = common dso_local global i32 0, align 4
@SEQ_END_CODE = common dso_local global i32 0, align 4
@SEQ_START_CODE = common dso_local global i32 0, align 4
@PICTURE_START_CODE = common dso_local global i32 0, align 4
@END_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg1_find_frame_end(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %214

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %206, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %209

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @av_assert1(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @EXT_START_CODE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 240
  %53 = icmp ne i32 %52, 128
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  br label %85

59:                                               ; preds = %46, %42
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @EXT_START_CODE, align 4
  %62 = add nsw i32 %61, 2
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %83

75:                                               ; preds = %64
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = and i32 %79, 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %72
  br label %84

84:                                               ; preds = %83, %59
  br label %85

85:                                               ; preds = %84, %54
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %205

88:                                               ; preds = %33
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32* @avpriv_find_start_code(i32* %92, i32* %96, i32* %11)
  %98 = load i32*, i32** %7, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = sub nsw i64 %102, 1
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %88
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @SLICE_MIN_START_CODE, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @SLICE_MAX_START_CODE, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 4, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %113, %109, %88
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @SEQ_END_CODE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 -1, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %214

133:                                              ; preds = %122
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @SEQ_START_CODE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %138, %133
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @EXT_START_CODE, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %154, %150, %145
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %164, label %184

164:                                              ; preds = %159
  %165 = load i32, i32* %11, align 4
  %166 = and i32 %165, -256
  %167 = icmp eq i32 %166, 256
  br i1 %167, label %168, label %184

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @SLICE_MIN_START_CODE, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @SLICE_MAX_START_CODE, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172, %168
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 -1, i32* %180, align 4
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %181, 3
  store i32 %182, i32* %5, align 4
  br label %214

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %164, %159
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %184
  %190 = load i32*, i32** %9, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @PICTURE_START_CODE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sub nsw i32 %198, 3
  %200 = load i32, i32* %10, align 4
  %201 = icmp sgt i32 %200, 3
  %202 = zext i1 %201 to i32
  %203 = call i32 @ff_fetch_timestamp(i32* %197, i32 %199, i32 1, i32 %202)
  br label %204

204:                                              ; preds = %196, %192, %189, %184
  br label %205

205:                                              ; preds = %204, %85
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %19

209:                                              ; preds = %19
  %210 = load i32, i32* %11, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %209, %176, %126, %17
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i32*) #1

declare dso_local i32 @ff_fetch_timestamp(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
