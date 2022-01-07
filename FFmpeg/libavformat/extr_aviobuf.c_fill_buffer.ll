; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i64, i32, i32 (i32, i32*, i32)* }

@IO_BUFFER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to decrease buffer size\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_buffer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @IO_BUFFER_SIZE, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %14, %11 ], [ %16, %15 ]
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 9
  %24 = load i32*, i32** %23, align 8
  %25 = ptrtoint i32* %21 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  br label %45

41:                                               ; preds = %17
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 9
  %44 = load i32*, i32** %43, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32* [ %40, %37 ], [ %44, %41 ]
  store i32* %46, i32** %4, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  %55 = ptrtoint i32* %51 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = sub nsw i64 %50, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %45
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = icmp uge i32* %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %65, %45
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %230

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 13
  %85 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %84, align 8
  %86 = icmp ne i32 (i32, i32*, i32)* %85, null
  br i1 %86, label %87, label %131

87:                                               ; preds = %82
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 9
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %88, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %87
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 10
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ugt i32* %96, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %93
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 13
  %104 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 10
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 10
  %116 = load i32*, i32** %115, align 8
  %117 = ptrtoint i32* %113 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 %104(i32 %107, i32* %110, i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 12
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %101, %93
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 9
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 10
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %125, %87, %82
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 11
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %131
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %189

141:                                              ; preds = %136
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %144, %147
  br i1 %148, label %149, label %189

149:                                              ; preds = %141
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %150, %153
  br i1 %154, label %155, label %189

155:                                              ; preds = %149
  %156 = load i32*, i32** %4, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 9
  %159 = load i32*, i32** %158, align 8
  %160 = icmp eq i32* %156, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %155
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 8
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = icmp ne i32* %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %161
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ffio_set_buf_size(%struct.TYPE_6__* %168, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %177 = load i32, i32* @AV_LOG_WARNING, align 4
  %178 = call i32 @av_log(%struct.TYPE_6__* %176, i32 %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %179

179:                                              ; preds = %175, %167
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 9
  %182 = load i32*, i32** %181, align 8
  store i32* %182, i32** %4, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 10
  store i32* %182, i32** %184, align 8
  br label %185

185:                                              ; preds = %179, %161, %155
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %149, %141, %136, %131
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %191 = load i32*, i32** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @read_packet_wrapper(%struct.TYPE_6__* %190, i32* %191, i32 %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @AVERROR_EOF, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  store i32 1, i32* %199, align 8
  br label %230

200:                                              ; preds = %189
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  store i32 1, i32* %205, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  br label %229

209:                                              ; preds = %200
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32*, i32** %4, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 8
  store i32* %215, i32** %217, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 7
  store i32* %221, i32** %223, align 8
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %209, %203
  br label %230

230:                                              ; preds = %81, %229, %197
  ret void
}

declare dso_local i32 @ffio_set_buf_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @read_packet_wrapper(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
